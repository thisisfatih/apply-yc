---
name: founder-profile
description: Capture a structured founder and company profile to use when drafting or auto-filling a YC application. Trigger when a founder wants to fill out the YC form, when they say "let's start my application", or when form-fill needs a profile and none exists yet. Asks questions in YC form order and outputs a machine-readable profile block.
---

# Founder Profile Intake

Build a complete profile for auto-filling the YC application. Ask questions in the order the YC form uses them. After each section, output a structured block so the founder can review before moving on.

## How to run this

Ask questions one section at a time. Don't dump all questions at once. After each section, output the profile block for that section and ask: "Does this look right? Say yes to continue or correct anything."

When all sections are done, output the full `FOUNDER_PROFILE` block — the form-fill skill reads this directly.

---

## Section A: Company

Ask:
1. Company name
2. Company URL (if any — "leave blank if none, better than a placeholder site")
3. Demo URL (Loom, YouTube, live link — "strongly recommend having one")
4. 50-character pitch (help them draft if they don't have one — see yc-application skill)
5. What is your company going to make? (2-4 sentences)
6. Location now / location after YC
7. Wildcard hack question: most successfully hacked a non-computer system
8. Most impressive thing other than this startup (per founder)
9. Founder video URL (unlisted YouTube, 1 minute)
10. Who writes code? Was any done by a non-founder?
11. Number of founders

Output after this section:
```
## Company Profile
name: [value]
url: [value or NONE]
demo_url: [value or NONE]
pitch_50: [value]
description: [value]
location_now: [value]
location_post_yc: [value]
hack_answer: [value]
impressive_thing: [value]
video_url: [value or NONE]
who_codes: [value]
founder_count: [value]
```

---

## Section B: Founders

For each founder, ask:
1. Full name
2. Age
3. Education (school, year, degree, subject — mark unfinished)
4. Email
5. Personal URL / GitHub / LinkedIn
6. Prior employers and titles
7. Their most impressive thing (if not already captured above)

Also ask:
- Interesting project two or more founders built together (include URL if any)
- How long have founders known each other / how did you meet?
- Have any founders not met in person?
- Will all founders work exclusively on this for the next year?
- Other commitments during the batch?
- Future commitments (school, grad school, etc.)?

Output after this section:
```
## Founders
[[for each founder]]
- name: [value]
  age: [value]
  education: [value]
  email: [value]
  urls: [value]
  employers: [value]
  impressive: [value]

shared_project: [value]
how_met: [value]
met_in_person: [yes/no, detail if no]
exclusive_commitment: [yes/no, detail]
other_commitments: [value or NONE]
future_commitments: [value or NONE]
```

---

## Section C: Progress

Ask:
1. How long has each founder been working on this? Full-time or part-time?
2. How far along are you? (live / beta / building / idea)
3. Do you have users? How many active?
4. How many paying customers? Who pays the most?
5. Revenue for each of the last 6 months (USD, per month — not cumulative, not GMV)
6. Anything else about revenue or growth rate?
7. Applying with same idea as a previous batch? Did you pivot?
8. Other accelerators or incubators?

Output after this section:
```
## Progress
time_working: [value]
stage: [live/beta/building/idea]
active_users: [number or 0]
paying_customers: [number or 0]
top_customer: [value or NONE]
revenue_6mo: [month-6, month-5, month-4, month-3, month-2, month-1]
revenue_notes: [value or NONE]
prior_yc_batch: [value or N/A]
other_accelerators: [value or NONE]
```

---

## Section D: Idea

Ask:
1. Why did you pick this idea? Domain expertise? How do you know people need it?
2. What's new about what you're making? What substitutes do people use now?
3. Who are your competitors? Who do you fear most?
4. What do you understand about your business that others don't?
5. How do you or will you make money? How much could you make?
6. How will you get users? Any chicken-and-egg problems?
7. Which category best applies? (dropdown — pick closest)

Output after this section:
```
## Idea
why_this: [value]
whats_new: [value]
substitutes: [value]
competitors: [value]
feared_most: [value]
unique_insight: [value]
business_model: [value]
revenue_potential: [value]
user_acquisition: [value]
category: [value]
```

---

## Section E: Equity

Ask:
1. Have you formed a legal entity? Which type, where?
2. Equity breakdown — founders, employees, other stockholders (percentages + titles)
3. Have you taken any investment? How much, from whom, at what terms?
4. Monthly spend? Cash in bank? Runway in months?

Output after this section:
```
## Equity
legal_entity: [yes/no, type, jurisdiction]
equity_table: [name: X%, title; ...]
investment: [value or NONE]
monthly_spend: [$ value]
cash: [$ value]
runway_months: [number]
```

---

## Section F: Others

Ask:
1. Other ideas you seriously considered (2-3, 1-2 sentences each)
2. Something surprising or amusing you've discovered (need not relate to project)
3. What convinced you to apply to YC? Did anyone encourage you?
4. Referral code (if any)

Output after this section:
```
## Others
other_ideas: [value]
amusing: [value]
why_yc: [value]
referral: [value or NONE]
```

---

## Final output

After all sections confirmed, output the complete profile:

```
FOUNDER_PROFILE
===============
[all section blocks combined]
===============
Profile complete. Ready for form-fill skill.
```

## Notes

- If a founder doesn't have an answer for a field, use `TBD` not a guess
- For revenue fields: 0 is correct if there's no revenue — don't skip
- Don't help draft answers in this skill — use the yc-application skill for that. This skill is intake only.
- If the founder says "help me write this" for any answer, pause intake and invoke the yc-application skill, then return here when they have the answer
