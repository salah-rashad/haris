# Haris (حارس)

A **gamified quest-tracking application** designed to help users stay consistent and motivated in
performing meaningful daily actions.  
The app follows a **linear level-based progression system**, where each level contains a set of
quests. Completing quests earns XP, unlocks achievements, and levels the user up to new challenges.

---

## 🌟 Core Concept

- **Levels**  
  Each level represents a stage of progress. A level is only complete when all its quests are
  finished.

- **Quests**  
  Tasks within a level that grant XP when completed.

- **Progression**  
  Completing quests grants XP. When all quests in a level are completed, the user advances to the
  next level.

- **Achievements**  
  Special milestones unlocked by reaching specific goals, such as completing all quests in a week or
  earning a set amount of XP.

---

## ✨ Features

- **Linear Level System** – Move from one stage to the next in a clear progression.
- **Quest Tracking** – View all quests with status and details.
- **XP Rewards** – Gain XP for every quest completed.
- **Achievements** – Unlock rewards for hitting milestones and extra challenges.
- **Live Progress Updates** – Level progress, XP totals, and quest status update instantly via
  reactive streams.
- **Level-Up Popups** – Celebrate when advancing to the next level.
- **Persistent User Progress** – Data is stored locally with the option to reset.
- **Settings Screen** – Manage preferences, including resetting progress.

---

## 🛠 Technical Highlights

- **Flutter** – Modern, cross-platform UI.
- **Drift** – Reactive local database with static seeding for levels & quests.
- **BLoC** – Predictable, testable state management with clear separation of concerns.
- **Streams Everywhere** – Real-time updates without manual refreshes.
- **Event System with Queuing** – A global event bus handles app-wide events such as level-ups or
  achievements.  
  Events can be queued and processed one at a time, ensuring that popups and other UI triggers never
  overlap or interrupt each other.

---

## 🎯 Philosophy

This app is built to be:

- **Simple** – Easy to use, with a clean and motivating user experience.
- **Extensible** – Developers can easily add new quests, achievements, or features without rewriting
  the core.
- **Maintainable** – Codebase is clean, modular, and avoids unnecessary boilerplate.

---

## 🚀 Roadmap

- [x] Core Quests & Levels System
- [x] XP Tracking & Progress Bars
- [x] Level-Up Flow & Popups
- [ ] Achievements System
- [ ] Settings Screen
- [ ] Progress Reset
- [ ] User Profile
