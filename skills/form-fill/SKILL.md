---
name: form-fill
description: Auto-fill the YC application form using Playwright. Requires a completed FOUNDER_PROFILE from the founder-profile skill. Trigger when a founder says "fill out the form", "fill in my YC application", "let's submit", or "open the YC form". Claude fills every field, founder approves each section, founder clicks all submit/save/advance buttons.
---

# YC Application Form Filler

Fill the YC application form field by field. Claude types everything. The founder reviews and approves each section. The founder clicks every button that advances or submits — Claude never clicks those.

## Prerequisites

Before starting:
1. A completed `FOUNDER_PROFILE` block from the founder-profile skill. If none exists, run that skill first.
2. The founder must be logged into ycombinator.com/apply in their browser.
3. Playwright must be connected.

If any prerequisite is missing, stop and say what's needed before continuing.

---

## Rules (never break these)

- **Claude fills fields. Founder clicks buttons.** No exceptions.
- Never click: Submit, Save & Continue, Next, Confirm, or any button that changes form state or advances sections.
- After filling each section, take a screenshot and show it. Ask: "Does this look right? Tell me anything to change, or click [button name] to continue."
- If a field has a character limit and the drafted answer exceeds it, truncate and flag: "I truncated this to fit the [N]-char limit. Review the cut before continuing."
- Never fabricate a value. If the profile has `TBD` for a field, leave the field blank and flag it.
- If the founder corrects an answer mid-fill, update the profile block for that field and refill.

---

## Startup

```
1. Use browser_navigate to go to https://www.ycombinator.com/apply
2. Use browser_snapshot to read the current page state
3. Confirm the founder is logged in and on the application form
4. Identify which section is currently active
5. Tell the founder: "I can see your application form. I'll fill each section and 
   show you a screenshot before you advance. You click all the buttons — I'll tell 
   you which one to click and when."
```

---

## Section A: Company

Fill in order:
1. Company name field
2. Company URL (skip if NONE in profile)
3. Demo URL (skip if NONE; if missing, flag: "No demo URL in your profile — strongly recommend adding one before submitting")
4. 50-character pitch field — fill, then read back the char count from the field
5. "What is your company going to make?" — fill with description from profile
6. Location fields
7. Wildcard hack question
8. Most impressive thing
9. Founder video URL
10. Who writes code field
11. Number of founders

After filling all Company fields:
- Take screenshot
- Output: "Section A filled. Review above. When ready, click [exact button label as shown on page] to save/advance."

---

## Section B: Founders

For each founder in profile:
- Fill name, age, education, email, URLs, prior employers

Fill shared fields:
- Interesting project together
- How long known / how met
- Met in person
- Exclusive commitment
- Other commitments
- Future commitments

After filling all Founder fields:
- Take screenshot
- Output: "Section B filled. Review above. When ready, click [button] to advance."

---

## Section C: Progress

Fill:
- Time working / full-time or part-time
- Stage (select dropdown value closest to profile stage)
- User count fields
- Paying customer fields
- Revenue table — 6 monthly fields in order (oldest first). Fill 0 for months with no revenue.
- Revenue notes
- Prior YC batch field (N/A if first time)
- Other accelerators

Revenue table is the trickiest field — fill one cell at a time, confirm each before moving to next.

After filling Progress:
- Take screenshot
- Output: "Section C filled. Revenue table: [list the 6 values you entered]. Review above. Click [button] to advance."

---

## Section D: Idea

Fill:
- Why this idea / domain expertise
- What's new / substitutes
- Competitors / who feared most
- Unique insight
- Business model / revenue potential
- User acquisition
- Category dropdown — select closest match

After filling Idea:
- Take screenshot
- Output: "Section D filled. Review above. Click [button] to advance."

---

## Section E: Equity

Fill:
- Legal entity fields
- Equity table (per-founder rows)
- Investment fields (skip if NONE)
- Monthly spend, cash, runway

Equity table may have multiple rows — fill one row per founder.

After filling Equity:
- Take screenshot
- Flag any equity split that looks unusual (e.g. >70/30 split between two founders): "Your equity split is [X/Y]. YC prefers roughly equal splits — worth reviewing before submitting."
- Output: "Section E filled. Review above. Click [button] to advance."

---

## Section F: Others

Fill:
- Other ideas
- Amusing discovery
- Why YC
- Referral code (skip if NONE)

After filling Others:
- Take screenshot
- Output: "Section F filled. Review above."

---

## Pre-submit review

Before the founder submits:

1. Take a full-page screenshot of the completed application if possible
2. Run a final check:
   - Any fields left blank that shouldn't be? Flag them.
   - Any `TBD` values that were never filled? Flag them.
   - 50-char pitch within limit?
   - Revenue table populated (even with zeros)?
   - Video URL present?

3. Output a summary:
```
Pre-submit checklist:
[ ] 50-char pitch: [value] ([N] chars)
[ ] Demo URL: [present/MISSING]
[ ] Founder video: [present/MISSING]
[ ] Revenue table: [list 6 values]
[ ] TBD fields remaining: [list or NONE]

If everything looks correct, click Submit on the form.
I will not click Submit — that's yours.
```

---

## Error handling

- **Field not found:** Use browser_snapshot to re-read the page, try alternate selectors. If still not found, flag to founder: "I can't find the [field name] field. Please click into it and tell me what you see."
- **Character limit exceeded:** Truncate to limit, flag exact cut point, ask founder to review.
- **Login session expired:** Tell founder to re-login and refresh — then resume from current section.
- **Page changed unexpectedly:** Take screenshot, describe what changed, ask founder how to proceed.
- **Anti-bot block:** Stop immediately. Tell founder: "The page may be blocking automated input. Try filling [field] manually or reload the page."
