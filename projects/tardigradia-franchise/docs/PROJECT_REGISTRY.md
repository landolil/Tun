# Tardigradia Franchise - Project Registry

## Overview
The **Tardigradia Franchise** ("land of the 'lil") is a multi-media entertainment and education franchise centered on tardigrades (water bears/moss piglets). Created by Jason Isaac-Huff Brodsky, 2019.

## Core Vision (from TG.Vision.20190426.txt & TG.MissionStatement.016.txt)
- Animation series: "Tardigradia 'land 'o' lil' big adventures of Maya Tana & Buju"
- Merchandise, restaurants, science eduporiums, theme parks
- Singalong, earth rejuvenation, documenting microscopic world
- Educational scholarships, franchise crossovers, antikytherian technologies
- "For the kids eyes and parents ears" - entertainment edutainment with class

## Project Structure (Mapped from lilipad.land)

### 1. Animation & Shows
| Sub-Project | Source Path | Description |
|-------------|-------------|-------------|
| Maya Tana & Buju (MTB) Series | `03_Show_MayaTanaBuju_MTB/` | Main animated series with episodes, curtain call sequences |
| Midsummer Night's Dream Playhouse | `04_Playhouse_MidsummerNightsDream/` | Theatrical adaptation with scripts, dialogue, music cues |
| Animation Tests | `06_Animation_and_Storyboard_Tests/` | SWF exports, Storyboard Pro projects |

### 2. Characters & Assets
| Sub-Project | Source Path | Description |
|-------------|-------------|-------------|
| Character Roster & Biology | `05_Characters_and_3D_Models/Roster_and_Biology/` | Character definitions, biology sheets (XLS/CSV) |
| 3D Models (Unreal/FBX) | `05_Characters_and_3D_Models/3D_Models_Unreal_FBX/` | FBX models, DWG specs for tardigrade characters |

### 3. Merchandise & Commerce
| Sub-Project | Source Path | Description |
|-------------|-------------|-------------|
| Printful/eBay Listings | `07_Merchandise_Previews_and_Listings/700_Market_Printful_and_eBay/` | Market listings |
| WaterBearSkin Patterns | `07_Merchandise_Previews_and_Listings/900_WaterBearSkin_AllOverPrint/` | All-over print patterns, mockups |

### 4. Apps & Digital
| Sub-Project | Source Path | Description |
|-------------|-------------|-------------|
| Birds For Cats (B4C) App | `08_Apps_B4C_BirdsForCats/` | Android app for cats - YouTube bird videos with settings |
| YouTube Content Management | `08_Apps_B4C_BirdsForCats/YoutubePostings*.csv` | Video posting tracking |

### 5. Business & Legal
| Sub-Project | Source Path | Description |
|-------------|-------------|-------------|
| Vision & Mission | `01_Vision_and_Mission/` | Core vision docs, mission statements (multiple drafts) |
| Legal & Contracts | `02_Legal_and_Contracts/` | Image rights, usage agreements |
| Business Accounts | `09_Business_and_Accounts/` | Financial tracking |

## Key Characters
- **Maya** - Girl protagonist
- **Tana** - Girl protagonist  
- **Buju** - Know-it-all little boy
- **TheConductor** - Tardigradia character (from mission statement)
- Hundreds of tardigrade characters, birds, dolphins, whales, fish, cats

## Technical Assets
- **Screenplay Format**: Final Draft (.fdx), Fountain, custom CSV extracts
- **3D Formats**: FBX (Unreal), DWG (vector specs)
- **Animation**: SWF exports, Storyboard Pro (.sboard, .tvg)
- **Graphics**: GIF sequences, SVG patterns, PNG mockups
- **Data**: CSV/Excel for character data, episode breakdowns, YouTube tracking

## Session Management
All projects use shared infrastructure scripts:
- `session_start.sh <project> [session_id]` - Initialize new session
- `session_resume.sh <project> <session_id>` - Resume previous session
- `session_cleanup.sh <session_id> <project>` - Archive routes/ROOT to zip

## Migration Status
- [ ] Migrate lilipad.land content to projects/tardigradia-franchise/
- [ ] Set up routes/ROOT folders for active development
- [ ] Create initial session for each active sub-project