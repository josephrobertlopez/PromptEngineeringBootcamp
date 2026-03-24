---
marp: true
theme: bootcamp-theme
paginate: true
headingDivider: 2
html: true
---

<!-- _class: hero -->

# Prompt Engineering Bootcamp v2
## From Patterns to Systems
### You did the prereq. Now we build.

90 minutes | Hands-on | You leave with tools you made

---

<!-- _class: recap -->

## Quick Check: Three Intuitions

Before we start — confirm your prereq landed:

1. **Context is everything** — The AI completes patterns from what you give it
2. **Structure gets rewarded** — Organized input → organized output (the model was trained for this)
3. **You are the retrieval system** — Every AI interaction is: retrieve → assemble → generate

If you didn't do the prereq: pair with someone who did. You'll catch up fast.

---

<!-- _class: theory -->

## The One Principle

There is only one operation in AI:

**Assembling the right context.**

Everything you'll learn today — patterns, skills, workflows — is a different mechanism for doing that same operation at different scales.

- Typing context = manual assembly
- Saving a prompt file = saved assembly
- Using a skill = automated assembly
- Building a skill = designing the assembly system

Today you go from manual to building.

---

<!-- _class: agenda -->

## Today's Session

| Time | What | You Do |
|------|------|--------|
| 0-15 min | Activation | Confirm prereq, meet your track |
| 15-25 min | Freestyle attempt | Try your role-specific task the old way |
| 25-50 min | Skill-assisted attempt | Use your second-brain skill |
| 50-60 min | Under the hood | Understand what the skill did |
| 60-80 min | Capstone: make-skills | Build your own skill |
| 80-90 min | The reveal + next steps | Connect it all |

---

<!-- _class: theory -->

## The Patterns Have Names

What you felt in the prereq has names used across the industry:

| What You Felt | Pattern Name | What It Does |
|---------------|-------------|--------------|
| Adding role context improved output | **Persona Pattern** | Sets expertise and frame of reference |
| Examples improved quality | **Few-Shot Pattern** | Shows desired format and quality bar |
| Structured format → structured output | **Template Pattern** | Ensures consistent outputs |
| Step-by-step → better reasoning | **Chain-of-Thought** | Forces structured thinking |
| Think → Act → Observe loops | **ReAct Pattern** | Multi-step reasoning with validation |
| Evaluate 3 options → choose best | **Tree of Thoughts** | Strategic decision-making |

You don't need to memorize these. They're in your reference card. What matters: you've already FELT each one.

---

<!-- _class: transition -->

# Choose Your Track
## Developer | PO/PM | Delivery Lead | Tech Lead

---

<!-- _class: theory -->

## Your Track

Each track has:
- A **scenario** based on your actual work
- A **second-brain skill** tailored to your role
- The same structure: freestyle → skill-assisted → compare

| Track | Scenario | Skill |
|-------|----------|-------|
| **Developer** | Code migration (Spring Boot 2→3) | `dev-second-brain` |
| **PO/PM** | Requirements capture (Customer Onboarding Portal) | `po-second-brain` |
| **Delivery Lead** | FY26 priority building ($2.3M project) | `dl-second-brain` |
| **Tech Lead** | Architecture decision (monolith decomposition) | `tl-second-brain` |

Find your track group. Your facilitator will share the skill file.

---

<!-- _class: exercise -->

## Exercise: Freestyle (10 min)

Using your AI tool and your normal approach:

**Developers:** "Migrate UserController.java from Spring Boot 2.7 to Spring Boot 3.2"

**PO/PMs:** "Write user stories for a customer onboarding portal with KYC verification"

**Delivery Leads:** "Write your FY26 priority for your biggest project"

**Tech Leads:** "Write an ADR for decomposing your team's monolith"

Save your output. You'll compare it in 15 minutes.

---

<!-- _class: exercise -->

## Exercise: Use Your Second-Brain Skill (20 min)

Now load your track's skill and follow its process:

1. **Copy** the skill into your AI tool (your facilitator has the link)
2. **Answer** the interrogation questions — it will ask 12-17 questions about your context
3. **Let it generate** — watch how it assembles your answers into structured output
4. **Save the output**

The skill will ask you things you wouldn't have thought to include. That's the point.

---

<!-- _class: solution -->

## Compare Your Two Outputs

Look at them side by side:

- Which is more specific to YOUR actual work?
- Which captured details you would have forgotten?
- Which would you actually submit / share / ship?
- Which took more effort? (trick question — the skill-assisted one asked more of you but produced more)

**The skill didn't know more than you.** It just asked better questions and assembled your answers into structured context. YOU were the knowledge source both times. The skill automated the retrieval and assembly.

---

<!-- _class: theory -->

## What Just Happened

The skill you used did three things:

1. **Retrieved** — asked you targeted questions to extract relevant context
2. **Assembled** — organized your answers into structured format
3. **Generated** — fed that structured context to the AI

Sound familiar? That's Intuition 3 from the prereq. The skill IS the retrieval system you learned about. It just replaced YOU doing the retrieval manually.

Every AI tool you'll ever encounter does these same three steps. The only question is: who designs the questions, the structure, and the output format?

---

<!-- _class: transition -->

# Now You Build One
## The skill that makes skills

---

<!-- _class: theory -->

## Build Your Own Skill

You just USED a skill someone else built. Now you BUILD one for yourself.

Think of a task you do at least weekly:
- Writing status reports
- Reviewing PRs
- Creating test plans
- Drafting client emails
- Scoping estimates
- Preparing for meetings

You're going to turn that task into a skill — a system that asks you the right questions, assembles the context, and generates structured output.

---

<!-- _class: exercise -->

## Exercise: make-skills (20 min)

1. **Load** the `make-skills` skill into your AI tool
2. **Answer** its questions about your repeated task
3. **Watch** it extract the pattern from your workflow
4. **Get** a complete skill file you can save and reuse

The skill will ask you:
- What task do you repeat weekly?
- Walk me through how you do it today
- What information do you always need?
- What does good output look like?

Then it generates YOUR skill. Save it. It works tomorrow.

---

<!-- _class: solution -->

## Show Your Skill (5 min)

Quick round — each person shares:
- **What task** their skill automates
- **What questions** it asks
- **What output** it produces

Notice: every skill follows the same pattern. Different domain, same structure.

---

<!-- _class: insights -->

## What You Actually Built

That skill you just made?

- It **asks questions** → that's **retrieval**
- It **assembles answers into context** → that's **augmentation**
- It **feeds context to the AI** → that's **generation**

You built a **RAG system**. Retrieval-Augmented Generation.

The AI completing patterns from your context? That's what a **Large Language Model** does.

Why structured input works better? The model was trained by humans who rewarded helpful responses to clear requests. That's called **RLHF**.

You've been doing all three since the first exercise of the prereq.

Now you know the names.

---

<!-- _class: insights -->

## The Real Point

What matters:

**Context is everything.** Every AI interaction is only as good as the context you provide.

**Structure gets rewarded.** The model cooperates with organized input because it was trained to.

**You are the retrieval system — until you automate it.** Skills, tools, platforms — they all just automate what you did manually in the prereq exercises.

You now have:
- A skill tailored to your role (second-brain)
- A skill you built yourself (make-skills output)
- The ability to create more for your team

---

<!-- _class: solution -->

## Real Results

This methodology — systematic context assembly with structured patterns — was applied at scale on the **a Fortune 500 platform consolidation** program:

- **66% faster** migration delivery
- **37.9x ROI** ($4,680 invested → $177,000 saved)
- **1,182 hours** saved across 1,000+ migrations

You now have the same toolkit. The scale is up to you.

---

<!-- _class: next-steps -->

## This Week

**Day 1-2:** Use your second-brain skill on real work. Note what it gets right and wrong.

**Day 3-4:** Use the skill you built (make-skills output) on your repeated task. Refine the questions it asks.

**Day 5:** Share one skill with a colleague. Teach them to use it. Watch what questions they have — those are your refinement opportunities.

**This Month:**
- Build 2-3 more skills for your most common tasks
- Create a team knowledge-base (shared context file)
- Run a 30-minute skill-building session with your team

---

<!-- _class: resources -->

## Resources

**Bootcamp Materials:**
github.com/josephrobertlopez/PromptEngineeringBootcamp

**Skills you used today:**
- `dev-second-brain` / `po-second-brain` / `dl-second-brain` / `tl-second-brain`
- `make-skills` (the meta-skill)

**The prereq (share with your team):**
Common Knowledge — Three Intuitions: [hosted link]

**Reference:**
- Quick Reference Cards (pattern recognition guide)
- Three Approaches Decision Tree
- Academic papers: Yao et al. (ReAct, 2022), Yao et al. (ToT, 2023), Wei et al. (CoT, 2022)

---

<!-- _class: wrap -->

## Thank You

You came in knowing how to prompt.

You're leaving knowing how to build systems that prompt for you.

That's the difference between using AI and engineering with AI.

Go build.

---

**Facilitator:** Joseph Lopez
Sr. Data Engineer Analyst, the organization
AI Enablement | GenAI Workflows | Systematic Prompt Engineering
