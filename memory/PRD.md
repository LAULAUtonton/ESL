# THE PIT - English Language Learning Gamification Platform

## Original Problem Statement
User has a gamification platform for learning English (2ESO curriculum) built as pure HTML/CSS/Vanilla JS for GitHub Pages deployment. Needs to finish and refine multiple learning stations.

## Core Requirements
1. Pure HTML/CSS/Vanilla JS - NO backend, NO database
2. Each station has distinct color but shared gamification aesthetic
3. All stations contribute to global leaderboard via `pit-score.js` (localStorage)
4. Content aligned with 8-unit 2ESO curriculum
5. Manga-style illustrations for visual engagement

## Architecture
```
/app/gamification_project/
├── index.html           # Main hub / game entry
└── stations/
    ├── vocabulary.html   # Purple theme - 336 words, 6 activities
    ├── vocabulary.js
    ├── vocabulary-icons.js
    ├── writing.html      # Teal/Cyan theme - 6 writing modes
    ├── reading.html      # Green theme - 24 texts, 3 modes, manga images
    ├── reading-bank.js
    ├── speaking.html     # Blue theme - 16 dialogues, 3 modes
    ├── listening.html    # (Existing, needs review)
    ├── grammar.html      # (Existing, needs review)
    ├── games.html        # (Existing, needs review)
    ├── pit-score.js      # Global score tracker (localStorage)
    └── icons/            # SVG assets
```

## What's Been Implemented

### Completed Stations
| Station | Color | Features | pit-score.js | Date |
|---------|-------|----------|-------------|------|
| Vocabulary | Purple | 336 words, 8 units, 6 activities (flashcards, drag-drop, categories, etc.) | Yes | Pre-fork |
| Writing | Teal/Cyan | 6 modes, grammar checking, vocab helper sidebar | Yes | Pre-fork |
| Reading | Green (#22c55e) | 24 texts (8 units x 3 levels), 3 modes (Comprehension, T/F, Vocabulary), 24 manga illustrations, pit-score.js | Yes | Feb 2026 |
| Speaking | Blue (#3b82f6) | 16 dialogues (8 units x 2), 3 modes (Role Play, Fill the Gap, Word Order), grammar focus, key phrases, speech recognition | Yes | Feb 2026 |

### Global Systems
- `pit-score.js`: localStorage-based score tracker across all stations
- Player data: name, totalScore, per-station scores, achievements

## Prioritized Backlog

### P0 - High Priority
- [ ] Global Leaderboard on `index.html` - Display cumulative scores from pit-score.js
- [ ] Review/refine Listening Station - Ensure pit-score.js, unique colors, curriculum alignment

### P1 - Medium Priority
- [ ] Review/refine Grammar Station - Ensure pit-score.js integration
- [ ] Review/refine Games Station - Ensure pit-score.js integration
- [ ] Review remaining stations (to-be.html, pronouns.html, etc.)

### P2 - Low Priority
- [ ] Ensure all files ready for GitHub Pages push
- [ ] File cleanup/organization
- [ ] Mobile responsiveness pass across all stations

## Testing Status
- Reading Station: All tests PASS (100%)
- Speaking Station: All tests PASS (100%)
- Test report: /app/test_reports/iteration_1.json
