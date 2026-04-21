# THE PIT - English Language Arena

An interactive English language learning platform built for the 2ESO curriculum. Students practice vocabulary, reading, writing, speaking, listening, and grammar through gamified stations with a shared leaderboard.

## Stations

| Station | Description |
|---------|-------------|
| **Vocabulary** | 336 words across 8 units. Flashcards, sorting, quizzes, hangman, memory, sentence building. |
| **Writing** | 6 creative writing modes with grammar checking tools. |
| **Reading** | 24 texts with manga illustrations. Comprehension, true/false, vocabulary modes. |
| **Speaking** | 16 dialogues with role play, listen & repeat, fill the gap, word order. |
| **Listening** | 18 audio exercises. Comprehension, dictation, note-taking modes. |
| **Grammar** | 6 topics: To Be, Pronouns, Present Simple & Continuous, Question Words, Past Simple, Comparatives. |
| **The Funny Corner** | 25 idioms & expressions. Guess meaning, match up, situation, listen & choose. |
| **Games** | Language games to reinforce skills. |
| **Challenge** | Karaoke (with links to real songs), tongue twisters, Who Am I?, multi-skill blitz. |

## Features

- **Global Score Tracking** &mdash; Points accumulate across all stations via `localStorage`.
- **Class Leaderboard** &mdash; Students generate a shareable code and import classmates' codes to build a class ranking.
- **9 Achievement Badges** &mdash; First Steps, Rising Star, Champion, Explorer, Word Wizard, Author, Bookworm, Challenger, On Fire.
- **Browser Speech Synthesis** &mdash; Text-to-speech for listening and pronunciation exercises.
- **Zero Dependencies** &mdash; Pure HTML, CSS, and Vanilla JavaScript. No build step, no server.

## Quick Start

```bash
# Clone the repo
git clone https://github.com/YOUR_USERNAME/the-pit.git
cd the-pit

# Open directly in browser
open frontend/public/index.html
# or serve locally
cd frontend/public && python3 -m http.server 8080
```

Then open [http://localhost:8080](http://localhost:8080) in your browser.

## Deploy to GitHub Pages

This project uses GitHub Actions for automatic deployment.

1. Push to the `main` branch.
2. Go to **Settings > Pages** in your repository.
3. Under **Source**, select **GitHub Actions**.
4. The site will be live at `https://YOUR_USERNAME.github.io/YOUR_REPO/`.

Alternatively, for manual setup:
1. Go to **Settings > Pages**.
2. Set **Source** to **Deploy from a branch**.
3. Select branch `main`, folder `/ (root)`.
4. Create a symlink or copy `frontend/public/index.html` to the root (the GitHub Action handles this automatically).

## Project Structure

```
frontend/public/
  index.html               Hub / dashboard / leaderboard
  stations/
    vocabulary.html         Vocabulary station
    vocabulary.js           Word data and logic
    vocabulary-icons.js     Icon mappings
    writing.html            Writing station
    reading.html            Reading station (manga illustrations)
    reading-bank.js         Reading passages data
    speaking.html           Speaking station
    listening.html          Listening station
    grammar.html            Grammar station (6 unified topics)
    funnycorner.html        Idioms & expressions
    games.html              Language games
    challenge.html          Challenge station (4 modes)
    pit-score.js            Shared score tracker & leaderboard
    icons/                  SVG icon sets (emotions, jobs, activities, etc.)
    assets/                 Images and audio files
```

## How the Leaderboard Works

Since there is no backend, the leaderboard uses a code-sharing system:

1. **Play** any station to earn points.
2. Go to the **Leaderboard** tab on the hub.
3. Click **Generate Code** to get your score as a shareable text code.
4. **Share** the code with classmates (chat, paper, whiteboard).
5. Classmates **Import** your code to add you to their local leaderboard.

All data is stored in the browser's `localStorage`.

## Tech Stack

- HTML5 / CSS3 / Vanilla JavaScript
- Web Speech API (browser text-to-speech)
- localStorage for persistence
- Google Fonts (Orbitron, Inter)

## License

MIT License. See [LICENSE](LICENSE) for details.
