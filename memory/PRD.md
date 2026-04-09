# THE PIT - English Language Learning Gamification Platform

## Original Problem Statement
Gamification platform for learning English (2ESO curriculum) built as pure HTML/CSS/Vanilla JS for GitHub Pages. Multiple color-coded learning stations with global leaderboard and score-sharing system.

## Architecture
```
/app/frontend/public/
├── index.html                    # Main hub - dark theme, tabs, leaderboard, achievements
└── stations/
    ├── vocabulary.html           # Purple - 336 words, 7 modes
    ├── vocabulary.js
    ├── vocabulary-icons.js
    ├── writing.html              # Teal - 6 writing modes
    ├── reading.html              # Green - 24 texts, manga illustrations, 3 modes
    ├── reading-bank.js
    ├── speaking.html             # Blue - 16 dialogues, 4 modes
    ├── listening.html            # Orange - 16 exercises, 3 modes
    ├── funnycorner.html          # Pink - 25 idioms, 4 modes
    ├── games.html                # Red - language games
    ├── grammar.html              # Gray - 6 grammar topics, 60 questions
    ├── challenge.html            # Red/Fire - 4 modes (Karaoke, Tongue Twisters, Who Am I, Blitz)
    ├── pit-score.js              # Global score tracker + leaderboard (localStorage)
    └── icons/                    # SVG assets
```

## Completed Stations (ALL DONE)
| Station | Color | Content | Modes | Score Integration |
|---------|-------|---------|-------|-------------------|
| Hub/Index | Dark/Gradient | Leaderboard, achievements, tabs | 3 views (Stations, Leaderboard, Achievements) | Reads all scores |
| Vocabulary | Purple | 336 words, 8 units | 7 (Flashcards, Sorting, Quiz, Hangman, Memory, Sentences, Explore) | Yes |
| Writing | Teal | 6 writing tasks | 6 modes with grammar check | Yes |
| Reading | Green | 24 texts, manga illustrations | 3 (Comprehension, T/F, Vocabulary) | Yes |
| Speaking | Blue | 16 dialogues, 8 units | 4 (Role Play, Listen & Repeat, Fill the Gap, Word Order) | Yes |
| Listening | Orange | 16 exercises (2/unit: easy+hard) | 3 (Comprehension, Dictation, Note-taking) | Yes |
| Funny Corner | Pink | 25 idioms, 5 categories | 4 (Guess Meaning, Match Up, Situation, Listen & Choose) | Yes |
| Games | Red | Language games | Multiple | Yes |
| Grammar | Gray | 6 topics, 60 questions | Topic-based quiz | Yes |
| Challenge | Red/Fire | Songs, tongue twisters, celebrities, mixed questions | 4 (Karaoke, Tongue Twisters, Who Am I, Multi-Skill Blitz) | Yes |

## Leaderboard System
- Class leaderboard stored in localStorage under `pitLeaderboard`
- Each player's score auto-saves to leaderboard
- **Export Code**: Generates base64-encoded score that students share with classmates
- **Import Code**: Paste a classmate's code to add them to the leaderboard
- Rankings with gold/silver/bronze styling

## Deployment
- Pure static HTML/CSS/JS - ready for GitHub Pages
- No backend needed, no build step
- All dependencies loaded via CDN (Google Fonts)
- Use "Save to Github" button to push to repository
- Enable GitHub Pages on the `main` branch, `/ (root)` or `/frontend/public` depending on repo structure

## Backlog
### P1
- [ ] Mobile responsiveness polish across all stations
- [ ] Achievement unlock logic improvements (more granular triggers)

### P2
- [ ] Sound effects/audio feedback on correct/wrong answers
- [ ] Student progress export as PDF report
- [ ] Dark/light theme toggle
