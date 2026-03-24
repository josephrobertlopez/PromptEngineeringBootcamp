# Delivery Lead Second Brain Skill

**Status**: Ready for use in bootcamp (Session 3: Delivery Patterns)

## Quick Start

This skill helps Delivery Leads make better decisions by systematically gathering context before generating strategies.

### The Three Bootcamp Intuitions

1. **Context is everything** — Rich context beats generic advice
2. **Structure gets rewarded** — CSVs and matrices beat narratives
3. **You are the retrieval system** — Automate your knowledge assembly

### Four Scenarios

Choose based on what you need:

- **Scenario A**: Build FY26 priorities (CSV + ABCD reflections)
- **Scenario B**: Onboard team / capture knowledge (ADRs + phased plan)
- **Scenario C**: Create client status report (RAG + risks + asks)
- **Scenario D**: Assess delivery risks systematically (risk matrix + mitigations)

### How It Works

1. **You choose a scenario** ("I need to build Q1 priorities")
2. **Skill interrogates you** (14-17 questions about team, client, project, risks)
3. **You answer fully** (this is where the magic happens)
4. **Skill generates output** (ready to use — CSV, matrices, reports)

## Why It Works

### Problem: Delivery Leads Make Decisions with Incomplete Context
- Priorities are built in a meeting with 20% of the info
- Status reports are hand-written last-minute
- Risk assessment is "things I'm worried about"
- Onboarding is inconsistent (whoever's available)

### Solution: Systematic Interrogation
- Ask the right 15 questions, get complete context
- Structure the output (matrices, CSV, checklists)
- Verify with metrics (not gut feel)
- Repeat for consistency

## Example Usage

**Scenario A: FY26 Priority Building**

You: "I need to create Q1-Q3 priorities for a $2.3M digital transformation project"

Skill: "Great! Let me ask 15 questions to understand your project deeply..."

→ Asks about team (size, skills), client (stakeholders, decision-making), scope (deliverables, timeline), methodology, risks, dependencies

You: [Answer all 15 questions fully]

Skill: Generates...
```csv
Priority,Action,Behavior,Context,Delivered,Owner,Timeline,Metrics
"Q1 Platform","Build data pipeline","95% test coverage","Unblocks Q2 work","Production-ready","[Name]","Jan-Feb","<15min latency"
```

✅ Ready to load into Workday
✅ Steering committee-ready
✅ Team can execute against it

---

**Scenario B: Team Scaling**

You: "I'm onboarding 3 new engineers and want to make sure they understand the project"

Skill: Generates week-by-week onboarding plan with checkpoints, plus ADR template for documenting team decisions

✅ Consistent onboarding
✅ New people ramp faster
✅ Knowledge captured for future hires

---

**Scenario C: Client Status Report**

You: "I need to report project health to the steering committee this Friday"

Skill: Generates full status report with RAG status, milestone tracker, risks, escalations, next week plan

✅ No more last-minute writing
✅ Consistent format
✅ Covers what steering cares about

---

**Scenario D: Risk Assessment**

You: "Too many risks. I need a systematic way to identify, assess, and mitigate them"

Skill: Generates risk matrix (probability × impact), mitigation plans, owners, timelines

✅ Comprehensive view
✅ Prioritized by impact
✅ Clear accountability

## Key Principles

### 1. Interrogation is the secret
The questions are designed to extract the context you already know but haven't articulated. Your answers are where the value lives.

**Bad**: "Just generate me priorities"
**Good**: "Let me ask you 15 questions about your project so I generate the RIGHT priorities"

### 2. Structure beats narrative
The outputs are:
- CSV files (load into systems)
- Matrices (easy to understand at a glance)
- Checklists (verify completion)
- Metrics (measure progress)

NOT: "Here are some thoughts on your priorities..."

### 3. ReAct pattern for delivery
Every recommendation includes:
- **THINK**: Why are we recommending this?
- **ACT**: Here's the specific action
- **OBSERVE**: How do we verify it's working?

This drives accountability.

### 4. Organizational awareness
The skill respects:
- Your client's decision-making style
- Your team's capacity and skill gaps
- Your portfolio and competing priorities
- Your organization's change readiness

You provide this context in interrogation → skill factors it into recommendations.

## How to Use in Bootcamp

### For Session 3: Delivery Patterns (Facilitator)
1. **Demo Scenario A** (Priority Building) with a real example ($2.3M project)
2. **Show the interrogation flow** — emphasize how questions unlock context
3. **Walk through the output** — CSV, risk matrix, status report
4. **Discuss Design Principles** — why interrogation beats guessing

### For Role-Fork Exercise (Participant)
**Role**: You are a Delivery Lead on a $1.5M project in Month 2

**Task**: Use Scenario A to build Q2 priorities for your team

**Expected outcome**:
- Understand how to gather context before deciding
- See ReAct pattern in delivery (THINK/ACT/OBSERVE)
- Generate a realistic set of priorities that impress leadership

---

## Files in This Skill

```
dl-second-brain/
├── SKILL.md          (Complete skill documentation — 700+ lines)
├── README.md         (This file — usage guide)
```

## Integration with Other Skills

### Combined with `dev-second-brain`
DL uses dev-second-brain for technical deep-dives on specific features
DL uses this skill for overall program strategy and delivery

### Combined with `bootcamp-patterns`
- ReAct pattern: THINK/ACT/OBSERVE (same in both skills)
- Persona pattern: Different personas for different deliverables
- Few-shot learning: Learning from past project patterns

---

## FAQ

**Q: How long does an interrogation take?**
A: 30-45 minutes if you answer fully. Worth it for priorities you'll live with for 90 days.

**Q: Can I skip some questions?**
A: You could, but interrogation is the value. Skipping questions = less context = weaker output.

**Q: Do I need to answer in a specific format?**
A: No. Natural language is fine. The skill will extract what it needs.

**Q: What if I don't know the answer to a question?**
A: That's useful! It tells you what you need to find out. Tell the skill: "I don't know yet, here's what I need to find out..."

**Q: Can I use this for a subcontractor delivery?**
A: Yes. Adjust the stakeholder map and organizational context in Phase 2 interrogation.

**Q: How do I know the output is good?**
A: Check against three criteria:
1. Does it reflect the context I described? (If no, interrogation missed something)
2. Is it specific and actionable? (If it's vague, interrogation was too shallow)
3. Would a stakeholder be impressed by this? (If no, it's not structured enough)

---

## Example Outputs

### Priority CSV (Ready for Workday)
See SKILL.md → Example section for full real example showing $2.3M project with 5 priorities mapped to Q1-Q3

### Risk Matrix (Ready for Steering)
| Risk | Probability | Impact | Mitigation | Owner |
|------|-------------|--------|-----------|-------|
| Data quality issues | High | High | Cleansing by Feb 1 | Tech Lead |
| Adoption failure | Medium | Critical | Champions + training | PM |

### Status Report (Ready to Send)
```
Weekly Status Report
Project: Digital Transformation
Overall Status: 🟢 GREEN
Milestone Progress: [Table]
Escalations: [List]
Next Week: [Plan]
```

### Onboarding Plan (Day-by-day)
| Day | Activity | Owner | Duration |
|-----|----------|-------|----------|
| 1 | Project context intro | DL | 2h |
| 2 | Client stakeholder map | Account exec | 1.5h |
| 3-5 | Shadow ceremonies | Team | 5h |

---

## Design Philosophy

This skill reflects three bootcamp intuitions:

### 1. Context is Everything
Bad DLs make decisions in a meeting with 20% info.
Good DLs interrogate first, decide later.
This skill forces interrogation.

### 2. Structure Gets Rewarded
Bad DLs send Word docs with narrative.
Good DLs send CSV, matrices, checklists.
Steering committee appreciates structure.

### 3. You Are the Retrieval System
Bad DLs wait for people to tell them what's happening.
Good DLs systematically retrieve context from team, client, risk register, org.
This skill automates that retrieval.

---

## Bootcamp Version

- **For**: Joey's Prompt Engineering Bootcamp v2
- **Track**: Delivery Leadership
- **Session**: Session 3 (Delivery Patterns)
- **Status**: Ready for facilitator demo + participant exercise
- **Version**: 1.0
- **Created**: March 2026

---

## Next Steps

1. **Read SKILL.md** — Full documentation with four scenarios
2. **Pick a scenario** — Which one matches your current need?
3. **Run interrogation** — Answer the 15 questions
4. **Get output** — CSV, matrix, or report ready to use
5. **Execute** — Follow the plan with team confidence

**For bootcamp participants**: Use this in Session 3 role-fork exercise to experience how structured interrogation beats gut feel on delivery decisions.

---

**Questions?** Review the SKILL.md FAQ section or reference the complete example workflow for $2.3M project.
