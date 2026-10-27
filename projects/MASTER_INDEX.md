# Tardigradia Franchise - Master Project Index

## Overview
This repository contains **4 interconnected projects** unified by the Tardigradia "land of the 'lil" franchise vision. All projects share session management infrastructure and the "Eye of Africa" circular design philosophy.

```
┌─────────────────────────────────────────────────────────────────┐
│                    TARDIGRADIA FRANCHISE                        │
│                   "land of the 'lil"                             │
│                         │                                       │
│        ┌────────────────┼────────────────┐                      │
│        ▼                ▼                ▼                      │
│ ┌─────────────┐  ┌──────────────┐  ┌────────────┐  ┌────────┐  │
│ │ Tardigradia │  │ Media &      │  │ Mechaniza- │  │ Tard   │  │
│ │ Franchise   │  │ Entertainment│  │ tion &     │  │ Radio  │  │
│ │ (Core IP)   │  │ City         │  │ Cobot Work │  │        │  │
│ └─────────────┘  └──────────────┘  └────────────┘  └────────┘  │
│        │                │                │                │      │
│        └────────────────┴────────────────┴────────────────┘      │
│                         │                                       │
│              SHARED INFRASTRUCTURE                               │
│         (Session mgmt, CI/CD, Design System)                    │
└─────────────────────────────────────────────────────────────────┘
```

## Project Details

### 1. Tardigradia Franchise (Core IP) ✅ ACTIVE
**Path**: `/workspace/app/projects/tardigradia-franchise/`
**Source**: Migrated from `/workspace/app/lilipad.land/`

**Sub-Projects**:
- **Animation**: Maya Tana & Buju series, Midsummer Night's Dream
- **Characters**: 3D models, biology roster, 100s of tardigrade characters
- **Merchandise**: WaterBearSkin patterns, Printful/eBay listings
- **Apps**: Birds For Cats (B4C) - YouTube for cats app
- **Business**: Vision, legal, accounts

**Status**: Content migrated, ready for development sessions

---

### 2. Media & Entertainment City 📋 PLANNED
**Path**: `/workspace/app/projects/media-entertainment-city/`

**Concept**: Circular "Eye of Africa" city with 5 concentric rings:
1. **Central Core** - HQ, Visioneers Board, Archives
2. **Science City** - Research, Eduporiums, Scholarships
3. **Dream Parks** - Theme park, theaters, restaurants
4. **Media District** - Studios, post-production, game dev
5. **Logistics Ring** - Circular transit, circular economy

**Design Philosophy**: All layouts derived from Richat Structure geometry. Radial coordinate system (Sector-Ring-Unit).

**Integration**: Physical home for Franchise IP production, theme park for characters, studios for content creation.

---

### 3. Mechanization & Cobot Family Work 📋 PLANNED
**Path**: `/workspace/app/projects/mechanization-cobot/`

**Concept**: Tardigrade-inspired manufacturing with human-cobot collaboration.

**Key Principles**:
- **Resilience**: Extreme condition survival (tardigrade biology)
- **Adaptability**: Modular, reconfigurable lines
- **Symbiosis**: Human-cobot partnership (not replacement)
- **Microscale Precision**: From microscopic world documentation

**Workstreams**:
1. Cobot Platform Development
2. Safety-Rated Collaboration (ISO 10218/15066)
3. Tardigrade-Inspired Materials
4. Swarm Coordination
5. Digital Twin Integration
6. Factory Integration (ERP/MES/OPC UA)

**Integration**: "Factory Floor" radio block, theme park factory tours, educational content, cobot merch.

---

### 4. Tard Radio 📋 PLANNED
**Path**: `/workspace/app/projects/tard-radio/`

**Concept**: 24/7 streaming network from Media City Central Core.

**Programming Blocks** (circular 24hr = 360°):
- Dawn Chorus (6-9am) → Tiny Desk → Science Singalong
- Maya Tana & Buju Hour → Microscope Sessions
- Factory Floor → Evening Chorus → Night Lab → Deep Sleep

**Tech Stack**: AzuraCast automation, Icecast/HLS/DASH, React Native app, PWA web player.

**Integration**: Live from Media City studios, cross-promotion with all projects.

---

## Shared Infrastructure
**Path**: `/workspace/app/projects/shared-infrastructure/`

### Session Management Scripts
| Script | Purpose |
|--------|---------|
| `session_start.sh <project> [id]` | Initialize new session, restore latest archive |
| `session_resume.sh <project> <id>` | Resume specific previous session |
| `session_cleanup.sh <id> <project>` | Archive routes/ROOT to zip, clean folders |

### Workflow
```bash
# Start work on any project
cd /workspace/app/projects/shared-infrastructure/scripts
./session_start.sh tardigradia-franchise

# ... do work in routes/ and ROOT/ ...

# End session - auto-archives to zip
./session_cleanup.sh 20261027_143000 tardigradia-franchise

# Resume later
./session_resume.sh tardigradia-franchise 20261027_143000
```

### Archive Structure
```
projects/<project>/archives/sessions/<SESSION_ID>/
├── routes_<SESSION_ID>.zip      # Archived routes folder
├── ROOT_<SESSION_ID>.zip        # Archived ROOT folder
└── session_manifest.json        # Metadata
```

---

## Eye of Africa Design System (Shared)

### Visual Language
- **Primary Shape**: Concentric circles (Richat Structure)
- **Color Palette**: Earth tones + microscopic iridescence
- **Typography**: Circular/semi-circular text paths
- **Iconography**: Tardigrade silhouettes, radial symmetry

### Coordinate System
```
Radial:     0 (center) → 5 (outer ring)
Angular:    0° → 360° in 12 sectors (30° each)
Sectors:    Named after tardigrade species
Address:    SECTOR-RING-UNIT (e.g., MILNES-3-STUDIO-07)
```

### Applied Across Projects
| Project | Application |
|---------|-------------|
| Franchise | Character designs, logo, branding |
| Media City | Master plan, zoning, wayfinding |
| Mechanization | Factory layout, cobot coordination |
| Tard Radio | Programming clock, sonic logo, visualizer |

---

## Quick Start Commands

```bash
# 1. Migrate existing content (already done)
/workspace/app/projects/tardigradia-franchise/scripts/migrate_from_lilipad.sh

# 2. Start session on core franchise
/workspace/app/projects/shared-infrastructure/scripts/session_start.sh tardigradia-franchise

# 3. Start session on new project
/workspace/app/projects/shared-infrastructure/scripts/session_start.sh media-entertainment-city

# 4. List all projects
ls /workspace/app/projects/

# 5. View project registry
cat /workspace/app/projects/tardigradia-franchise/docs/PROJECT_REGISTRY.md

# 6. View future project templates
cat /workspace/app/projects/media-entertainment-city/docs/PROJECT_TEMPLATE.md
cat /workspace/app/projects/mechanization-cobot/docs/PROJECT_TEMPLATE.md
cat /workspace/app/projects/tard-radio/docs/PROJECT_TEMPLATE.md
```

---

## Next Steps

### Immediate (This Session)
- [x] Create project directory structure
- [x] Build session management scripts
- [x] Migrate lilipad.land content
- [x] Create project registry
- [x] Create future project templates

### Near Term (Next Sessions)
- [ ] Start first development session on tardigradia-franchise
- [ ] Begin Media City master plan in CityEngine/QGIS
- [ ] Prototype cobot control system (ROS2 + Gazebo)
- [ ] Set up Tard Radio automation (AzuraCast trial)
- [ ] Create shared design system component library

### Long Term
- [ ] Integrate all projects via digital twin platform
- [ ] Build franchise-wide asset pipeline (USD/glTF)
- [ ] Develop cross-project CI/CD
- [ ] Launch Tard Radio beta stream
- [ ] Break ground on Media City (virtual first)

---

## Contact & Governance
- **Visioneers Board**: Jason Isaac-Huff Brodsky (Founder)
- **Franchise HQ**: Central Core, Media & Entertainment City
- **Session Discipline**: Every session MUST end with `session_cleanup.sh`
- **Archive Retention**: All session zips retained indefinitely
- **Resume Capability**: Any session can be resumed at any time

---

*Generated: $(date -Iseconds)*
*Session infrastructure by Kilo Code Assistant*