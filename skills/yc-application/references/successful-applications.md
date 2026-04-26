# Successful YC Applications (Annotated)

Two real applications that got accepted. Read them as reference material when drafting or critiquing - they're the closest thing to ground truth on what works.

## Dropbox (Summer 2007 - accepted, became a $9B IPO)

Drew Houston applied as a solo founder. The company became one of the most successful YC investments ever. Paul Graham specifically links to this application in his "How to Apply" essay as the canonical example.

### Key answers

**What is your company going to make?**
> Dropbox synchronizes files across your/your team's computers. It's much better than uploading or email, because it's automatic, integrated into Windows, and fits into the way you already work. There's also a web interface, and the files are securely backed up to Amazon S3. Dropbox is kind of like taking the best elements of subversion, trac and rsync and making them "just work" for the average individual or team. Hackers have access to these tools, but normal people don't. It's currently in private beta and I add batches of people every few days.

> There are lots of interesting possible features. One is syncing Google Docs/Spreadsheets (or other office web apps) to local .doc and .xls files for offline access, which would be strategically important as few web apps deal with the offline problem.

**What works:** Sentence 1 is a TL;DR. The "X but Y" technique appears with three references (subversion, trac, rsync) that were all instantly recognizable to YC partners in 2007. Identifies who the user is ("the average individual or team") and what they get ("just works"). Last paragraph adds vision without sounding like vision.

**Most impressive thing (Drew):**
> Drew - Programming since age 5; startups since age 14; 1600 on SAT; started profitable online SAT prep company in college (accoladeprep.com). For fun last summer reverse engineered the software on a number of poker sites and wrote a real-money playing poker bot (it was about break-even; see screenshot url later in the app.)

**What works:** Five distinct, specific, verifiable achievements in 2 sentences. Each one is hard. The poker bot in particular signals exactly the kind of "beats systems" mindset YC values. No adjectives, no fluff.

**Competitors:**
> Carbonite and Mozy do a good job with hassle-free backup, and a move into sync would make sense. Sharpcast (venture funded) announced a similar app called Hummingbird, but according to Jeff (who is good friends with the tech lead) they're taking an extraordinarily difficult approach involving NT kernel drivers. Google's coming out with GDrive at some point. Microsoft's Groove does sync and is part of Office 2007, but is very heavyweight and doesn't include any of the web stuff or backup. There are apps like Omnidrive and Titanize but the implementations are buggy or have bad UIs.

**What works:** Six competitors named, each with a specific, evidence-based reason for why Dropbox can win or coexist. Includes Google as a future threat - doesn't pretend it doesn't exist. The Sharpcast detail (insider knowledge from a friend) signals depth.

**Insight ("what do you understand that others don't"):**
> Competing products work at the wrong layer of abstraction and/or force the user to constantly think and do things. The "online disk drive" abstraction sucks, because you can't work offline and the OS support is extremely brittle. Anything that depends on manual emailing/uploading (i.e. anything web-based) is a non-starter, because it's basically doing version control in your head. But virtually all competing services involve one or the other.

> With Dropbox, you hit "Save", as you normally would, and everything just works, even with large files (and binary diffs ensure that only the changed portions go over the wire).

**What works:** The insight is a real, technical, defensible perspective on why competitors are doing it wrong. It's not "we'll have a better UX" - it's a structural argument about the abstraction layer.

**Surprising / amusing thing:**
> The ridiculous things people name their documents to do versioning, like "proposal v2 good revised NEW 11-15-06.doc", continue to crack me up.

**What works:** One sentence. Personal. Connects to the product's reason to exist (versioning is broken without a tool like Dropbox). Not trying too hard.

**Solo founder handling:**
> Although I'm working with other people on Dropbox, strictly speaking I'm the only founder right now. My friend Jeff Mancuso, a great hacker, Stanford grad and creator of Sftpdrive (http://www.sftpdrive.com) is putting together a Mac port, but can't join as a founder right now as a former cofounder of his started an extremely similar company called Sharpcast. My friend and roommate Tom Hoover from MIT is helping out too, but he works with me at Bit9, and a non-solicit clause in my employment contract prevents me from recruiting him (and the VP Eng explicitly told me not to recruit him.)

> In any case, I have several leads, have been networking aggressively, and fully intend to get someone else on board -- another good hacker and/or a more sales-oriented guy (e.g. the role Matt fills at Xobni). I'm aware that the odds aren't good for single founders, and would rather work with other people anyway.

**What works:** Drew addresses the solo-founder concern directly and explains exactly why he's solo right now (with names and circumstances). He acknowledges the data ("odds aren't good for single founders"), shows self-awareness, and states a plan. This is the gold standard for handling a known weakness.

---

## Basedash (Summer 2020 - accepted, solo founder)

Max Musing applied as a solo founder with $30/month in revenue. He'd been rejected three times before this. The company is now an AI-native BI tool.

### Key answers

**50-character pitch:**
> Collaborative database interface for teams.

**What works:** Concrete, no buzzwords, names the user (teams) and the product type (database interface). Reader knows what it is in 4 seconds.

**What is your company going to make?**
> Basedash is a collaborative database interface that lets team members view and edit data directly from their production database. It's like Airtable but for your existing database.

**What works:** Two sentences. The X-but-Y formula does most of the work. Anyone who knows Airtable instantly understands the value proposition.

**Hack a non-computer system:**
> I managed to continue working on my company as my capstone project for school until I graduate. I also recruited a technical student as a partner working full-time hours for free (don't worry, they signed an NDA & IP agreement).

**What works:** Two specific, concrete hacks. Both are the kind of "beats systems" behavior YC wants - turning school requirements and free labor into startup leverage. The parenthetical about the NDA is a wink - shows self-awareness.

**Most impressive thing:**
> I cofounded Scholarly (now ScholarMe), which was part of YC S19.

**What works:** Concrete, verifiable, instantly impressive to YC partners specifically (it's a company they funded). One sentence is enough when the achievement is strong.

**Why this idea:**
> I discovered the need for this product after working on another startup. We found there were no good tools for managing data with teams. We really wanted to use Airtable's interface for our own database.

**What works:** Personal-need origin story. Specific frustration. Implicit credibility (he's a founder who's been in this exact situation).

**What's new / substitutes:**
> Combines traditional database interfaces with analytics dashboards while adding collaboration. People resort to passing raw data between teams which is inefficient and unsafe.

**What works:** Names the new combination, names the painful workaround in concrete terms ("passing raw data" = a real, painful thing developers actually do).

**Insight:**
> Software is built by teams, not individuals.

**What works:** One sentence. A real (if simple) point about the world that shapes the product. Doesn't try to sound profound. Goes well with the "collaborative" framing throughout the rest of the app.

**Revenue: $30/month**

**What works (counterintuitively):** The application got in despite - or because of - the honest small number. Combined with shipped MVP, 300+ signups, real users, and a Product Hunt launch, the small revenue read as "early but real," not "no traction." If Max had tried to dress this up, it would have failed.

**Surprising/amusing:**
> My last name is Musing which is slightly amusing.

**What works:** One sentence. Personal. Self-deprecating without being self-deprecating. Doesn't try.

---

## Patterns across both applications

1. **Both used X-but-Y framing in the main pitch.** Dropbox: "subversion, trac and rsync, but for normal people." Basedash: "Airtable, but for your existing database."

2. **Both led with concrete, matter-of-fact descriptions.** Zero marketing-speak in either application's pitch.

3. **Both addressed weaknesses head-on.** Drew: solo founder, with explanation. Max: solo founder, with $30/mo revenue, with explanation.

4. **Both had specific, verifiable achievements in the "impressive thing" answer.** Drew: 5 concrete things. Max: a previous YC company.

5. **Both included a working demo.** Drew submitted a screencast and a Windows installer. Max submitted a live URL.

6. **Both were short.** Most answers were 1-3 sentences. Almost no answer was over 5 sentences.

7. **Both treated competitors honestly.** Drew named 6 specific competitors with reasons. Max named 3 (Forest Admin, Mode, Prisma) plus one feared (Internal).

8. **The "hack a system" answers were both creative but small.** Neither was a heroic story. Drew didn't even include this verbatim publicly - but Max's grad-school-as-cover and free-cofounder-NDA were small, specific, hustle-grade answers.

When in doubt, write answers that look more like these and less like a polished pitch deck.
