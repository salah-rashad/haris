---
trigger: always_on
description: 
globs: 
---

### 🎯 Goal

Start **small and doable**, then **expand step by step** to avoid fatigue.

Every feature in the backlog will support this progression.

---

## 🔹 Epic 1: Daily Task System (Progressive)

**User Story:**

“كـمستخدم، أريد أن أبدأ بمهام صغيرة يوميًا، ويزيد الحمل تدريجيًا مع استمرار التزامي، حتى أبني عادة قوية بدون تعب.”

**Tasks:**

1. **DB Schema:** Add `level` & `isUnlocked` for each task.
2. **Today’s Tasks screen:** Shows only tasks unlocked at current level.
3. **Progression Logic:**
    - Week 1: Micro tasks (short adhkar, 1 surah at night).
    - Week 2–3: Full adhkar + 1 page Qur’an.
    - Week 4+: Full checklist (adhkar, Qur’an, before-sleep routine).
4. **Unlock System:** A task unlocks after a streak (e.g. 7 days success).

---

## 🔹 Epic 2: Mandatory Overlay

**User Story:**

“كـمستخدم، أريد أن تكون التذكيرات تدريجية: أول أسبوع Overlay قصير، وبعدها يطول الوقت/يزداد صعوبة مع تقدمي.”

**Tasks:**

1. Overlay UI (Fullscreen block).
2. Mode per level:
    - Level 1: Write 1 word (e.g. “Allah”).
    - Level 2: Type short dhikr (سبحان الله).
    - Level 3: Timer (30–60s) or type verse.
3. Prevent skip → must complete action.

---

## 🔹 Epic 3: Floating Widget

**User Story:**

“كـمستخدم، أريد زرًا عائمًا لأداء ورد قصير أو روتين النوم بسرعة حسب المستوى الحالي.”

**Tasks:**

1. Floating bubble.
2. Quick actions tied to level:
    - Level 1: Only “Before Sleep (Shahada)”.
    - Level 2: Adds “Quick Dhikr (5 tasbeehs)”.
    - Level 3: Adds full routine (Surah Mulk, wudu checklist).

---

## 🔹 Epic 4: Relapse Logger

**User Story:**

“كـمستخدم، أريد تسجيل الانتكاسات من البداية، لكن التحليل المتقدم مش ضروري الآن.”

**Tasks:**

1. DB Table `relapses`.
2. Simple form (time, short note).
3. Later: unlock “Patterns” when Phase 2 arrives.

---

## 📈 Daily Experience Flow (MVP)

1. **Day 1:** App shows only 2 tiny tasks (morning adhkar short, Shahada before sleep). Overlay requires just typing 1 word.
2. **After 7 days streak:** App unlocks new tasks (longer adhkar, 1 page Qur’an). Overlay becomes a bit harder (type full dhikr).
3. **After 1 month:** Full routine unlocked (all adhkar + Qur’an pages + sleep checklist). Overlays now require full compliance.

👉 Result: The app **grows with you**, instead of overwhelming you at the start.

---

## 🚀 Why This MVP is Useful

- Prevents **early burnout**.
- Builds **momentum and confidence**.
- Gives you a sense of **progression and achievement**.
- Still enforces discipline (mandatory overlay, no skipping).

# ☑️Objectives

<aside>
💡

The MVP has **one clear mission**:

Build a **basic but strict habit system** that enforces daily routines **progressively** (not overwhelming from day one).

</aside>

So, your objectives are:

1. **Core daily routine system** — tasks unlock step by step.
2. **Mandatory overlay** — forces you to act at the right time.
3. **Floating widget** — quick shortcut for before-sleep or dhikr.
4. **Relapse logger** — awareness tracking from day one.
5. **Local storage** — no cloud, just SQLite/Drift DB.

That’s it. No AI, no analytics, no blocking yet.

---

# 🛠️ What You Need to Start

### 🔹 Technical Setup

- **Flutter project** (latest stable SDK).
- **Packages to use:**
    - `drift` or `sqflite` → local DB.
    - `flutter_overlay_window` or custom native channel → overlays.
    - `flutter_background_service` → schedule overlay triggers.
    - `get_it` → dependency injection (clean code).
    - `bloc` or `riverpod` → state management.

*(Keep it lean — don’t over-optimize UI at this stage)*

---

### 🔹 Database Design

Two main tables:

- **Tasks**: `id, title, type, level, isUnlocked, time, isCompleted`.
- **Relapses**: `id, timestamp, note, severity`.

---

### 🔹 User Flow (Progressive MVP)

1. **Day 1–7:** App shows only 2 tasks (short adhkar + shahada before sleep). Overlay asks only a tiny action.
2. **Day 8–21:** Unlocks full adhkar + 1 page Qur’an. Overlay asks for short dhikr typing.
3. **After 1 month:** Unlocks full routine (adhkar + Qur’an pages + sleep checklist). Overlay becomes stricter (timer/dhikr).

---

# 📌 Step-by-Step Roadmap (Dev Objectives)

### **Week 1 — Foundations**

- Setup Flutter project + architecture (core, features).
- Implement DB schema (tasks + relapses).
- Build basic “Today’s Tasks” screen.
- Add ability to mark tasks complete.

### **Week 2 — Overlay System**

- Implement overlay UI (fullscreen).
- Integrate with native service for Android (SYSTEM_ALERT_WINDOW).
- Add enforcement logic (block back button, require dhikr/timer).
- Trigger overlay at task times.

### **Week 3 — Floating Widget + Relapse Logger**

- Build native floating bubble service.
- Link bubble to quick “Before Sleep” flow.
- Add relapse logger screen + history list.

### **Week 4 — Progressive Unlock + Polish**

- Implement task unlocking system (levels).
- Connect overlays to task difficulty level.
- Test flows:
    - Day 1 micro tasks.
    - Day 7 unlock longer tasks.
    - Day 30 unlock full routine.
- Fix usability issues & prepare APK.

---

# ✅ Success Criteria (End of MVP)

By the end of Phase 1, you should have:

- A working Flutter app that:
    - Shows daily tasks & tracks completion.
    - Forces you via overlays at the right time.
    - Lets you log relapses.
    - Unlocks tasks progressively (doesn’t overwhelm you).
- Tested for at least **1–2 weeks personally** → you can see if it truly enforces habits.

---

👉 So in simple terms:

**Objective = build the strictest *minimum* guardian** (overlay + tasks + relapse log), but make it **progressive** so it doesn’t crush you at the start.