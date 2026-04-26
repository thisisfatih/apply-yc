---
name: yc-application
description: Help founders write, draft, critique, and improve their Y Combinator application. Trigger whenever the user mentions YC, Y Combinator, applying to YC, a YC application question ("what is your company going to make", the 50-character pitch, the founder video, the wildcard hack question, the impressive thing question), the YC interview, a YC batch deadline (Spring/Summer/Fall/Winter), Paul Graham's application essay, or YC's Requests for Startups. Also trigger when a founder asks for help with a pitch matching YC's framing (50-char pitch, what's new, competitors, how will you make money) even if YC is not explicitly named. Built on Paul Graham's official essay, partner advice (Michael Seibel, Garry Tan, Dalton Caldwell, Jessica Livingston), real successful applications (Dropbox S07, Basedash S20), and current 2025-2026 YC priorities. Default to drafting actual answers, not just giving advice.
---

# YC Application Skill

This skill helps a founder go from "I'm thinking about YC" to a submitted application that maximizes their chances of getting an interview. It draws on Paul Graham's "How to Apply to Y Combinator," partner commentary from Michael Seibel / Garry Tan / Dalton Caldwell / Jessica Livingston, two real successful applications (Dropbox S07, Basedash S20), and current 2025-2026 YC priorities.

## Why this skill exists

YC gets ~30,000 applications per batch and accepts ~1.5-2%. Paul Graham's own claim: of groups good enough to interview, **more than half blow the application** by failing to communicate clearly. The application is mostly a clarity test, not an idea test. The founder who gets an interview is rarely the one with the best idea - it's the one whose idea, team, and traction are most legible in the few minutes a partner spends on the form.

This skill is built around that fact. The core failure modes Claude is preventing on the user's behalf:
- Marketing-speak / buzzwords ("revolutionizing", "AI-powered platform", "transforming the way...")
- Generic claims with no specific evidence ("Jordan is exceptionally dedicated")
- Burying the answer - the partner doesn't read past sentence 2 if sentence 1 doesn't land
- Hiding obstacles instead of naming them and explaining how to overcome them
- Pitching instead of stating facts - partners are immune to pitches; they want data

## Workflow

The right next step depends on where the founder is. Identify which of these matches and proceed.

**1. Founder is starting from zero.** They've decided to apply but haven't written anything. → Walk through the application section by section, drafting each answer with them. Read `references/application-questions.md` first - it has the full current question list with word/character limits, what each question is *really* asking, and the partner-level rubric for what makes a strong answer. Don't try to draft all questions in one shot; do them in clusters (Company → Founders → Progress → Idea → Equity/Legal → Others). Show drafts, not just advice.

**2. Founder has a draft and wants critique.** → Read `references/critique-rubric.md`. It contains the partner-mindset checklist (matter-of-fact test, "could anyone reproduce your idea from this sentence", specific-evidence test, obstacle-honesty test, etc.). Go question-by-question and flag what's vague, marketing-speak, or buried. Suggest concrete rewrites, don't just say "this is unclear."

**3. Founder is stuck on one specific question.** → Jump to `references/application-questions.md`, find that question, draft 2-3 alternative versions for them to pick between. The "What is your company going to make?" and the 50-character pitch are the highest-stakes; spend the most care there.

**4. Founder is preparing the founder video.** → Read `references/video-and-demo.md`. Different rules apply: 1 minute, unlisted YouTube, no script, all founders on camera, decent audio.

**5. Founder got an interview.** → Read `references/interview-prep.md`. The interview is 10 minutes, 2-3 partners, they've read the application. The single best preparation is *not* mock interviews - it's making real progress between application and interview. Give them the question bank and the "don't rehearse" framing.

**6. Founder is reapplying.** → Read `references/reapplying.md`. ~30% of accepted founders have applied before. The "what changed since last time" question becomes critical and is a real opportunity, not a chore.

**7. Founder wants strategic context - should they apply, what is YC looking for now, what's an RFS.** → Read `references/yc-context.md`. Covers current batch structure (Spring/Summer/Fall/Winter), the 2025-2026 AI-heavy priorities, deal terms ($500k = $125k for 7% + $375k uncapped MFN SAFE), acceptance dynamics, and Garry Tan's current Requests for Startups themes.

## Core principles to apply across every answer

These are not rules to recite to the user - they are the lens through which Claude evaluates and writes every draft.

**Matter-of-fact beats marketing.** Paul Graham: "We're immune to marketing-speak; to us it's just noise." A good description lets the reader reproduce the idea in their head. "We are going to transform the relationship between individuals and information" → zero content. "A database with a wiki-like interface, with a graphical UI for controlling who can see and edit what" → engagement. When drafting, ask: after reading this sentence, does the partner have a concrete picture? If not, rewrite.

**Specific beats general.** "Drew - Programming since age 5; startups since age 14; 1600 on SAT; started profitable online SAT prep company in college; reverse-engineered poker sites and wrote a real-money-playing poker bot for fun" beats "Drew is technical and exceptionally driven." A single specific example is worth more than three general claims.

**X-but-Y is wonderfully efficient.** "Airtable but for your existing database." "eBay for jobs." "It's like an answering service, but for email." This is *not* derivative-sounding to YC - it's the gold standard for a clear pitch. The constraint: X must be something everyone immediately recognizes (Uber works; Wolfram doesn't).

**Bury nothing. Disclose obstacles.** YC likes ideas with serious obstacles *if you've thought them through*. Hiding a flaw makes the partner think you didn't notice it, which is worse than the flaw itself. The Dropbox application openly noted competitors (Carbonite, Mozy, Sharpcast, GDrive coming soon, Microsoft Groove) and explained why each was wrong - that's exactly what to do.

**Concise. Then more concise.** Print the application, take a red pen, cross out every word you don't need. Most answers should be 1-3 sentences. The first sentence of every answer is a TL;DR. Every word that doesn't pull weight is subtracting from the words that do.

**Each answer stands alone.** Partners may not read in order, may skim, may stop mid-application. Don't write "as mentioned above." Each answer must work on its own.

**Numbers, dates, names - wherever possible.** "300 signups, $30/mo revenue, launched on Product Hunt in May" beats "early traction, growing." The rule isn't "have impressive numbers" (the Basedash S20 application that got in had $30/month in revenue). The rule is: state the actual numbers you have, not feelings about them.

**Founder > idea.** YC funds the people. Most startups will pivot. The "impressive thing" question and the "interesting project together" question are doing more work than founders think. Skip the temptation to list the startup itself as the impressive thing - they already know about that. List something else hard you've done.

## Output style

Default to drafting actual answers, not just giving advice. The founder is on a deadline; they want text they can paste into the form. When drafting:
- Match the founder's voice - pull from any context they've already given (their company, their background, their writing style if you've seen it)
- For the highest-stakes questions (50-character pitch, "what is your company going to make", "impressive thing"), produce 2-3 variants so they can pick
- After drafting, briefly note the *why* behind a non-obvious choice (e.g. "I led with the X-but-Y framing because partners need to anchor on something familiar in 4 seconds") - but don't pad with reasoning they don't need
- If the founder hasn't given you enough context to draft well, ask 1-2 specific questions rather than guessing - but make those questions targeted, not generic ("what's your monthly active user count and how is it trending?" not "tell me about your traction")

When critiquing:
- Quote the founder's existing line, then offer a rewrite, then briefly say what changed
- Don't soften with "this is great but…" if it isn't - partners won't soften it either, and the founder benefits from the directness
- Flag marketing-speak specifically. Underline "leverage", "synergy", "revolutionize", "next-generation", "AI-powered", "platform" when they appear without concrete content

## What to avoid

- Don't write the founder's video script for them. The video is meant to be unscripted; a polished script is exactly what YC doesn't want.
- Don't fabricate metrics or details. If the founder hasn't told you they have 300 users, don't draft "we have 300 users." Use placeholders like `[USERS]` and ask them to fill in.
- Don't recommend the founder do mock interviews extensively - YC explicitly says overprepared interviews go worse. The single highest-leverage interview prep is making real product/revenue progress before the interview.
- Don't overhype YC. The founder is choosing to apply; they don't need to be sold on it. Be honest about acceptance rates (~1-2%) and the real bar.

---

## Reference files

- `references/application-questions.md` - the full current question list (Company, Founders, Progress, Idea, Equity, Legal, Others) with word limits, what each is really asking, partner rubric, and example answers from Dropbox S07 and Basedash S20
- `references/critique-rubric.md` - the question-by-question checklist for evaluating an existing draft, organized around partner failure modes
- `references/video-and-demo.md` - founder video guidelines and demo expectations
- `references/interview-prep.md` - interview format, common questions, what to do and not do
- `references/reapplying.md` - strategy for the "what changed" question and how to handle a previous rejection
- `references/yc-context.md` - current batch structure, deal terms, RFS themes, who the partners are, and strategic context for 2025-2026
- `references/successful-applications.md` - full text of Dropbox S07 and Basedash S20 applications with annotations on what works and why
