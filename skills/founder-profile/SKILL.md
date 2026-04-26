---
name: founder-profile
description: Strategic discovery before a YC application. Trigger when a founder wants to apply to YC, says "let's start my application", "help me apply", or "fill out the form". Runs discovery, identifies strongest angles and critical gaps, then hands off to yc-application for drafting. Does NOT draft answers - that is yc-application's job. Does NOT fill the form - that is form-fill's job.
---

# Founder Profile - Discovery and Strategy

This skill does one thing: understand the founder deeply enough to know what their strongest YC narrative is and what will kill their application. Then it hands off.

Three phases - all must complete before anything gets drafted or filled.

---

## Phase 0: Reapply check

YC tracks founders, not companies. A partner sees your full application history regardless of whether the current idea or team is different. Ask about every person on the founding team.

First question, always:

"Has anyone on your founding team applied to YC before - with any idea, under any company name?"

**If no one has:** proceed to Phase 1. True first application.

**If yes (any founder):** ask the follow-up questions below, then determine the scenario type.

### Follow-up questions for any returning founder

- Which founder(s) applied before?
- Which batch(es)?
- What was the idea at that time?
- Did they get an interview? If yes, what feedback came out of it?
- Did YC send written rejection feedback? What did it say specifically?

### Determine scenario - each has a different narrative strategy

**Scenario A: Same founders, same idea, more progress**
Classic reapplication. The "what changed" question is the biggest opportunity.
- What was the state of the company at last application?
- What has shipped, grown, or been learned since?
- Does the progress directly address any feedback received?
- Flag if nothing material changed: "Same application, same state = same result. What can you ship before this deadline?"

**Scenario B: Same founders, pivoted to new idea**
Still a reapplication. The pivot IS the answer to "what changed" - but it needs to be a credible narrative, not abandonment.
- Why did the previous idea fail or get deprioritized? Be specific.
- What did you learn that led to the new idea?
- Is there a through-line in domain expertise between old and new?
- Does the new idea benefit from what was built/learned before?
- Flag if pivot looks random: "Partners will ask why you abandoned the last idea. The through-line from old to new must be clear."

**Scenario C: Returning founder, new co-founders joined**
Prior history still applies. New co-founders are a positive signal - address why they joined and what they add.
- Why did team composition change?
- What does the new co-founder bring that was missing?
- Have the new co-founders shipped anything together with the returning founder yet?
- Flag if new co-founders were added only to address a "no technical founder" rejection: partners notice this.

**Scenario D: Returning founder, completely new company and idea**
Most transparency-sensitive scenario. Partners will see prior history. Do not hide it.
- Prior company: what did it do, how far did it get, why did it end?
- What was learned that applies to the current company?
- The prior startup is now an opportunity for the "most impressive thing" answer - even a failed startup that shipped something real counts.
- Frame: "I built X, got to Y, learned Z. That's why I'm now building this."

**Scenario E: Mixed team - some returning, some new**
Returning founders' history applies. New co-founders have no prior YC history but that doesn't make this a first application.
- Which founders are returning, which are new?
- Handle returning founders per Scenario A/B/D above
- For new co-founders: their joining is a "what changed" signal - address it

Output for any reapplication scenario:
```
## Reapplication Context
scenario: [A/B/C/D/E]
returning_founders: [names]
prior_batches: [list]
prior_idea: [what it was]
interview: [yes/no + what happened]
feedback_received: [what YC said]
pivot: [yes/no - if yes, from what to what and why]
team_changes: [who joined or left and why]
what_changed: [specific material progress, pivot rationale, or team addition]
through_line: [the connecting thread between then and now]
```

---

## Phase 1: Discovery

Conversational. Not form-shaped. Ask one thread at a time, follow the interesting thing.

### Founder(s)

- Walk me through your background. What's the hardest thing you've built or done?
- What's the single most impressive thing you've done outside this startup? Be specific - not a title, a thing with a result.
- If multiple founders: how did you meet, how long have you worked together, what have you built together? (No shared project is a flag - probe it.)
- Does anyone write code? Who built the product?

**Listen for:** Specific, verifiable, hard achievements. Technical depth. Domain expertise earned through doing, not reading. Prior founder experience (success or failure). Long co-founder relationship with real shipped work together.

**Probe until specific.** "10 years in finance" → "what specifically did you build or do in those 10 years that was hard?" Don't accept adjectives.

### Company

- What does your company do? Explain it to me like I'm smart but know nothing about your space.
- How did you come up with this idea? Did you have this problem yourself?
- What does someone do today when they have this problem? What's the painful workaround?
- Who are your competitors? Who do you actually fear?
- What do you understand about this market that most people who look at it don't?
- Why is now the right time for this - what changed?

**Listen for:** X-but-Y clarity. Founder-market fit (personal need > domain experience > research > "saw a big market"). Named real competitors. Non-obvious insight earned through experience. "Why now" that's specific to the market, not just "AI is hot."

### Traction

- Where are you - idea, prototype, live product, revenue?
- How many users? How many paying? What's your monthly revenue for each of the last 6 months?
- What's the most impressive traction signal you have, however small?
- What have you shipped in the last 30 days?

**Listen for:** Real numbers. Specific dates. Honest trajectory. It's fine to have $30/month - Basedash got in with that. What's not fine is vague language ("early traction", "growing fast", "lots of interest").

**Push until you have numbers.** If revenue is 0, that's the answer - not a description.

### Tech stack + AI tooling (Summer 2026 - new question on form)

- What's your stack? (languages, frameworks, infra, AI APIs)
- Do you use AI coding tools? Which ones - Claude Code, Cursor, Copilot, other?
- How central is AI tooling to how you actually build?

Summer 2026 has an explicit form question asking for tech stack including AI models and AI coding tools. Also an optional upload of a coding agent session export (Claude Code `/export`, Cursor transcript). If the founder uses these tools seriously, flag it as a differentiator to highlight - YC added this question specifically to find AI-native builders.

---

## Phase 2: Angle analysis and red flag check

After discovery, before any drafting, output this block and ask the founder to confirm or correct it.

Check `references/yc-context.md` for the current RFS list before filling in "RFS alignment" below. Rule: if the company *naturally* fits a theme, name it and flag it as a positive signal to surface in the application. If it only fits with a stretch, mark it forced-fit and don't use it.

```
## YC Angle Analysis

**The 3 strongest things about this team/company for a YC partner:**
1. [Most impressive specific thing - be precise, not "great team"]
2. [Second strongest signal]
3. [Third strongest signal]

**Narrative spine:**
[1-2 sentences: who these founders are + what gives them the right
to build this + what makes the traction credible]

**What will open the interview door:**
[The 1-2 things that, if communicated clearly, will get this past
the first filter. Usually: the most impressive founder achievement
+ the clearest possible product description.]

**RFS alignment:**
[none / naturally fits "[theme name]" - mention in application / forced-fit - do not force]

**What a YC partner will flag (address in the application):**
- [risk/gap 1 and how to address it]
- [risk/gap 2]

**Instant-reject risks to fix before drafting:**
- [anything that triggers automatic no - see below]
```

### Instant-reject checklist

Flag these explicitly if present. Do not proceed to drafting until the founder has a plan to address each one:

- **No technical founder** - who writes code? If contractors built it, what's the plan to bring tech in-house? Michael Seibel: top-3 turn-off.
- **No product built** - "we're pre-product" with no working prototype is very hard. What can be shipped before the deadline?
- **All adjectives, no specifics** - if the impressive thing answer is still vague after probing, say so.
- **"No competitors"** - instant red flag. Work through the competitor list now.
- **Co-founders who've never shipped anything together** - flag. Not disqualifying but needs addressing in the application.
- **Revenue vagueness** - if they won't give numbers, the form will expose it anyway. Get them now.

---

## Handoff

After the founder confirms the angle analysis (or corrects it), hand off:

"Now I have a clear picture of your strongest narrative. Let's draft the application. I'll hand this to the yc-application skill, which will:

1. Draft the gatekeeping questions first (50-char pitch, product description, most impressive thing) - these must be excellent before anything else
2. Complete the remaining sections using the narrative we established
3. Run a full partner-mindset critique on all answers
4. Fix anything that would kill or weaken the application

Once the answers are locked and critiqued, we'll use the form-fill skill to fill the actual YC form field by field - you approve each section, you click all the buttons.

Ready to start drafting?"

Then invoke the `yc-application` skill and pass it the angle analysis as context.

---

## What this skill does NOT do

- Does not draft answers - that is `yc-application`
- Does not fill form fields - that is `form-fill`
- Does not paper over critical gaps - if there's no technical founder and no plan, say so clearly before any drafting happens
