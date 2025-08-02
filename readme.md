# Maynooth University Trash Tutor Game

## Project Overview

The Trash Tutor Game is an educational application developed in Processing to teach users proper waste disposal through interactive gameplay. Designed for Maynooth University, the game promotes sustainable behavior using visual elements, animations, and user-driven challenges.

---

## Features and Functionality

### Initial Setup

- **Library Support**: Uses the `GifAnimation` library for GIF-based animations.
- **Asset Loading**: Loads logos, campus maps, and various trash item images.
- **Fonts and Text**: Custom fonts are initialized to build a clean, readable UI.

---

### Game Mechanics

#### Screens and Navigation

- Multiple game states: introduction, level screens, failure states, and a completion screen.
- Navigation controlled by mouse input and key presses.

#### Gameplay Flow

- **Introduction**: Explains game goals, instructions, and controls.
- **Levels**: Player drags and drops trash items into appropriate bins.
  - Correct actions advance to the next level.
  - Incorrect sorting decreases the player's lives.
- **Scoring**:
  - Correct sorting increases score.
  - Mistakes reduce lives.
- **Game End**: Triggered when all lives are lost or final level is completed.

---

### User Interaction

- **Mouse Input**: Used to drag and drop items.
- **Keyboard Input**: Key presses like 'A' are used to transition between screens.
- **Feedback**: Visual and textual feedback informs users of correct or incorrect actions.

---

### Educational Focus

- Reinforces composting, recycling, and electronic waste sorting.
- Encourages trial and error learning with immediate feedback.
- Aims to improve understanding of sustainable waste practices on campus.

---

## Technical Overview

- **Platform**: Processing
- **Animation Support**: GIFs integrated using `GifAnimation` library
- **Graphics**: Static images and animated assets used for feedback and instruction
- **Interaction**: Built-in input handling via Processing’s event functions

---

## Summary

The Maynooth University Trash Tutor Game is a Processing-based application that blends education and interactivity. It guides users through a series of trash-sorting challenges while reinforcing sustainable behavior. The game structure, animations, and scoring logic ensure a user-friendly experience with an underlying educational goal.
