# Second Brain Bootcamp: From Knowledge Extraction to RAG-Ready Context

**Version:** 1.0
**Philosophy:** Extraction → Composition → Graph-Aware RAG
**Format:** 2 Tiers, ~100 Questions Total, Pragmatic Deliverables

---

## Executive Summary

Most people have domain knowledge trapped in their heads. When they write Jira tickets, prompts, or specs, they produce vague artifacts because they haven't externalized what they know. This bootcamp fixes that through structured interrogation.

| Tier | Name | Pain Point | Deliverable |
|------|------|------------|-------------|
| **1** | Write Better Jira Tickets | Knowledge in head → vague artifacts | Reusable linked note collection |
| **2** | Build a Kickass Prompt File | Prompting from scratch every time | Polished context document for AI |

**The Link Advantage:** Tags give you flat retrieval. Links give you graph traversal — "I asked about X but the system also pulled Y because they're connected." This is why Zettelkasten beats random folders for RAG.

---

## Tier 1: Knowledge Extraction

### Goal
Transform tacit domain knowledge into structured, linked notes that make every future work artifact clearer.

### The Problem
You write a Jira ticket: "Fix the login bug."
- What login? Which flow? What's the expected behavior? What did you try? What constraints exist?
- All that context is in your head, not the ticket.

### The Solution
Interrogation extracts what you know → you structure it into linked notes → those notes become the basis for complete artifacts.

### Deliverable
A Zettelkasten with 20-50 notes covering:
- Your domain/project context
- Key decisions and their rationale
- Constraints and requirements
- Common patterns and anti-patterns
- Stakeholder mental models

### Linking at Tier 1
**Lightweight rule:** When you write a note, ask "what other note does this relate to?" Add 1-2 links. Don't overthink it. Even sparse links create a usable graph.

---

## Tier 1: The 50 Questions

### Section A: Domain Context (10 questions)

1. What project/product are you working on right now?
2. In one sentence, what does it do and who is it for?
3. What's the business problem it solves?
4. Who are the main stakeholders and what do they care about?
5. What's the current state vs. the desired state?
6. What are the 3 biggest constraints you work within? (time, budget, tech, regulatory, etc.)
7. What decisions have already been made that you can't change?
8. What's the history? Why does it look the way it does?
9. What would a new team member need to understand in their first week?
10. What do people outside your team consistently misunderstand about your domain?

**→ Notes to create:** `project-overview`, `stakeholder-map`, `constraints`, `history`, `common-misconceptions`

### Section B: Requirements & Standards (10 questions)

11. What does "done" look like for typical work items?
12. What's the definition of quality in your context?
13. What are the non-negotiable requirements? (security, compliance, performance, etc.)
14. What are the "nice to haves" vs "must haves"?
15. What approval processes exist and who's involved?
16. What documentation standards do you follow?
17. What testing/validation is required before shipping?
18. What are the common acceptance criteria patterns?
19. What gets work items rejected or sent back?
20. What does your QA/review process actually check?

**→ Notes to create:** `definition-of-done`, `quality-standards`, `non-negotiables`, `approval-process`, `common-rejection-reasons`

### Section C: Technical Context (10 questions)

21. What's the tech stack? (even non-technical people: what tools/systems are involved?)
22. What integrations or dependencies exist?
23. What are the known technical constraints or limitations?
24. What's fragile or risky to change?
25. What environments exist? (dev, staging, prod, etc.)
26. What data is involved and where does it live?
27. What are the common technical gotchas?
28. What's the deployment/release process?
29. What monitoring or observability exists?
30. What technical debt are you carrying?

**→ Notes to create:** `tech-stack`, `integrations`, `fragile-areas`, `environments`, `technical-debt`

### Section D: Patterns & Anti-Patterns (10 questions)

31. What's a well-written ticket in your context? (give an example)
32. What's a badly-written ticket? Why did it fail?
33. What patterns keep recurring in your work?
34. What mistakes do people make repeatedly?
35. What shortcuts exist that people should know about?
36. What "obvious" solutions don't actually work and why?
37. What tribal knowledge exists that isn't documented?
38. What questions do new people always ask?
39. What do you wish someone had told you when you started?
40. What's the "right way" to do things vs. what actually happens?

**→ Notes to create:** `good-ticket-example`, `bad-ticket-example`, `recurring-patterns`, `common-mistakes`, `tribal-knowledge`

### Section E: People & Process (10 questions)

41. Who needs to be involved in what types of decisions?
42. Who has context that others lack?
43. What communication norms exist? (async, sync, tools, etc.)
44. What meetings matter and what do they accomplish?
45. What's the escalation path when things go wrong?
46. Who are the bottlenecks and why?
47. What politics or sensitivities should people be aware of?
48. What's the feedback loop for completed work?
49. How do priorities get set and changed?
50. What do you personally know that your team doesn't?

**→ Notes to create:** `decision-matrix`, `key-people`, `communication-norms`, `escalation-path`, `hidden-context`

---

## Tier 1: Exercise Structure

### Exercise 1: The Before/After Ticket

**Step 1:** Write a Jira ticket (or similar artifact) for something you're working on. Time limit: 5 minutes. Don't overthink it.

**Step 2:** Go through the 50 questions. Answer them in note form, linking as you go.

**Step 3:** Rewrite the same ticket, now pulling from your notes.

**Step 4:** Compare. The second ticket should be:
- More specific about the problem
- Clearer about acceptance criteria
- Explicit about constraints and context
- Easier for someone else to pick up

### Exercise 2: Linking Practice

Take 5 notes you've created. For each one:
1. Ask: "What other note does this relate to?"
2. Add the link
3. Write one sentence explaining why they're connected

Goal: Build the habit of lightweight linking.

### Exercise 3: Graph Walk

Pick a starting note. Follow links for 3 hops. Document:
- What notes did you visit?
- What context emerged that you wouldn't have retrieved with a keyword search?

This previews why links matter for RAG.

---

## Tier 2: Knowledge Composition

### Goal
Transform your Tier 1 notes into a structured context document that makes AI actually understand your domain, role, and standards.

### The Problem
You prompt AI from scratch every time. You copy-paste random stuff. The AI gives generic answers because it lacks your context.

### The Solution
Compose your notes into a reusable prompt file → test it against real tasks → iterate until AI outputs require minimal correction.

### Deliverable
A polished context document (CLAUDE.md style, or project prompt) that you reuse across everything.

### Linking at Tier 2
Links become your composition strategy. Your prompt file isn't cherry-picked notes — you **follow the link graph** to pull in related context you'd have forgotten otherwise.

---

## Tier 2: The 50 Questions

### Section F: Current AI Usage (10 questions)

51. What AI tools do you currently use?
52. What do you use them for? (code, writing, analysis, etc.)
53. What works well? What outputs do you actually use?
54. What doesn't work? What outputs do you always have to fix?
55. What context do you repeatedly explain to AI?
56. What do you copy-paste into prompts frequently?
57. What prompts do you reuse vs. write fresh?
58. How much back-and-forth does it take to get useful output?
59. What would "AI understands my context" look like?
60. What's the highest-value task AI could help you with if it had full context?

**→ Notes to create:** `current-ai-workflow`, `what-works`, `what-fails`, `repeated-context`, `high-value-ai-tasks`

### Section G: Role & Identity (10 questions)

61. What's your role? What are you responsible for?
62. What decisions do you make vs. defer?
63. What's your expertise? What do you know deeply?
64. What's your perspective or opinion on how things should be done?
65. What standards do you hold yourself to?
66. What tone/style do you communicate in?
67. What are your pet peeves or non-negotiables?
68. What do you want AI to assume about you?
69. What should AI never assume about you?
70. If AI were your assistant, what would a good one know about you?

**→ Notes to create:** `my-role`, `my-expertise`, `my-standards`, `communication-style`, `ai-assumptions`

### Section H: Output Standards (10 questions)

71. What does good output look like in your context? (examples)
72. What's the format/structure you prefer?
73. What level of detail is right? (terse vs. thorough)
74. What terminology should AI use or avoid?
75. What common AI outputs do you always have to fix?
76. What would make AI output copy-paste ready?
77. What's the review process for AI-generated content?
78. What gets rejected and why?
79. What style guides or standards apply?
80. How do you measure whether AI output was useful?

**→ Notes to create:** `good-output-examples`, `format-preferences`, `terminology`, `common-ai-fixes`, `output-criteria`

### Section I: Task Patterns (10 questions)

81. What types of tasks do you do repeatedly?
82. For each task type: what's the input? What's the expected output?
83. What context does each task type require?
84. What are the common variations within each task type?
85. What's the workflow from request to completion?
86. What templates or structures do you use?
87. What checklists or validation steps exist?
88. What's the 80/20? (20% of tasks that represent 80% of your work)
89. What tasks could be fully automated vs. need human judgment?
90. What's the handoff to the next step?

**→ Notes to create:** `task-catalog`, `task-templates`, `task-workflows`, `high-frequency-tasks`, `automation-candidates`

### Section J: Context Composition (10 questions)

91. Looking at your Tier 1 notes: which are essential for AI to know?
92. Which notes are "always relevant" vs "sometimes relevant"?
93. What's the hierarchy? (most important → least important)
94. What notes should be included by default? What should be pulled in as needed?
95. What's the right "chunk size" for context? (all at once vs. modular)
96. How should notes be ordered for maximum comprehension?
97. What links reveal critical related context?
98. What's the minimal viable context? (smallest set that still works)
99. What's the maximal context? (everything that could help)
100. How do you know when the context document is "done enough"?

**→ Notes to create:** `essential-context`, `context-hierarchy`, `default-inclusions`, `minimal-context`, `context-done-criteria`

---

## Tier 2: Exercise Structure

### Exercise 1: Flat vs. Graph Retrieval

**Setup:** Pick a work task you need to do.

**Round 1 (Tags only):** Search your notes by keyword/tag. Pull the top 5 results. Feed them to AI. Generate output.

**Round 2 (Graph walk):** Start from the same keyword hit. Follow links for 2-3 hops. Pull everything you touched. Feed to AI. Generate output.

**Compare:** The graph version should surface context you didn't think to search for.

### Exercise 2: Build Your Prompt File

Using the Section J questions, compose a context document:

```markdown
# [Your Name]'s Context File

## Who I Am
[Role, expertise, standards — from Section G notes]

## My Domain
[Project context, constraints, stakeholders — from Tier 1 notes]

## How I Work
[Task patterns, workflows, output standards — from Sections H/I notes]

## What Good Looks Like
[Examples, format preferences, terminology — from Section H notes]

## AI Instructions
[What to assume, what to avoid, how to communicate — from Section G notes]
```

### Exercise 3: Test & Iterate

**Step 1:** Take a real task you need to do.

**Step 2:** Use your context document as system prompt / preamble.

**Step 3:** Execute the task with AI.

**Step 4:** Rate the output:
- How much correction was needed?
- What context was missing?
- What context was irrelevant noise?

**Step 5:** Update your context document based on findings.

**Repeat 3-5 times until the document stabilizes.**

### Exercise 4: The Aha Moment

Do the same task twice:
1. First: prompt AI with no context document
2. Second: prompt AI with your context document

The delta demonstrates the value of externalized, composed knowledge.

---

## The Linking Pedagogy

### Why Links Beat Tags

| Tags (Flat) | Links (Graph) |
|-------------|---------------|
| "Show me notes tagged #requirements" | "Show me requirements AND everything connected to them" |
| You get what you asked for | You get what you asked for + related context you forgot |
| Good for known queries | Good for discovery |
| Simple retrieval | Graph traversal |

### The RAG Argument

When your notes feed a RAG system:
- **Tags:** Similarity search finds notes matching your query
- **Links:** Graph traversal pulls in connected context that similarity search misses

This is why structured notes (Zettelkasten) beat random docs. The link structure IS the RAG advantage.

### Linking Rules of Thumb

**Tier 1:**
- 1-2 links per note minimum
- Ask: "What other note does this relate to?"
- Don't overthink — wrong links are better than no links

**Tier 2:**
- Links become composition strategy
- Follow the graph to find context you'd forget
- Your prompt file = curated graph traversal

---

## Assessment Criteria

### Tier 1 Complete When:
- [ ] 20+ notes created covering domain, requirements, patterns, people
- [ ] Each note has 1-2 links minimum
- [ ] Can rewrite a work artifact using notes and it's measurably better
- [ ] Can follow links 3 hops and discover non-obvious context

### Tier 2 Complete When:
- [ ] Context document written using composed notes
- [ ] Tested on 3+ real tasks
- [ ] AI output requires <20% correction (was >50% before)
- [ ] Can articulate why graph retrieval beats flat retrieval
- [ ] Document has stabilized (last 2 iterations = minor tweaks)

---

## Appendix: Note Templates

### Basic Zettel
```markdown
---
id: YYYYMMDDHHMMSS
title: [descriptive title]
tags: [tag1, tag2]
links: [[related-note-1]], [[related-note-2]]
created: YYYY-MM-DD
---

[Content: one idea, explained clearly]

## Why This Matters
[Context for why this note exists]

## Related
- [[link-1]]: [why it's related]
- [[link-2]]: [why it's related]
```

### Decision Note
```markdown
---
id: YYYYMMDDHHMMSS
title: Decision: [what was decided]
tags: [decision, domain-area]
links: [[context-note]], [[affected-note]]
created: YYYY-MM-DD
---

## Decision
[What was decided]

## Context
[Why this decision was needed]

## Options Considered
1. [Option A]: [pros/cons]
2. [Option B]: [pros/cons]

## Rationale
[Why this option was chosen]

## Consequences
[What this enables/prevents]
```

### Context Document (Tier 2 Output)
```markdown
# Context: [Your Name / Project / Role]

## Identity
[Who you are, what you do, what you're responsible for]

## Domain
[What you work on, key constraints, stakeholders, history]

## Standards
[What good looks like, quality bar, non-negotiables]

## Patterns
[Common tasks, workflows, templates]

## Instructions for AI
[What to assume, what to avoid, how to respond]

## Key Context (Auto-Pull)
[Notes that should always be included]

## Extended Context (On-Demand)
[Notes to pull in for specific task types]
```

---

## Appendix: Facilitation Notes

### Time Estimates
- **Tier 1:** 3-4 hours (50 questions + note creation + exercises)
- **Tier 2:** 2-3 hours (50 questions + composition + testing)

### Delivery Options
- **Workshop:** Full-day intensive (both tiers)
- **Split:** Two half-days, one week apart
- **Async:** Self-paced with checkpoints

### Common Sticking Points
1. **"I don't have anything to write"** → Use the questions as prompts; everyone has tacit knowledge
2. **"How do I know what to link?"** → If you thought of it while writing, link it
3. **"My context doc is too long"** → Start with minimal viable context, expand as needed
4. **"AI still doesn't get it"** → Check what context was missing, add notes, recompose

---

*End of Bootcamp Curriculum*
