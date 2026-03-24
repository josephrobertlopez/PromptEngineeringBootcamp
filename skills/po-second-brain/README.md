# PO/PM Second Brain Skill

## Quick Start

**What is this?** A Claude Code skill that turns you into a structured product management expert using interrogation-driven workflows.

**What can it do?**
- 📋 Capture requirements as structured user stories with acceptance criteria
- 📊 Plan sprints with capacity planning and dependency mapping
- 📢 Generate stakeholder reports with executive summaries and risk registers
- 🗺️ Prioritize roadmaps using value/effort/risk scoring

**When should I use it?**
- "I have stakeholder feedback, need to turn it into user stories"
- "Help me plan next sprint from our backlog"
- "I need to brief executives on Q2 progress and risks"
- "We have 20 features, help me prioritize them"

---

## How It Works

### The Three Bootcamp Intuitions

1. **Context is everything** — The skill asks 25 deep questions before generating anything. Rich context = better artifacts.
2. **Structure gets rewarded** — Output is always structured: user stories, sprint backlogs, roadmaps, reports. Not prose.
3. **You are the retrieval system** — The skill helps you assemble and organize project knowledge automatically.

### The Interrogation-Driven Workflow

```
You describe your challenge
    ↓
Skill asks 25 contextual questions
    ↓
You answer fully (this is the magic moment)
    ↓
Skill generates structured artifacts
    ↓
You align the team & execute
```

### The Spec-Kit Methodology

Every output follows **Knowledge → Specification → Plan → Execution**:

- **Knowledge**: What did the interrogation teach us?
- **Specification**: What are we building? (User stories with acceptance criteria)
- **Plan**: How will we build it? (Sprint backlog, timeline, dependencies)
- **Execution**: Who does what? (Ownership, estimates, burn-down)

---

## Four Usage Scenarios

### Scenario A: Requirements Capture
**When**: You have stakeholder conversations, need structured user stories
**What you get**: User stories with Given/When/Then acceptance criteria, edge cases, dependencies

**Example**: "Our customer success team said onboarding takes 4 weeks, needs to be 2 weeks"
→ Get user stories for calendar booking, settings, data upload, reports

---

### Scenario B: Sprint Planning
**When**: You need to break epics into stories and plan 2-week sprint
**What you get**: Sprint backlog with estimates, capacity check, dependency graph, burn-down projection

**Example**: "We have 15 stories in the backlog, need to fit them into next sprint"
→ Get prioritized backlog, capacity analysis, risk register, day-by-day burn-down

---

### Scenario C: Stakeholder Communication
**When**: You need to brief executives, steering committee, or leadership
**What you get**: Executive summary, progress metrics, risk register with mitigations, clear asks

**Example**: "CEO wants to know where we stand on Q2 roadmap"
→ Get 1-page status report with metrics, risks, mitigation, and resource requests

---

### Scenario D: Roadmap Planning
**When**: You have many features to prioritize across 2-3 quarters
**What you get**: Ranked roadmap with value/effort/risk scores, resource allocation, timeline projections

**Example**: "We have 20 features for next 24 weeks, 1 team of 5, how do we prioritize?"
→ Get ranked roadmap with rationale, resource plan, risk adjustments, timeline

---

## Interrogation Topics

The skill will ask about:

**Business Context** (6-8 questions)
- What are we building and why?
- What's the north star metric?
- Who are the key stakeholders?
- When do we need this?

**Scope & Requirements** (5-7 questions)
- What's in scope vs. out of scope?
- What are the critical user workflows?
- What constraints exist?
- What dependencies are there?

**Team & Capacity** (3-4 questions)
- How many developers, designers, QA?
- What's your team's experience?
- What's your typical sprint velocity?

**Acceptance & Validation** (3-4 questions)
- How do you define "done"?
- How will stakeholders validate?
- What's your rollback plan?

**Knowledge & Decisions** (2-3 questions)
- Are there decisions that limit options?
- What do you wish every PM knew about this?

---

## Output Formats

### User Stories
```
As a [user], I want to [action], so that [benefit]

Acceptance Criteria:
Given [context]
When [action]
Then [outcome]

Edge Cases:
- [scenario 1]
- [scenario 2]

Dependencies:
- [linked stories]

Success Criteria:
- [ ] [testable condition]
```

### Sprint Backlog
- Stories with estimates
- Capacity planning (per person)
- Dependency graph
- Risk register
- Burn-down projection

### Stakeholder Report
- Executive summary (1 paragraph)
- Progress snapshot (what's done, in progress, at risk)
- Metrics dashboard
- Risk register with mitigations
- Clear asks with impact statements

### Prioritized Roadmap
- Features ranked by value/effort/risk
- Resource allocation per quarter
- Timeline projections
- Success metrics per tier
- Risk adjustments

---

## Design Philosophy

### Principle 1: Interrogation Before Generation
Never generate artifacts without understanding:
- What problem are we solving?
- What are the constraints?
- What does success look like?
- What could go wrong?

### Principle 2: Given/When/Then Over Vagueness
Every requirement is testable:
- Given [precondition]
- When [user action]
- Then [system response]

This prevents "I thought it meant something different" conversations.

### Principle 3: Structured Artifacts Over Prose
Output is always structured:
- User story template (not narrative)
- Sprint backlog table (not bullet list)
- Executive report with sections (not long email)
- Prioritized roadmap with scores (not wishlists)

### Principle 4: Team Conventions Matter
The skill asks about your team's:
- Estimation approach (points, T-shirt sizes, time?)
- Definition of Done (code review, tests, deployment?)
- Communication style (async updates, daily standups?)

---

## Example: End-to-End Workflow

**You say:**
> "We need to build a customer onboarding portal. Reduce implementation time from 4 weeks to 2 weeks. Team of 5, hard deadline March 25, 3 pilot customers."

**Skill interrogates (you answer fully):**
- What's the north star metric? "70% of new customers self-onboard without support"
- Current state? "Support team does Zoom calls for setup"
- Key workflows? "Login, settings, upload data, run report, invite team"
- Constraints? "Use existing auth, no new infrastructure"
- Team experience? "Backend solid, frontend new to React"
- Done when? "Code review approved, >80% tests, pilot tested"

**Skill generates:**

✅ **5 User Stories** with acceptance criteria:
- Create Account & Login (5 pts)
- Configure Settings (8 pts)
- Upload Data (13 pts)
- Run First Report (8 pts)
- Invite Team Members (4 pts)

✅ **Sprint Backlog** with capacity:
- Alice (frontend): 13 pts (can handle 8 — overallocated, defer one story)
- Bob (backend): 13 pts (can handle 8 — overallocated, defer one story)
- Carol (backend): 12 pts (can handle 8 — overallocated)
- David (backend): 8 pts (at capacity)
- Eve (QA): 4 pts (can take more)
- **Action**: Defer "Invite Team" to next sprint

✅ **Dependency Graph**:
- Login → Settings → Upload Data → First Report
- Invite Team can start after Login

✅ **Risk Register**:
- Data provider contract signed? (expected March 18)
- Report templates ready? (expected March 15)
- Over-committed team (FIXED: defer one story)

✅ **Burn-Down Projection**:
- Day 1-3: Heavy progress (38→20 pts)
- Day 4-5: Testing phase (20→8 pts)
- Day 6-7: Final polish (8→2 pts)
- Day 8-10: 6-point buffer

✅ **Stakeholder Report**:
- Status: 🟢 On Track
- Progress: Account creation ✅, Settings 80% 🔵, Data upload starts tomorrow ⏳
- Ask: Keep team allocation through March 25 launch
- Risks: Contract & templates on track; team over-allocated (mitigated)

---

## When to Use This Skill

✅ **Use this skill for:**
- Multi-story feature planning (3+ stories)
- Cross-team dependencies
- Stakeholder alignment meetings
- Roadmap decisions affecting 2+ quarters
- Complex scope with many unknowns
- Requirements gathering from multiple inputs

❌ **Don't use this skill for:**
- Quick one-line task ("Fix typo in error message")
- Single-story implementation ("Add logout button")
- Time-sensitive decisions (this takes 30 minutes of interrogation)
- Situations where you already have structured requirements

**Best return on investment**: 30-60 minute interrogation + 15 minute artifact review = crystal-clear alignment for 2+ weeks of team work.

---

## Integration with Bootcamp

This skill demonstrates:
- **Session 1 (Spec-Kit)**: Knowledge → Specification → Plan → Execution
- **Session 2 (Patterns)**: Interrogation as a pattern, Given/When/Then format
- **Session 3 (Applied)**: Real-world PO/PM use cases

**Use in role-fork exercises** where you're playing "Product Owner" or "Scrum Master" roles.

---

## Common Questions

**Q: Does this replace my project management tool?**
A: No. This skill generates content *for* your PM tool (Jira, Linear, Asana). Use the skill to think clearly, then transcribe into your tool.

**Q: Can I use this for non-software products?**
A: Yes. The framework (interrogation + spec-kit) works for any product with stakeholders, scope, constraints, and timeline.

**Q: What if my team's estimation is different?**
A: Tell the skill: "We estimate with T-shirt sizes (S/M/L/XL)" or "We time-box in days." It will adjust.

**Q: How long does interrogation take?**
A: 30-45 minutes. This is intentional — you're thinking deeply, which prevents costly re-work later.

**Q: Can I interrupt interrogation?**
A: Yes. The skill will adapt. If you don't know an answer, say "I don't know yet" and move on.

---

## Related Skills

- **dev-second-brain**: For developers tackling code migrations, refactoring, debugging
- This skill (**po-second-brain**): For PMs/POs capturing requirements, planning, communicating
- Future: **design-second-brain**: For designers creating specs, systems, prototypes

All three follow the same pattern: interrogate → structure → execute.

---

## Files in This Directory

- **SKILL.md** — Full skill specification with examples, scenarios, output formats, design principles
- **README.md** — This file (quick start guide)

---

## How to Invoke

**In Claude Code:**
```
Use the po-second-brain skill

I need to capture requirements for our customer onboarding portal...
[describe your challenge]
```

The skill will:
1. Confirm which scenario fits your need
2. Ask 25 contextual questions
3. Generate structured artifacts
4. Guide you through alignment

---

## Support & Feedback

This skill is part of **Joey's Prompt Engineering Bootcamp v2**.

Questions or improvements? Let Joey know — the skill learns from real-world usage.

---

**Version**: 1.0
**Last Updated**: 2026-03-18
**Status**: Production-ready
**For**: POs, PMs, Scrum Masters, Team Leads
