---
marp: true
theme: bootcamp-theme
paginate: true
headingDivider: 2
html: true
---

<!-- _class: hero -->
# Common Knowledge
## The Three Intuitions Behind Every AI Tool
### Prompt Engineering Bootcamp v2 — Required Prereq
Duration: 15-20 minute self-study

---

<!-- _class: transition -->
# Before the Live Session

Before the live session, you need three intuitions. Not facts. Not definitions. Intuitions — things you feel are true because you've tested them yourself.

These three intuitions are the foundation everything else builds on. If you skip this, the session won't land.

---

<!-- _class: theory -->
## Intuition 1: Context Is Everything

The AI doesn't know you. It doesn't know your project, your role, your metrics, your client. Every time you open a chat, it starts from zero.

The ONLY thing it works with is what you give it in that moment.

This seems obvious. But most people act as if the AI should "just know" — and then blame it when the output is generic.

---

<!-- _class: exercise -->
## Try This Right Now

Open your AI tool (ChatGPT, Claude, Copilot — any of them).

**Attempt 1 — No context:**
```
Write my FY26 priority for AI enablement.
```

Save the output.

**Attempt 2 — Rich context:**
```
I'm a Senior Analyst at the organization, 5 years in Technology Consulting.
My biggest project: banking automation that reduced processing from 
3 minutes to 30 seconds per dataset. I processed 1,500+ datasets 
and presented 4 POCs to senior management. My AI tool usage includes 
daily Copilot and weekly Claude for architecture decisions.

Write my FY26 priority for AI enablement, including:
- Category: AI Enablement
- 50-100 word description with specific deliverables
- Metrics from: AI Tool Usage, Innovation Impact, Knowledge Sharing
- ABCD reflection (Accomplishment, Business Impact, Challenge, Development)
```

Save the output. Compare them.

---

<!-- _class: solution -->
## What You Just Felt

The first output was generic. The second was specific, useful, maybe even submission-ready.

Same AI. Same model. Same day. The only difference: **what you put in**.

**The intuition:** The AI is a context-completion machine. It completes patterns from whatever you give it. Give it nothing, get nothing. Give it your actual work, get actual results.

This is the only principle. Everything else — every pattern, every technique, every tool — is just a different way of getting the right context in front of the AI.

---

<!-- _class: transition -->
# Intuition 2
## Structure Gets Rewarded

---

<!-- _class: theory -->
## Why Structure Matters

You might think: "I gave it context in Attempt 2, so context is all that matters. Format doesn't matter as long as the info is there."

Test that assumption.

---

<!-- _class: exercise -->
## Try This Right Now

Take the SAME information from Attempt 2, but deliver it two ways:

**Attempt 3 — Wall of text:**
```
I'm a senior analyst at a Fortune 500 company with 5 years experience in 
technology consulting and my biggest project was banking automation 
where I reduced processing from 3 min to 30 sec per dataset and 
I processed over 1500 datasets and presented 4 POCs to senior 
management and I use copilot daily and claude weekly for architecture 
so write my fy26 priority for ai enablement with description 
metrics and abcd reflection
```

**Attempt 4 — Structured:**
```
## Role
Senior Analyst, Technology Consulting (5 years)

## Key Achievement
Banking automation: 3 min → 30 sec per dataset
- 1,500+ datasets processed
- 4 POCs presented to senior management

## AI Tool Usage
- Daily: GitHub Copilot (code assistance)
- Weekly: Claude (architecture decisions)

## Task
Write FY26 priority for AI Enablement:
- Description: 50-100 words, specific deliverables
- Metrics: AI Tool Usage, Innovation Impact, Knowledge Sharing
- ABCD Reflection: all four components with evidence
- Format: Ready for Workday submission
```

Compare the outputs. Same information. Different structure.

---

<!-- _class: solution -->
## What You Just Felt

The structured version produced cleaner, more organized, more usable output. The wall-of-text version probably missed things or jumbled the order.

**The intuition:** The AI mirrors the structure you give it. It's not just about WHAT you provide — it's about HOW you organize it.

Why? Because the model was trained on millions of examples where humans preferred clear, structured responses to clear, structured requests. It learned: "when the input is organized, the human wants organized output." That training is baked in. You're not fighting the tool when you use structure — you're working WITH its training.

Headings, bullet points, labeled sections, explicit output formats — these aren't optional formatting. They're signals the AI was trained to respect.

---

<!-- _class: transition -->
# Intuition 3
## You Are the Retrieval System

---

<!-- _class: theory -->
## Where Does Context Come From?

In Attempts 2 and 4, YOU typed all the context. You pulled it from your memory, organized it, and pasted it in.

That works. But think about what you just did:

1. **Retrieved** relevant information (from your memory)
2. **Organized** it into structured context
3. **Fed** it to the AI for generation

You were the retrieval system. You did the work of finding, organizing, and delivering the right information.

Now imagine: what if a system did steps 1 and 2 for you?

---

<!-- _class: exercise -->
## Try This Right Now

You've typed context twice. Now you're going to FEEL the difference between pulling context from your brain and pulling it from a file.

**Attempt 5 — Manual retrieval:**
Open a new chat in your AI tool (don't use the previous conversation). Type this prompt:

```
Write my FY26 priority for AI Enablement using the following context:

I'm a Senior Analyst at the organization, 5 years in Technology Consulting.
My biggest project: banking automation that reduced processing from
3 minutes to 30 seconds per dataset. I processed 1,500+ datasets
and presented 4 POCs to senior management. My AI tool usage includes
daily Copilot and weekly Claude for architecture decisions.

Write the priority with:
- Category: AI Enablement
- 50-100 word description with specific deliverables
- Metrics from: AI Tool Usage, Innovation Impact, Knowledge Sharing
- ABCD reflection (Accomplishment, Business Impact, Challenge, Development)
```

Save the output. Keep it open.

**Attempt 6 — File-assisted retrieval:**

Now you're going to build a tiny retrieval system:

1. **Create a text file** on your desktop called `my-context.txt`
2. **Fill it** with the structured version from Attempt 4 (the one with headings):
```
## Role
Senior Analyst, Technology Consulting (5 years)

## Key Achievement
Banking automation: 3 min → 30 sec per dataset
- 1,500+ datasets processed
- 4 POCs presented to senior management

## AI Tool Usage
- Daily: GitHub Copilot (code assistance)
- Weekly: Claude (architecture decisions)
```
3. **Save the file**
4. **Open a BRAND NEW chat** (different conversation)
5. **Paste the entire file contents into the chat**, then add this single-line instruction:

```
Write my FY26 priority for AI Enablement using the context above.
```

Save this output. Compare it to Attempt 5.

---

---

<!-- _class: solution -->
## What You Just Felt

Both outputs were probably similar. Maybe even identical. Same structured context, same request, same AI model — one came from your brain, one came from a file.

But notice what happened: In Attempt 5, YOU did the retrieval (pulled from memory). In Attempt 6, the FILE did the retrieval (you just pointed to it).

The AI didn't care. It worked with whatever context it got. The retrieval system changed, but the operation stayed the same.

**The intuition:** Every "AI tool" you'll encounter — from simple prompts to enterprise platforms — is doing the same three things:

1. **Retrieving** relevant information from *somewhere*
2. **Assembling** it into structured context
3. **Generating** output from that context

When you typed Attempt 5, YOU were the retrieval system. When you saved and pasted the file in Attempt 6, the FILE became the retrieval system. When a tool asks you questions first, the TOOL is the retrieval system. When an enterprise platform pulls from databases, the PLATFORM is the retrieval system.

The operation never changes. Only who or what does the retrieving changes.

**The intuition:** Whenever you see an AI tool doing something impressive, ask: "Where is it getting its context from?" The answer is always: somewhere specific. There's no magic. Just good retrieval. You just built one by hand.

---

<!-- _class: insights -->
## Your Three Intuitions

**1. Context is everything.**
The AI completes patterns from what you give it. More relevant context = better output. Always.

**2. Structure gets rewarded.**
Organized input → organized output. The AI was trained to respect structure. Use it.

**3. You are the retrieval system (until you automate it).**
Every AI interaction is: retrieve context → assemble it → generate output. The question is always: who or what is doing the retrieval?

These three intuitions explain every AI pattern, tool, and technique you'll encounter. The live session builds on them. If you felt them through the exercises, you're ready.

---

<!-- _class: wrap -->
## Before the Live Session: Self-Check

Can you answer these without looking back?

- [ ] Why did Attempt 2 produce better output than Attempt 1?
- [ ] Why did Attempt 4 produce better output than Attempt 3, even though the information was identical?
- [ ] If someone showed you an AI tool that "automatically writes great priorities," what question would you ask about how it works?

If you can answer all three, you're ready for the session.

If not, re-read the intuition you're unsure about and try the exercise again.

---

<!-- _class: next-steps -->
## What Happens Next

In the live session, you'll:

1. **Learn named patterns** for the intuitions you just felt (they have names like "Persona Pattern" and "Few-Shot Pattern" — you'll recognize them immediately)

2. **Fork into your role path** (Developer, PO/PM, Delivery Lead, or Tech Lead) and use a pre-built skill tailored to your work

3. **Build your own skill** — a system that does the retrieval and assembly FOR you, for a task you actually repeat

You'll leave with an installed tool and the ability to create more.

This methodology—context-first thinking with structured AI integration—delivered 66% faster delivery and 37.9x ROI on Capital One's OneStream Convergence program across 1,000+ production migrations.

See you at the session.
