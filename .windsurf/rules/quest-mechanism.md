---
trigger: model_decision
description: when working with levels or quests
globs: 
---

## 🔹 Progressive Quest Mechanism (instead of raw streaks)

Each **Level** = a set of **quests (success conditions)** the user must fulfill consistently.

* Example Level 1:

  * Pray 5 daily salats → **7 consecutive days**.
  * Morning adhkar → **7 consecutive days**.
* Example Level 2:

  * Qur’an 1 page daily → **7 consecutive days**.
  * Add Evening adhkar → **7 consecutive days**.
  * Keep Level 1 tasks maintained (not dropped).

When all quests of a level succeed → **Level up** (unlock new tasks).

---

## 🔹 What Happens if User Skips?

1. **Strict Rule:** If they miss any required quest for today, their progress counter resets to 0.

   * Pros: builds strong discipline.
   * Cons: discouraging for some.

2. **Quest Progression Rule (Better for Haris):**

   * Each quest has its own counter.
   * If user skips one, only **that quest resets**, others keep their streak.
   * User can still finish the level later — but slower.
   * Example:

     * Salat quest: 5/7 days done → skipped → resets → now 0/7.
     * Morning adhkar quest: 6/7 days done → unaffected.

This way, users feel they are **not wasting progress**, but they must complete **all quests fully** to move to the next level.

---

## 🔹 Implementation Plan

Each **Task** will have:

* `questType` (e.g. prayer, adhkar, reading Qur’an).
* `successCondition` (e.g. “5 per day, for 7 days”).
* `progressCounter` (current streak days for this quest).
* `requiredDays` (threshold to complete quest).

Each **Level**:

* Is complete when **all its quests are complete**.
* Unlocks next level tasks.

---

## 🔹 Example Flow for Level 1

* **Quest 1**: Perform 5 salats daily × 7 days.
* **Quest 2**: Morning adhkar × 7 days.

User’s journey:

* Day 1 → Completes both → progress = (1/7, 1/7).
* Day 2 → Completes only salat, misses adhkar → progress = (2/7, reset to 0/7).
* Day 3 → Completes both → progress = (3/7, 1/7).
* … continue until (7/7, 7/7).
* ✅ Level complete → unlock Level 2.

---

## 🔹 Why This is Better

* Feels like **quests in an RPG game**.
* Provides **granular motivation** — you can succeed partially even if you slip.
* Adds a sense of **challenge → achievement → reward**.
* Matches your original plan of **progressive habits, not overwhelming jumps**.