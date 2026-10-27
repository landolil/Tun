# Tard Radio - Project Template

## Vision
A 24/7 streaming radio/podcast network for the Tardigradia franchise. "Tard Radio" broadcasts from the Central Core of the Media & Entertainment City, reaching global audiences with content for "kids' eyes and parents' ears." Combines music, storytelling, science education, and interactive segments.

## Core Concept: "Microscopic World, Macroscopic Reach"
- **Frequency**: Multi-platform (web stream, podcast, app, smart speakers)
- **Format**: Curated blocks + live DJ segments + audience interaction
- **Mascot**: TheConductor (from mission statement) as station manager
- **Tagline**: "Tuning into the tiny world"

## Project Structure
```
tard-radio/
├── docs/
│   ├── programming/           # Show formats, schedules, grids
│   ├── licensing/             # Music rights, IP clearances
│   ├── technical/             # Streaming architecture, CDN
│   ├── branding/              # Station ID, jingles, imaging
│   └── distribution/          # Platform specs (iHeart, TuneIn, etc.)
├── src/
│   ├── automation/            # Playout automation (Rivendell, AzuraCast)
│   ├── streaming/             # Icecast/HLS/DASH streamers
│   ├── podcast/               # Podcast generation, RSS feeds
│   ├── mobile-app/            # Listener app (React Native/Flutter)
│   ├── web-player/            # Web embed, PWA player
│   ├── cms/                   # Content management, scheduling UI
│   ├── analytics/             # Listener metrics, heatmaps
│   └── interaction/           # Call-ins, chat, song requests
├── assets/
│   ├── audio/
│   │   ├── music/             # Licensed/Original tracks
│   │   ├── jingles/           # Station IDs, sweepers, liners
│   │   ├── beds/              # Talk beds, underscore loops
│   │   ├── stings/            # Transitions, effects
│   │   └── archives/          # Recorded shows, podcasts
│   ├── imaging/               # Logos, social assets, merch designs
│   ├── metadata/              # ID3 tags, MusicBrainz, DDEX
│   └── scripts/               # Show scripts, promos, liners
├── scripts/
│   ├── ingest/                # Audio ingest, normalization, tagging
│   ├── scheduling/            # Clock wheel, traffic integration
│   ├── podcasting/            # Episode assembly, RSS generation
│   ├── monitoring/            # Stream health, silence detection
│   └── backup/                # Disaster recovery, offsite sync
├── archives/
├── sessions/
├── routes/
└── ROOT/
```

## Programming Blocks (Circular Schedule - 24hr = 360°)

| Block | Time | Degrees | Content | Audience |
|-------|------|---------|---------|----------|
| **Dawn Chorus** | 6-9am | 90-135° | Gentle wake-up, bird sounds, science facts | Families |
| **Tiny Desk Concerts** | 9-11am | 135-165° | Acoustic sets, artist interviews | Parents |
| **Science Singalong** | 11am-1pm | 165-195° | Educational songs, STEM topics | Kids + Parents |
| **Maya Tana & Buju Hour** | 1-3pm | 195-225° | Storytime, adventures, games | Kids |
| **Microscope Sessions** | 3-5pm | 225-255° | Deep-dive science, researcher talks | Teens/Adults |
| **Factory Floor** | 5-7pm | 255-285° | Cobot/manufacturing stories, tech | Makers |
| **Evening Chorus** | 7-10pm | 285-315° | Wind-down, lullabies, bedtime stories | Kids |
| **Night Lab** | 10pm-12am | 315-345° | Experimental, ambient, late-night science | Night owls |
| **Deep Sleep** | 12-6am | 345-90° | White noise, purrs, tardigrade ASMR | Sleep aid |

## Special Programming
- **Weekend Festivals**: Live from Media City venues
- **Tardigrade Talks**: Scientist interviews from Research Ring
- **Factory Tours**: Audio walks through Mechanization Ring
- **Character Takeovers**: Maya/Tana/Buju host blocks
- **Visioneers Sessions**: Board meetings broadcast live
- **Emergency Broadcasts**: Earth rejuvenation alerts

## Technical Stack
- **Automation**: AzuraCast (open-source) or Rivendell
- **Streaming**: Icecast-KH → HLS/DASH via CloudFront/CDN
- **Podcasts**: Custom RSS generator, distributed via Podcast Index
- **Mobile**: React Native + Expo (iOS/Android)
- **Web**: PWA with Service Worker for offline caching
- **Analytics**: Custom + Matomo/Piwik, privacy-first
- **Monitoring**: Prometheus + Grafana, silence alerts via PagerDuty

## Integration Points
- **Media City**: Studio in Production Ring, live remotes from parks
- **Mechanization**: "Factory Floor" block, cobot soundscapes
- **Franchise IP**: Character voices, story arcs, music from shows
- **Birds For Cats App**: Cross-promotion, shared audio assets
- **Educational**: Curriculum-aligned content for schools

## Session Workflow
```bash
# Start new session
/workspace/app/projects/shared-infrastructure/scripts/session_start.sh tard-radio

# Resume previous session
/workspace/app/projects/shared-infrastructure/scripts/session_resume.sh tard-radio SESSION_ID

# End session (archives routes/ROOT)
/workspace/app/projects/shared-infrastructure/scripts/session_cleanup.sh SESSION_ID tard-radio
```

## Branding: Eye of Africa Audio Identity
- **Sonic Logo**: 3-note motif based on Richat Structure coordinates
- **Station ID**: "You're tuned to Tard Radio, broadcasting from the Eye"
- **Imaging**: Circular audio - panning, binaural, spatial audio
- **Visual**: Concentric ring equalizer, radial waveform displays