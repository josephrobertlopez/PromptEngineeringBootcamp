# Make-Skills: The Capstone Skill Builder

**Build your own interrogation-driven AI skill for any repeated task.**

This is the capstone of Joey's Prompt Engineering Bootcamp v2 — the moment you stop USING skills and start CREATING them.

## What It Is

The **Make-Skills** skill enables you to turn your weekly repeated work into a production-ready AI skill file that you and your team can use immediately.

It demonstrates all three bootcamp intuitions at the meta level:

1. **Context is everything** — The skill interrogates you about YOUR task, constraints, and audience
2. **Structure gets rewarded** — The output is a properly formatted skill file (not prose)
3. **You are the retrieval system** → The skill you build BECOMES a retrieval system for that task

## When to Use It

### Perfect For:
- ✅ **Document generation** (specs, decks, proposals, test plans)
- ✅ **Code generation** (API scaffolding, migrations, implementations)
- ✅ **Analysis/decision support** (reviews, assessments, comparisons)
- ✅ **Communication templates** (emails, status reports, meeting agendas)
- ✅ **Planning workflows** (roadmaps, project plans, sprint retrospectives)

### Requirements:
- You do this task **at least weekly**
- The task has a **repeatable pattern**
- The output **matters** (affects others or your work quality)
- You gather the same **information each time**

## How It Works: 3 Phases (30 minutes total)

### Phase 1: Task Discovery (15 min)
Interrogate yourself about your repeated task:

```
Q1: What task do you repeat at least weekly?
Q2: Walk me through your steps today (step-by-step)
Q3: What information do you always need to gather?
Q4: What's GOOD output? Bad output?
Q5: Who uses your output?
```

### Phase 2: Pattern Extraction (10 min)
Define the structure of your skill:

```
Q6: What category? (code gen, document creation, analysis, communication, planning)
Q7: What context does the skill always need? (5-7 pieces of info)
Q8: What questions should the skill ask the user?
Q9: What structure should the output follow?
```

### Phase 3: Skill Generation (automatic)
Get a complete, formatted skill file:

```markdown
---
name: [your-skill-name]
description: [generated from your answers]
version: 1.0
---

# Your Skill

## Overview
[Purpose, capabilities, bootcamp integration]

## Interrogation Framework
[Your questions, formatted as phases]

## Output Format Specification
[Your template structure]

## Example: Complete Workflow
[Worked example of interrogation → output]

## Reflection: What You Built
[RAG system explanation]
```

## Real Example: Test Plan Generator Skill

A QA Lead wants to automate test plan generation:

```
Phase 1: "I create test plans every sprint (2-3 per week).
         I always follow the same process."

Phase 2: "I need feature spec, user flows, edge cases, timeline.
         I ask about scope, test scenarios, test data.
         Output has sections: objectives, scope, scenarios, test cases, sign-off."

Phase 3: [Generated skill file that other QA people can use]
```

Result: A reusable skill that interrogates feature context → generates test plans.

## Using Your Generated Skill

Once you have a skill file, use it like any other bootcamp skill:

### Option 1: Save to Claude Code Library
```bash
~/.claude-code/skills/your-skill-name/SKILL.md
```

### Option 2: Use in Claude Code Projects
Reference it in your project's skill library.

### Option 3: Share with Your Team
Give the SKILL.md file to teammates. They can use it too.

### Option 4: Chain with Other Skills
Combine your skill with other bootcamp skills for workflows:
```
Skill A (generate spec)
  ↓ (output becomes input to)
Skill B (your-skill — generate implementation plan)
  ↓ (output becomes input to)
Skill C (generate test strategy)
```

## The Capstone Reveal

After you generate your skill, you'll see a reflection section:

> **Look at what you just created:**
>
> - It **ASKS questions** → that's retrieval (gathering context)
> - It **ASSEMBLES answers into structured context** → that's augmentation
> - It **FEEDS that context for generation** → that's generation
>
> **You just built a RAG system.**
>
> Every skill is RAG. The AI completing patterns from your context? That's what an LLM does. Why does structured input work better? The model was trained by humans who rewarded that—that's RLHF. You've been doing all three intuitions since the first bootcamp exercise.

This is the moment when you understand that **AI isn't magic, it's patterns**.

## Step-by-Step Walkthrough

### Step 1: Find Your Task
```
Think about your work week. What do you create at least twice a week?
- A document? (spec, deck, proposal, test plan)
- Code? (scaffolding, migrations, API stubs)
- Analysis? (review, assessment, comparison)
- Communication? (email, report, agenda)
- Plans? (roadmap, retrospective, schedule)
```

### Step 2: Understand Your Process
```
Walk through it step-by-step.
What's the first thing you do? Second? Last?

Write it down. This is the skeleton of your skill.
```

### Step 3: Identify Your Context
```
What information do you always need before you start?
(List 5-7 things that change each time but are always needed)

These become the interrogation questions your skill will ask.
```

### Step 4: Define Your Output
```
What does your final output look like?
What sections does it have?
What's the format?

This becomes the template your skill will fill in.
```

### Step 5: Answer the Skill's Questions
```
Go through Phase 1, Phase 2, Phase 3.
Answer each question thoroughly.
The more specific, the better the generated skill.
```

### Step 6: Get Your Skill File
```
You'll receive a complete SKILL.md file.
Review it. Refine it. Save it.
Use it with your team.
```

### Step 7: Iterate
```
As you use your skill, you'll discover improvements:
- Better questions
- Different output format
- New examples
- Refined context requirements

Update your skill. It gets better each time you use it.
```

## FAQ for Bootcamp Participants

**Q: Is the generated skill perfect?**
A: No. It's your starting point. You'll refine it as you use it. That's normal and expected.

**Q: What if my task doesn't fit the 3 phases?**
A: Most do, but some advanced tasks might need customization. Start with the basic framework and extend it.

**Q: Can I build a skill for personal use (not work)?**
A: Absolutely! Recipe generation, travel planning, gift recommendation — anything with a repeatable pattern.

**Q: How do I know if I should build a skill vs. just using a template?**
A: **Build a skill if**: task is complex (20+ min), happens weekly, involves gathering context, output quality matters
**Use a template if**: task is simple, one-off, or fully automated

**Q: Can multiple people use the same skill?**
A: Yes! If your skill captures expertise your team needs, share the SKILL.md file. Others can use it immediately.

**Q: What if I generate a skill and it doesn't work well?**
A: Debug it. Refine the questions. Improve the output template. Skills improve through iteration.

**Q: How does my skill connect to bootcamp patterns?**
A: It connects all of them:
- **Priority Builder** (ABCD): Your task is the Action
- **ReAct** (THINK→ACT→OBSERVE): Your skill uses ReAct
- **RAG**: Your skill IS a RAG system
- **Context is Everything**: The whole skill is about context

**Q: Can I share my skills on a company wiki or team repo?**
A: Yes. Many teams build libraries of reusable skills. Over time, you create organizational leverage.

**Q: What's the difference between this and just using ChatGPT?**
A: ChatGPT without context = generic output. This skill embeds YOUR process, YOUR team's standards, YOUR constraints. Structured interrogation beats freestyle prompting.

## Key Principles

### Principle 1: Rich Context First
The interrogation phase determines everything. More specific answers = better generated skill.

### Principle 2: Your Expertise is Sacred
The skill captures YOUR process and YOUR team's standards, not generic best practices.

### Principle 3: Structure Matters Enormously
Every output is formatted (not prose). That's why it works.

### Principle 4: Iteration Beats Perfection
Your first skill won't be perfect. Use it. Refine it. Version it. Get better each time.

## Integration with Bootcamp

### What You're Learning
This is where everything comes together:

- **Interrogation Workflow** (like Priority Builder, but for skills)
- **ReAct Pattern** (the skill itself uses THINK→ACT→OBSERVE)
- **RAG System** (retrieval + augmentation + generation)
- **Structured Output** (not prose, not free-form)
- **Context is Everything** (the whole skill is about context)

### Skills You Should Know Before This
- Priority Builder (ABCD framework)
- Interrogation fundamentals
- At least one example skill (dev-second-brain, etc.)
- What RAG systems are
- ReAct pattern basics

### After You Build Your First Skill
- You understand how to build organizational AI tools
- You see that "AI" is mostly pattern recognition + context assembly
- You can design skills for any repeatable task
- You can teach others to build skills
- You're ready for advanced composition (chaining skills together)

## Real Skills Built by Past Cohorts

- **Sales Deck Generator** → interrogates product/audience/pricing → generates deck outline
- **Technical Spec Writer** → interrogates feature/stakeholders → generates spec template
- **Code Review Checklist** → interrogates codebase/tech stack → generates custom checklist
- **Customer Interview Guide** → interrogates research goals/hypotheses → generates interview structure
- **Incident Post-Mortem** → interrogates severity/systems/timeline → generates post-mortem template
- **Meeting Agenda Builder** → interrogates meeting goal/attendees/duration → generates structured agenda

## Tips for Bootcamp Facilitators

### When to Introduce
- **End of bootcamp** (Sessions 2-3): Once participants understand patterns
- **1-on-1 coaching**: Help someone build their first skill
- **Advanced track**: For participants who want to build organizational tools

### How to Teach
1. **Show the framework** (3 phases, 9 questions)
2. **Walk the example** (QA Lead building test-plan-generator)
3. **Have them find their task** (Phase 1)
4. **Guide pattern extraction** (Phase 2)
5. **Generate the skill** (Phase 3)
6. **Show the reflection** (RAG explanation)
7. **Have them use it** (with a teammate or real scenario)

### Expected Outcomes
Participants will:
- Generate a complete, usable skill file
- Understand RAG at a deep level (they built one)
- See that skill-building is systematic, not magic
- Start thinking about their work as "patterns to automate"
- Be ready to build skills for their teams post-bootcamp

### Discussion Points
- How interrogation in skills mirrors Priority Builder
- Why structure matters more than prose
- How RAG systems work (you just built one)
- When to build a skill vs. automate differently
- How skills compound organizational leverage

## Composition: Chaining Skills Together

Once you have multiple skills, you can compose them:

```
Phase 1: Use "Tech Spec Generator" skill
  ↓ (output: detailed specification)

Phase 2: Feed that spec to "Implementation Planner" skill
  ↓ (output: step-by-step implementation guide)

Phase 3: Feed that plan to "Test Strategy Generator" skill
  ↓ (output: comprehensive test plan)

Result: Spec → Plan → Tests (all coherent, all derived from common context)
```

Skill composition is where individual tools become organizational systems.

## References

### Bootcamp Framework
- **Priority Builder**: ABCD structured thinking
- **ReAct Pattern**: Yao et al. (2022)
- **RAG Systems**: Lewis et al. (2020)
- **Interrogation Workflows**: Bootcamp proprietary

### Papers
- Yao et al. (2022) "ReAct: Synergizing Reasoning and Acting in Language Models"
- Lewis et al. (2020) "Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks"
- Brown et al. (2020) "Language Models are Few-Shot Learners"

---

## Files

- `SKILL.md` — Full skill definition with framework, example, and all guidance
- `README.md` — This quick-start guide

## Getting Started

### Right Now (5 min):
1. Read this README
2. Think about one task you do weekly
3. Read the "How It Works" section

### Next (30 min):
1. Open SKILL.md
2. Find your task
3. Answer Phase 1 questions (15 min)
4. Answer Phase 2 questions (10 min)
5. Get your generated skill file

### After (ongoing):
1. Save and use your skill
2. Refine it based on usage
3. Share with your team
4. Build more skills
5. Compose them into workflows

---

**Version**: 1.0
**Created**: 2026-03-18
**For**: Joey's Prompt Engineering Bootcamp v2 — Capstone
**Status**: Ready for use

---

## Contact & Questions

Use this skill during bootcamp office hours or in the advanced track. This is the place where individual skills become organizational superpowers.

Welcome to the skill-builders community.
