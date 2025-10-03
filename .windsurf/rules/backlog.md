---
trigger: always_on
description: 
globs: 
---

📌 Backlog — Digital Guardian App

🎯 Phase 1 — MVP (Overlay + Widget + Logger)
Epic 1: Daily Task System
US1.1: كـمستخدم، أريد إنشاء جدول يومي ثابت (أذكار الصباح، المساء، قبل النوم) عشان ما أنساش.
Task 1.1.1: DB Schema للمهام (id, title, time, type, isCompleted).
Task 1.1.2: شاشة "Today’s Tasks" (قائمة المهام).
Task 1.1.3: وظيفة toggle مهمة مكتملة.
Epic 2: Mandatory Overlay
US2.1: كـمستخدم، أريد شاشة Fullscreen تظهر عند وقت المهمة ولا تُغلق إلا بعد تنفيذ شرط.
Task 2.1.1: Build Overlay UI في Flutter (Modal + WillPopScope block).
Task 2.1.2: Native Service للـOverlay (Android SYSTEM_ALERT_WINDOW).
Task 2.1.3: زر إجباري (اكتب ذكر/عدّاد 60 ثانية).
Epic 3: Floating Widget
US3.1: كـمستخدم، أريد زر عائم دائم عشان أفتح اختصارات (قبل النوم).
Task 3.1.1: Native overlay bubble (like Messenger head).
Task 3.1.2: Integration مع Flutter عبر Platform Channel.
Task 3.1.3: Menu يفتح قائمة اختصارات (قبل النوم، ورد سريع).
Epic 4: Relapse Logger
US4.1: كـمستخدم، أريد تسجيل وقت الانتكاسة يدويًا.
Task 4.1.1: DB Table relapses (id, timestamp, note, severity).
Task 4.1.2: شاشة “Log Relapse” (زر + ملاحظات).
Task 4.1.3: قائمة عرض تاريخ الانتكاسات.

⚡ Phase 2 — Smart Guardian (Usage + Risk Detection)
Epic 5: App Usage Tracking
US5.1: كـمستخدم، أريد أن يعرف التطبيق وقت قضائي على YouTube/FB/TikTok.
Task 5.1.1: Integrate UsageStatsManager عبر Platform Channel.
Task 5.1.2: تخزين بيانات الاستخدام (app, duration, timestamp).
Task 5.1.3: تصنيف التطبيقات (VIDEO, SOCIAL, OTHER).
Epic 6: Risk Detection
US6.1: كـمستخدم، أريد أن يتنبأ التطبيق بفترات الخطر (وقت متأخر + استخدام زائد).
Task 6.1.1: Risk calculation engine (weights).
Task 6.1.2: Trigger Overlay لما الـRisk ≥ threshold.
Task 6.1.3: Configurable thresholds (soft/normal/hard).
Epic 7: Relapse Analysis
US7.1: كـمستخدم، بعد تسجيل الانتكاسة أريد رؤية ما حدث قبلها (apps, unlocks, missed tasks).
Task 7.1.1: Window extraction (last 90 mins events).
Task 7.1.2: Timeline visualization.
Task 7.1.3: Trigger ranking (top 3).
Epic 8: Dashboard
US8.1: كـمستخدم، أريد إحصائيات عن التزامي (مهام مكتملة، عدد انتكاسات، streaks).
Task 8.1.1: Compute streaks daily.
Task 8.1.2: Simple graphs (charts_flutter / fl_chart).
Task 8.1.3: Weekly summary screen.

🤖 Phase 3 — Intelligent Coach (Adaptive + AI)
Epic 9: Adaptive Risk Engine
US9.1: كـمستخدم، أريد أن يتعلم التطبيق من عادتي (مثلاً أنام متأخر).
Task 9.1.1: Store risk history.
Task 9.1.2: Adjust thresholds dynamically.
Task 9.1.3: Personalized high-risk windows.
Epic 10: Dynamic Tasks
US10.1: كـمستخدم، أريد أن تُفعل مهام النوم لما أضغط "هنام" مش بوقت ثابت.
Task 10.1.1: Event-based tasks (before sleep trigger).
Task 10.1.2: Dynamic notifications.
Epic 11: AI Integration
US11.1: كـمستخدم، أريد تحليل ذكي لأسباب الانتكاسة واقتراح علاج بلغة مقنعة.
Task 11.1.1: Summarize relapse context → JSON.
Task 11.1.2: Send to LLM API (opt-in).
Task 11.1.3: Display “Guardian Advice” (Triggers + 3-step plan).
Epic 12: App Lock
US12.1: كـمستخدم، لما أضعف أريد التطبيق يقفل YouTube/FB 20 دقيقة.
Task 12.1.1: AccessibilityService → detect app launches.
Task 12.1.2: Overlay block screen.
Task 12.1.3: Configurable lock duration.
Epic 13: Streaks & Rewards
US13.1: كـمستخدم، أريد مكافآت بسيطة لما ألتزم 7 أيام.
Task 13.1.1: Detect streak milestones.
Task 13.1.2: Motivational message (Hadith/Quran).
Task 13.1.3: Optional confetti animation 🎉.

🌍 Phase 4 — Community & Scale
Epic 14: Cloud & Sync
US14.1: كـمستخدم، أريد نسخ بياناتي احتياطيًا في السحابة.
US14.2: كـمستخدم، أريد استخدام التطبيق عبر أجهزة متعددة.
Epic 15: Guardian Modes
US15.1: كـمستخدم، أريد اختيار مستوى صرامة (Soft, Normal, Hardcore).
Epic 16: Accountability Partner
US16.1: كـمستخدم، أريد مشاركة تقاريري مع صديق/شيخ.

🎯 Prioritization Recap
Phase 1: Overlay + Widget + Relapse Log + Daily Tasks.
Phase 2: Usage Tracking + Risk + Dashboard.
Phase 3: Adaptive Risk + AI Advice + App Lock + Streak Rewards.
Phase 4: Cloud + Community features.

