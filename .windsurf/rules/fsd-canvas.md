---
trigger: always_on
description: 
globs: 
---

FSD Canvas — Digital Guardian App
1. Problem
Falling into repeated sins due to weak moments (late night, boredom, prolonged social/video use).
Forgetting daily spiritual tasks (azkar, Quran, prayer prep, sleep routine).
Lack of accountability or enforced discipline (normal reminders are easy to dismiss).
No real-time intervention when triggers occur.

2. Target Users
Primary: Muslims wanting to enforce spiritual discipline, avoid specific sins, and stick to daily worship.
Secondary: General users struggling with procrastination/addiction (e.g. social media, pornography, binge content).

3. Unique Value Proposition
Not just a reminder app → a proactive guardian that:
Detects risky behavior (usage/time/context).
Forces intervention with mandatory overlays.
Provides spiritual + practical steps tailored to the moment.
Mix of Islamic guidance + behavioral psychology.
Can evolve into a personalized “AI guardian coach.”

4. Solution Overview
Core Features
Mandatory Overlay Tasks


Fullscreen overlay at scheduled times or when relapse risk detected.
Cannot be dismissed until action is done (typing dhikr, timer countdown, reading ayah).
Floating Widget


Quick actions (e.g. “Going to sleep” → triggers bedtime checklist: wudu, adhkar, Surah Mulk).
Relapse Tracker


User logs relapse → system analyzes last 90 minutes (app usage, unlocks, tasks missed, time).
Shows top triggers + tailored advice.
Usage Monitoring & Risk Detection


Tracks app usage (YouTube, FB, TikTok).
Detects high-risk states (late-night scrolling, boredom, missed azkar).
Proactive intervention with overlays / app lock.
Smart Task Scheduling


Daily plan (adhkar, Quran, prayers).
Dynamic reminders (before sleep, after long idle, Friday = Surah Kahf).
AI Integration (optional)


Summarizes relapse context → gives empathetic + actionable advice.
Provides motivational & spiritual reminders in natural language.
Dashboard & Analytics


Streaks of clean days.
Graph of relapse frequency vs triggers.
Progress tracking to build self-awareness.

5. Key Metrics
Daily active users (DAU).
Task completion rate (% of adhkar/Quran done).
Relapse frequency (before vs after app use).
Overlay compliance rate (forced tasks vs dismissed).
Streak length (days without relapse).
Time spent on “trigger apps” (YouTube, FB) reduced.

6. Channels
Direct APK / Play Store.
Communities/forums for self-discipline & Islamic productivity.
Word of mouth (private groups, Telegram/WhatsApp da’wah circles).

7. Cost Structure
Development: Flutter app + Android native services.
Hosting (if AI integration or cloud sync): ~$10–50/month initially.
AI API costs (per user query).
Maintenance & updates.

8. Revenue Streams (optional/future)
Free base app.
Premium (cloud backup, AI personalized coaching, advanced analytics).
Donation / waqf model (sadaqah-based funding).

9. Unfair Advantage
Spiritual + behavioral enforcement, not just habit tracking.
“Forced discipline” via overlays/app blocking (not found in Islamic apps).
Integration of relapse-context analytics + AI-driven tailored advice.

10. High-Level Architecture
Flutter Frontend: UI, overlay widget, dashboards.
Native Android Services:
UsageStatsManager → app usage tracking.
AccessibilityService → block apps.
Overlay Permissions → mandatory screens.
Local DB (SQLite/Drift) → event logs, relapse records.
Background Service → monitors risk, triggers overlays.
Optional Cloud AI → analyze relapse context, generate personalized reminders.

11. Risks & Mitigation
Bypass attempts: User may disable permissions.
Mitigation: require PIN, self-commitment contract, “emergency only” unlock.
Overly strict enforcement → user deletes app.
Mitigation: gradual mode (Soft / Normal / Hardcore).
Privacy concerns: Usage tracking is sensitive.
Mitigation: all data local, opt-in cloud features.
Battery drain: background monitoring heavy.
Mitigation: efficient batching & usage stats polling
