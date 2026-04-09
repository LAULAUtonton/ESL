# THE PIT - English Language Learning Gamification Platform

## Original Problem Statement
Gamification platform for learning English (2ESO curriculum) built as pure HTML/CSS/Vanilla JS for GitHub Pages. Multiple color-coded learning stations with global leaderboard and score-sharing system.

## Architecture
```
/ (repo root)
├── README.md                     # Project documentation
├── LICENSE                       # MIT License
├── .gitignore                    # Clean gitignore
├── .github/workflows/deploy.yml  # GitHub Pages auto-deploy
├── frontend/public/              # Deployable content
│   ├── .nojekyll                 # Prevents Jekyll processing
│   ├── index.html                # Main hub / dashboard / leaderboard
│   └── stations/
│       ├── vocabulary.html       # Purple - 336 words, 7 modes
│       ├── writing.html          # Teal - 6 writing modes
│       ├── reading.html          # Green - 24 texts, manga illustrations
│       ├── speaking.html         # Blue - 16 dialogues, 4 modes
│       ├── listening.html        # Orange - 16 exercises, 3 modes
│       ├── grammar.html          # Gray - 6 topics, 60 questions
│       ├── funnycorner.html      # Pink - 25 idioms, 4 modes
│       ├── games.html            # Red - language games
│       ├── challenge.html        # Red/Fire - Karaoke, Twisters, Who Am I, Blitz
│       ├── pit-score.js          # Global score + leaderboard engine
│       ├── icons/                # SVG icon sets (emotions, jobs, activities, etc.)
│       └── assets/               # Images and audio files
```

## All Stations (COMPLETE)
| # | Station | Theme Color | Content Summary |
|---|---------|------------|-----------------|
| 1 | Hub/Index | Dark/Gradient | Tabs: Stations, Leaderboard, Achievements |
| 2 | Vocabulary | Purple | 336 words, 8 units, 7 game modes |
| 3 | Writing | Teal | 6 creative writing tasks with grammar tools |
| 4 | Reading | Green | 24 texts with manga illustrations, 3 modes |
| 5 | Speaking | Blue | 16 dialogues, 4 modes |
| 6 | Listening | Orange | 16 audio exercises, 3 modes |
| 7 | Grammar | Gray | 6 topics, 60 questions |
| 8 | Funny Corner | Pink | 25 idioms, 4 modes |
| 9 | Games | Red | Language games |
| 10 | Challenge | Red/Fire | Karaoke, Tongue Twisters, Who Am I?, Multi-Skill Blitz |

## Leaderboard System
- localStorage-based class leaderboard
- Export/Import shareable base64 score codes
- Auto-saves on play; rankings with gold/silver/bronze

## Deployment
- GitHub Actions workflow auto-deploys `frontend/public/` to GitHub Pages on push to `main`
- No backend, no build step, no dependencies to install
- Use "Save to Github" button to push code to repo

## Repo Restructuring (Done April 9)
- Removed dead directories: gamification_project/, curriculum_plan/, curriculum.zip
- Removed orphaned JS files (10 files — data is inline in HTML)
- Removed old grammar redirect stubs (to-be.html, pronouns.html, etc.)
- Organized station images into stations/assets/
- Removed empty icon directories
- Added: README.md, LICENSE (MIT), .github/workflows/deploy.yml, .nojekyll
- Cleaned .gitignore (removed duplicates)

## Backlog
### P1
- [ ] Mobile responsiveness polish across all stations
- [ ] Achievement unlock animations

### P2
- [ ] Sound effects/audio feedback
- [ ] Student progress export as PDF
- [ ] Dark/light theme toggle
