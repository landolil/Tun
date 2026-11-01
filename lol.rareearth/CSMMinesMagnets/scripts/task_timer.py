#!/usr/bin/env python3
"""
Task Timer — 30 second subtask guard
"""

import time
import sys
import signal
from pathlib import Path


class TaskTimer:
    def __init__(self, limit=30, project_root=None):
        self.limit = limit
        # Default to current working directory (set by startup.sh)
        self.project_root = Path(project_root) if project_root else Path.cwd()
        self.start_time = None
        self.task_name = None

    def start(self, task_name):
        self.task_name = task_name
        self.start_time = time.time()
        print(f"[TIMER] START: {task_name} (limit: {self.limit}s)")

    def check(self):
        if self.start_time is None:
            return True
        elapsed = time.time() - self.start_time
        if elapsed > self.limit:
            print(f"[TIMER] EXCEEDED: {self.task_name} took {elapsed:.1f}s > {self.limit}s")
            return False
        return True

    def stop(self):
        if self.start_time:
            elapsed = time.time() - self.start_time
            print(f"[TIMER] STOP: {self.task_name} took {elapsed:.1f}s")
            self.start_time = None
            self.task_name = None
            return elapsed
        return 0


def main():
    import argparse
    parser = argparse.ArgumentParser(description="Task Timer for CSMMinesMagnets")
    parser.add_argument("--limit", type=int, default=30, help="Time limit in seconds")
    parser.add_argument("--task", type=str, required=True, help="Task name")
    parser.add_argument("--project-root", type=str, default=None, help="Project root")
    args = parser.parse_args()

    timer = TaskTimer(limit=args.limit, project_root=args.project_root)
    timer.start(args.task)
    print(f"Running task: {args.task}")
    print(f"Time limit: {args.limit} seconds")
    print("Press Ctrl+C when task completes...")

    try:
        while timer.check():
            time.sleep(1)
    except KeyboardInterrupt:
        timer.stop()
        print("Task completed manually")


if __name__ == "__main__":
    main()