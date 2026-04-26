---
name: form-fill
description: Auto-fill the YC application form using Playwright. Requires a completed FOUNDER_PROFILE from the founder-profile skill. Trigger when a founder says "fill out the form", "fill in my YC application", "let's submit", or "open the YC form". Claude fills every field, founder approves each section, founder clicks all submit/save/advance buttons.
---

# YC Application Form Filler

Fill the YC application form field by field. Claude types everything. The founder reviews and approves each section. The founder clicks every button that advances or submits - Claude never clicks those.

## Prerequisites

Before starting:
1. A completed `FOUNDER_PROFILE` block from the founder-profile skill. If none exists, run that skill first.
2. The founder must be logged into apply.ycombinator.com in their browser.
3. Playwright must be connected.

If any prerequisite is missing, stop and say what's needed before continuing.

---

## Rules (never break these)

- **Claude fills fields. Founder clicks buttons.** No exceptions.
- Never click: Submit, Save changes, Save & return to application, or any button that changes form state.
- After filling each section, take a screenshot and show it. Ask: "Does this look right? Tell me anything to change, or click [button name] to continue."
- If a field has a character limit and the drafted answer exceeds it, truncate and flag: "I truncated this to fit the [N]-char limit. Review the cut before continuing."
- Never fabricate a value. If the profile has `TBD` for a field, leave the field blank and flag it.
- If the founder corrects an answer mid-fill, update the profile block for that field and refill.

---

## Form structure (Summer 2026)

The YC application has two layers:
1. **Main application** at `apply.ycombinator.com/apps/[id]/edit` - contains Founders, Founder Video, Company, Progress, Idea, Equity, Curious, Batch Preference
2. **Founder Profile sub-pages** at `apply.ycombinator.com/bio/[id]/edit` - one per founder, contains Basics, Role & Responsibilities, Background, Social Media, Accomplishments

Fill founder profiles FIRST, then return to fill the main application.

---

## Startup

```
1. Use browser_navigate to go to the application URL
2. Use browser_snapshot to read the current page state
3. Confirm the founder is logged in and on the application form
4. Tell the founder: "I can see your application. I'll fill each section and
   show you a screenshot before you advance. You click all the buttons -
   I'll tell you which one and when. Starting with your founder profile(s)."
```

---

## Founder Profile(s) - fill first, one per founder

Navigate to each founder's profile via the "Edit profile" link on the Founders section.

### Basics
- Name
- Email
- Age (dropdown)
- Phone number (country selector + number)
- Gender
- City (location autocomplete - type city name, select from dropdown)

### Role & Responsibilities
- Title / main responsibility (CEO, CTO, etc.)
- Equity percent
- Technical founder: Yes/No
- Currently in school: Yes/No
- Exclusive commitment to this project if accepted: Yes/No

### Background
- LinkedIn URL
- Education: add entries (school name, degree, dates)
- Work History: add entries (company, role, dates, description)

### Social Media
- Personal website URL
- GitHub URL
- Twitter URL

### Accomplishments
These are the highest-stakes fields in the founder profile. Fill carefully.

- **"Please tell us about a time you most successfully hacked some (non-computer) system to your advantage."** - the wildcard/hacker question. Specific, surprising, shows creative problem-solving outside software.
- **"Please tell us in one or two sentences about the most impressive thing other than this startup that you have built or achieved."** - PG calls this the most important question. Hard achievements with real results. Not the current startup.
- **"Tell us about things you've built before."** - apps, sites, OSS. Include URLs.
- **"List any competitions/awards you have won, or papers you've published."** - include patents, grants, press.

After filling all profile fields:
- Take screenshot
- Output: "Founder profile filled. Review above. Click 'Save & return to application' to continue."

Repeat for each additional co-founder.

---

## Section: Founders (main form)

After returning to main application:

- **"Who writes code, or does other technical work on your product? Was any of it done by a non-founder? Please explain."** - be specific: name the founder(s), what they built, any contractor work
- **"Are you looking for a cofounder?"** - fill only if actively looking; leave blank if team is complete
- **"How long have the founders known one another and how did you meet? Have any of the founders not met in person?"** - appears when a second founder is on the application (confirmed). Single textbox covering all three sub-questions.
- **"Please tell us about an interesting project or thing you have built or achieved together."** - appears after co-founder accepts invite and completes profile. Include URLs.

After filling:
- Take screenshot
- Output: "Founders section filled. Review above. Scroll down to Founder Video."

---

## Section: Founder Video

- File upload - founder must upload the video file themselves (Claude cannot upload files)
- Flag: "This requires a file upload - I can't do this part. Upload your 1-minute video here. Max 100MB. All founders should appear on camera."
- After founder uploads: "Founder video uploaded. Continuing to Company section."

---

## Section: Company

Fill in order:
1. Company name
2. "Describe what your company does in 50 characters or less." - count chars, flag if over
3. Company URL (skip if none)
4. Demo: file upload - flag same as video: "Upload your demo here if you have one. Max 3 min / 100MB."
5. "Please provide a link to the product, if any." - URL
6. Login credentials for product link (skip if not needed)
7. "What is your company going to make? Please describe your product and what it does or will do."
8. "Where do you live now, and where would the company be based after YC?" - format: "City A, Country A / City B, Country B"
9. "Explain your decision regarding location."

After filling:
- Take screenshot
- Output: "Company section filled. 50-char pitch: '[value]' ([N] chars). Review above."

---

## Section: Progress

Fill in order:
1. "How far along are you?" - current stage, what's shipped, user/revenue state
2. "How long have each of you been working on this? How much of that has been full-time? Please explain."
3. **"What tech stack are you using, or planning to use, to build this product? Include AI models and AI coding tools you use."** - list specific stack; explicitly mention Claude Code, Cursor, or other AI coding tools if used
4. **"Optional: attach a coding agent session you're particularly proud of."** - .md or .txt file, 25MB max. Flag: "YC is asking for a Claude Code or Cursor session export. If you have a session transcript showing good AI-assisted work, upload it here. Use /export in Claude Code to get a transcript."
5. "Are people using your product?" - Yes/No radio
   - If Yes: reveals "How many active users or customers do you have? How many are paying? Who is paying you the most, and how much do they pay you?" - fill with specific numbers from profile
6. "Do you have revenue?" - Yes/No radio
   - If Yes: reveals three fields:
     a. 6-month revenue table (auto-labeled last 6 months). Fill one USD$ cell at a time, oldest first. Enter 0 for zero-revenue months. Confirm each cell before moving to next.
     b. "Where does your revenue come from?" - fill if multiple revenue sources; skip if single
     c. "Anything else regarding revenue or growth rate?" - fill if context matters (e.g. one-time grant, throttled growth, pilots closing soon)
7. "If you are applying with the same idea as a previous batch, did anything change? If you applied with a different idea, why did you pivot and what did you learn from the last idea?" - fill only if reapplying; leave blank if first application
8. "If you have already participated or committed to participate in an incubator, 'accelerator' or 'pre-accelerator' program, please tell us about it." - fill if applicable

After filling:
- Take screenshot
- Output: "Progress section filled. Review above."

---

## Section: Idea

Fill in order:
1. "Why did you pick this idea to work on? Do you have domain expertise in this area? How do you know people need what you're making?"
2. "Who are your competitors? What do you understand about your business that they don't?"
3. "How do or will you make money? How much could you make?"
4. Category dropdown - select the closest match
5. "If you had any other ideas you considered applying with, please list them." - list 1-3 alternatives; YC says they sometimes fund founders on ideas listed here, not the main one

After filling:
- Take screenshot
- Output: "Idea section filled. Review above."

---

## Section: Equity

Fill:
1. "Have you formed ANY legal entity yet?" - Yes/No
   - If Yes: reveals two fields:
     a. "Please list all legal entities..." - free text. List each with type and country/state. E.g. "Delaware C Corp (incorporated Jan 2025), German GmbH (Mar 2025 for EU ops)."
     b. "Please describe equity ownership in percentages among founders, employees and stockholders." - free text, not a table. Format: "[Name] ([Title]) X%, [Name] ([Title]) Y%, option pool Z%." Pull founder equity from each founder's profile.
2. "Have you taken any investment yet?" - Yes/No
   - If Yes: reveals five fields:
     a. "List any investments received" - name, amount, valuation cap, type (convertible note / SAFE / stock), date. One investment per line.
     b. "How much raised total in USD?" - number only
     c. "How much money in the bank now?" - number only
     d. "How much do you spend per month?" - number only
     e. "How long is your runway?" - e.g. "5 months"
3. "Are you currently fundraising?" - Yes/No

Equity percent per founder is captured in each founder's profile (Role & Responsibilities) and referenced here in the free-text equity description.

After filling:
- Take screenshot
- If equity split looks unusual (e.g. >70/30 between two founders): flag it. "Your equity split is [X/Y]. YC prefers roughly equal splits - worth reviewing before submitting."
- Output: "Equity section filled. Review above."

---

## Section: Curious

Fill:
1. "What convinced you to apply to Y Combinator? Did someone encourage you to apply? Have you been to any YC events?"
2. "How did you hear about Y Combinator?"

After filling:
- Take screenshot
- Output: "Curious section filled. Review above."

---

## Section: Batch Preference

Select: Summer 2026 OR A batch after Summer 2026

After filling:
- Output: "Batch preference set. All sections filled."

---

## Pre-submit review

Before the founder submits:

1. Take screenshot of the top of the application
2. Run final check:
   - Any fields left blank that shouldn't be? Flag them.
   - Any `TBD` values that were never filled? Flag them.
   - 50-char pitch within limit?
   - Founder video uploaded?
   - Founder profile(s) complete?

3. Output:
```
Pre-submit checklist:
[ ] 50-char pitch: [value] ([N] chars)
[ ] Founder video: [uploaded / MISSING]
[ ] Founder profiles complete: [yes / MISSING for whom]
[ ] Coding agent session: [uploaded / skipped]
[ ] Reapply question: [answered / N/A]
[ ] TBD fields remaining: [list or NONE]

If everything looks correct, click 'Submit application'.
I will not click Submit - that's yours.
```

---

## Error handling

- **Field not found:** Use browser_snapshot to re-read the page, try alternate selectors. If still not found, flag: "I can't find the [field name] field. Please click into it and tell me what you see."
- **Character limit exceeded:** Truncate to limit, flag exact cut point, ask founder to review.
- **Login session expired:** Tell founder to re-login and refresh - then resume from current section.
- **Page changed unexpectedly:** Take screenshot, describe what changed, ask founder how to proceed.
- **Anti-bot block:** Stop immediately. Tell founder: "The page may be blocking automated input. Try filling [field] manually or reload the page."
- **File upload fields:** Claude cannot trigger file uploads. Always hand these to the founder with exact instructions on what to upload and where.
