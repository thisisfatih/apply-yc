---
name: founder-profile
description: Capture a structured founder and company profile to use when drafting or auto-filling a YC application. Trigger when a founder wants to fill out the YC form, when they say "let's start my application", "help me apply to YC", or when form-fill needs a profile and none exists yet. Starts with strategic discovery before any form questions — identifies the founder's strongest angles for YC, then captures form fields.
---

# Founder Profile — Discovery First, Form Second

Two phases:

1. **Discovery** — conversational intake to understand the founder and company. No form structure yet. Goal: identify the 3-4 strongest things about this team for a YC partner.
2. **Field capture** — map the strongest angles into the actual form fields, section by section.

Don't skip Phase 1. A form filled without a strategy is just typed marketing-speak.

---

## Phase 1: Discovery

Ask these in conversation, not as a list. One thread at a time. Listen for what's genuinely impressive and probe it — don't move on too fast.

### Founder background

Ask:
- Walk me through your background. What have you built or done that was genuinely hard?
- What's the single most impressive thing you've done outside this startup? (Not a title — a specific hard thing with a result.)
- If there are co-founders: how did you meet, how long have you worked together, what have you built together?
- Does anyone on the team write code? Who built the product?

**What you're listening for:** Specificity. Verifiable things. Hard intellectual achievements. Prior startups (success or failure). Technical depth. Domain expertise that's non-obvious.

**Red flags to probe:** Generic credentials ("10 years in finance"), titles without achievements, no shared project between co-founders, no technical founder with no plan for one.

### The company

Ask:
- What does your company do? Explain it to me like I'm a smart person who doesn't know your industry.
- Why did you pick this specific idea? Did you have this problem yourself, or come at it another way?
- What does someone do today when they have this problem — what are the painful workarounds?
- Who are your competitors? Who do you actually fear?
- What do you know about this market that most people don't?

**What you're listening for:** Founder-market fit (personal need > domain experience > research). Clear X-but-Y description. Named real competitors. Non-obvious insight.

**Red flags to probe:** "I saw a big market opportunity" (not founder-market fit), "we have no competitors" (bad research or bad market), vague product description that doesn't reproduce in your head.

### Traction

Ask:
- Where are you right now — idea, prototype, live product, revenue?
- How many users or customers do you have? Are they paying?
- What's your monthly revenue for each of the last 6 months?
- What's the most impressive traction signal you have, however small?

**What you're listening for:** Honest numbers, even tiny ones. Specificity. Trajectory. Any signal that real people want this.

**Red flags:** "lots of interest", "growing fast", "early traction" — push until you have real numbers.

### Why YC, why now

Ask:
- Why are you applying to this specific batch?
- Is there a deadline reason — product milestone, runway, team coming together?
- Have you applied before? If so, what feedback did you get and what changed?

---

## Phase 1 output: Angle identification

After discovery, before asking a single form question, output this block:

```
## YC Angle Analysis

**Strongest cards:**
1. [The single most impressive thing about this team/company — be specific]
2. [Second strongest signal]
3. [Third strongest signal]

**Narrative spine:**
[1-2 sentences: who these founders are + what gives them the right to build this + what makes the traction real]

**Risks a YC partner will flag:**
- [risk 1 — and how to address it in the application]
- [risk 2]

**Highest-stakes questions for this founder:**
- [Which YC questions matter most given what they've told you, and why]

**Weakest areas to strengthen before form-fill:**
- [What's missing or thin]
```

Show this to the founder. Ask: "Does this match how you see your company? Correct anything that's off."

Only proceed to Phase 2 after the founder confirms or corrects the angle analysis.

---

## Phase 2: Field capture

Now map the strategy into form fields. Ask questions in YC form order, but frame each question using the angle analysis — help the founder see how their strongest cards map to each field.

### Section A: Company

1. Company name
2. Company URL (if any)
3. Demo URL — flag hard if missing: "Demo URL is statistically important. Do you have a Loom or screen recording you can link?"
4. 50-character pitch — reference the narrative spine from Phase 1, suggest 2-3 options
5. What is your company going to make? — use X-but-Y if it fits, reference the strongest card
6. Location now / post-YC
7. Wildcard hack question — probe for a real one. "What's a system you've beaten that wasn't technical?"
8. Most impressive thing — pull from Phase 1 discovery, make sure it's specific and not the startup itself
9. Founder video URL
10. Who writes code?
11. Number of founders

### Section B: Founders

Per founder (pull mostly from Phase 1):
- Full name, age, education, email, URLs, prior employers
- Their most impressive thing (already captured)

Shared:
- Interesting project together — pull from Phase 1
- How long known / how met
- Met in person?
- Exclusive commitment?
- Other / future commitments?

### Section C: Progress

- Time working, full-time or part-time
- Stage
- Active users / paying customers
- Revenue — 6 monthly fields, oldest first. Fill 0 for pre-revenue months.
- Revenue notes
- Prior YC batch?
- Other accelerators?

### Section D: Idea

Pull from Phase 1 discovery:
- Why this idea / domain expertise — use the founder-market fit framing from discovery
- What's new / substitutes — use the "painful workarounds" the founder described
- Competitors / who feared most — use what they named in discovery
- Unique insight — use the non-obvious thing they know
- Business model / revenue potential
- User acquisition / chicken-and-egg
- Category dropdown

### Section E: Equity

- Legal entity
- Equity breakdown
- Investment taken
- Monthly spend / cash / runway

### Section F: Others

- Other ideas considered
- Amusing discovery
- Why YC
- Referral code

---

## Phase 2 output: FOUNDER_PROFILE block

After all sections confirmed:

```
FOUNDER_PROFILE
===============
## Angles
strongest_cards: [1, 2, 3]
narrative_spine: [value]
risks_to_address: [list]

## Company
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

## Founders
[[per founder]]
- name / age / education / email / urls / employers / impressive

shared_project: [value]
how_met: [value]
met_in_person: [yes/no]
exclusive_commitment: [yes/no + detail]
other_commitments: [value or NONE]
future_commitments: [value or NONE]

## Progress
time_working: [value]
stage: [live/beta/building/idea]
active_users: [number]
paying_customers: [number]
top_customer: [value or NONE]
revenue_6mo: [m-6, m-5, m-4, m-3, m-2, m-1]
revenue_notes: [value or NONE]
prior_yc_batch: [value or N/A]
other_accelerators: [value or NONE]

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

## Equity
legal_entity: [yes/no, type, jurisdiction]
equity_table: [name: X%, title; ...]
investment: [value or NONE]
monthly_spend: [$]
cash: [$]
runway_months: [number]

## Others
other_ideas: [value]
amusing: [value]
why_yc: [value]
referral: [value or NONE]
===============
Profile complete. Ready for form-fill skill.
```

---

## Handoff rules

- If founder says "help me write this answer" at any point — pause intake, invoke `yc-application` skill to draft, then return here with the result
- If a field is genuinely unknown — use `TBD`, never guess
- If Phase 1 surfaces a serious weakness (no technical founder, no traction at all, idea is thin) — say so directly before Phase 2. Don't paper over it with good form answers.
