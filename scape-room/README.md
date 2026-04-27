# Escape the Tech Lab (Scape Room)

Este repositorio local contiene una versión lista para clase del juego **Escape the Tech Lab**, diseñado como un **escape-room de decisiones** con rutas ramificadas y práctica de gramática en inglés.

## Objetivo

Escapar del laboratorio completando retos de idioma y tomando buenas decisiones en equipo.

- Modalidad: parejas
- Regla principal: **English only**
- Estructura: historia ramificada con múltiples finales

## Cómo acceder al juego

## Acceso en 10 segundos

```bash
cd /workspace/ESL
scripts/access-scape-room.sh
```

Abre en tu navegador:
- `http://localhost:8080/scape-room/`

### Opción rápida (sin instalar nada)
1. Abre el archivo `scape-room/game.html` directamente en tu navegador.
2. También puedes hacer doble clic sobre el archivo desde tu explorador de archivos.

### Opción servidor local (recomendada)
```bash
cd /workspace/ESL
python3 -m http.server 8080
```
Luego abre:
- `http://localhost:8080/scape-room/`


## Deploy in a separate repository (recommended)

If you want this game outside `ESL`, deploy it as an independent repository.

### Fast deploy (one command)
```bash
cd /workspace/ESL
scripts/deploy-scape-room.sh git@github.com:YOUR_USER/scape-room.git
```

This command creates a clean standalone repo from `scape-room/` and pushes it to `main`.

### Then enable GitHub Pages
- Go to **Settings → Pages** in the new repository
- Source: **Deploy from a branch**
- Branch: `main` / folder: `/ (root)`

Final URL:
- `https://YOUR_USER.github.io/scape-room/`

### Local-only mode (no push yet)
```bash
cd /workspace/ESL
scripts/deploy-scape-room.sh
```
Creates a local standalone repo at `.deploy/scape-room-standalone`.

## Estructura del tablero (branching)

```text
START
  ↓
Room 1 → Choice A / B
  ↓        ↓
Room 2A   Room 2B
  ↓        ↓
Room 3 → Choice A / B
  ↓        ↓
Room 4A   Room 4B
  ↓
FINAL ZONE → multiple endings
```

> Sugerencia: usa una hoja de ruta por pareja + maestro como game master.

## 10 retos (rooms) con foco gramatical

### Room 1 — Old vs Modern Device (used to)
**Task:**
- *People used to use ___, now they use ___.*

**Decisión:**
- A: Old devices room
- B: AI control room

### Room 2A — Broken Phone (past tenses)
**Task:**
- *The phone stopped working because...*
- *Someone dropped it / it broke / it crashed.*

**Regla:**
- Respuesta lógica: avanzan.
- Respuesta débil: pierden tiempo.

### Room 2B — AI Assistant (modal verbs)
**Task:** usar modales
- *Can / Could / Should / Must*

Ejemplos:
- *We should check the system.*
- *Can you open the door?*

### Room 3 — Security System (first conditional)
**Task:**
- *If we press this button, ...*
- *If we don’t hurry, ...*

### Room 4A — App Design Room (present perfect)
**Task:**
- *We have created an app that...*
- *It has helped people since...*

### Room 4B — Password Puzzle (tech vocabulary)
**Task:** definir o usar en frases
- *charger, screen, app, download, message*

### Room 5 — The Time Portal (used to vs now)
**Task:**
- *People used to communicate by..., now they...*

### Room 6 — Virus Alert (modal verbs)
**Task:** elegir mejor solución
- *must / mustn’t / should / shouldn’t*

### Room 7 — Lost Data (past simple vs present perfect)
**Task:**
- *We lost the file* vs *We have lost the file*
- Explicar por qué.

### Room 8 — The Developer (persuasion)
**Task:** mini pitch
- *Our app is perfect for...*
- *It helps people to...*

### Room 9 — Final Decision (conditional)
**Task:**
- *If we trust the system, we will...*
- *If we escape manually, we will...*

### Room 10 — Exit Gate (mixed challenge)
Debe incluir:
- 1 × *used to*
- 1 × *present perfect*
- 1 × *modal verb*
- 1 × *conditional*

## 7 finales posibles

1. 🟢 **Perfect Escape** — gramática correcta + buenas decisiones.
2. 🟢 **Tech Heroes** — reparan el sistema y escapan.
3. 🟡 **Slow Escape** — escapan, pero tarde.
4. 🟡 **Helped by AI** — dependen demasiado de la IA.
5. 🔴 **Locked Inside** — malas decisiones, quedan encerrados.
6. 🔴 **System Crash** — fallan condicionales críticos.
7. 🔴 **Lost in Time** — quedan atrapados en el pasado.

## Cómo jugar (rápido)

1. Entregar por pareja:
   - hoja de decisiones,
   - mapa de flujo,
   - tarjetas de retos.
2. El docente dirige el ritmo del juego.
3. Cada ronda:
   - leen situación,
   - discuten en inglés,
   - eligen opción,
   - resuelven el reto lingüístico.

## Language support (frases útiles)

- *We should...*
- *Let’s...*
- *If we..., we will...*
- *People used to...*
- *We have... since...*

## Nota pedagógica

La producción de lenguaje es más importante que “ganar”.
