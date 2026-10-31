# LF sweep profile (logarithmic)
frequencies = np.logspace(np.log10(20), np.log10(500), 20)  # 20 steps
dwell_standard = 30  # seconds
dwell_resonant = 90  # seconds (standard + 60s bonus)

for f in frequencies:
    set_drive_frequency(f)
    measure_fbg_response(1s)
    if peak_detected(f):
        dwell = dwell_resonant
    else:
        dwell = dwell_standard
    wait(dwell)