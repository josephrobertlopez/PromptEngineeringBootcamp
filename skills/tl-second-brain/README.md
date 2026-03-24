# Tech Lead Second Brain Skill

A Claude Code skill for technical leaders making systematic architecture decisions, building team standards, and creating metaprompts.

## Quick Start

### Choose Your Use Case

**Option A: Make a Major Architecture Decision**
```
Use this skill to evaluate 3+ options systematically
Output: ADR with Tree of Thoughts evaluation, risk assessment, implementation roadmap
Example: "Should we migrate to microservices or use strangler fig pattern?"
```

**Option B: Codify Team Standards**
```
Use this skill to build .cursorrules, .windsurfrules, or team standards documentation
Output: Patterns, anti-patterns, code examples, review checklist
Example: "Our team needs shared standards for async/await, error handling, logging"
```

**Option C: Create Team Prompts**
```
Use this skill to build metaprompts (prompts that generate prompts)
Output: Hierarchical prompts with role-specific branches
Example: "Create a metaprompt for 'Caching Strategy Design' that generates engineer-specific guidance"
```

**Option D: Plan Technical Investigation**
```
Use this skill to scope investigation work with decision gates and time-boxes
Output: Spike plan with phases, success criteria, decision gates, realistic time estimate
Example: "Should we invest in Kubernetes? Need to understand before committing."
```

## How It Works

### 1. Interrogation (Context Building)
The skill asks 15-17 targeted questions about:
- Current system architecture and constraints
- Team composition and technical maturity
- Business drivers and success metrics
- Non-functional requirements (scale, latency, availability)
- Organizational context and change appetite

### 2. Structured Analysis
Depending on your scenario, the skill generates:
- **Tree of Thoughts**: 3+ fundamentally different options evaluated fairly
- **Risk Assessment**: Honest pro/con/risk analysis for each option
- **Decision Rationale**: Why we chose this option and what we're accepting
- **Implementation Roadmap**: Concrete next steps with timeline

### 3. Artifacts for Communication
The output is designed to be shared directly with:
- Executive leadership (ADR document)
- Engineering teams (implementation roadmap)
- New team members (standards file)

## The Three Bootcamp Intuitions

This skill demonstrates the three core bootcamp intuitions for tech leaders:

### 1. Context is Everything
**Principle**: Never recommend a pattern without rich context

- Interrogate thoroughly (15-17 questions)
- Understand constraints, team capabilities, organizational appetite
- Consider what this organization can realistically execute

### 2. Structure Gets Rewarded
**Principle**: Use structured formats, not loose prose

- Architecture Decision Records (context → decision → options → consequences)
- Decision matrices (option A vs B vs C across criteria)
- Risk registers (what could go wrong, probability, impact, mitigation)
- Implementation roadmaps (timeline, responsibilities, dependencies)

### 3. You Are the Retrieval System
**Principle**: Automate the assembly of architectural knowledge

- Gather team expertise (interrogation questions)
- Surface constraints and assumptions
- Create team standards that guide future decisions
- Build metaprompts that amplify team capabilities

## Key Patterns

### Tree of Thoughts (Core Architecture Pattern)
**Goal**: Evaluate 3+ fundamentally different options

```
GENERATE: What are 3 different approaches? (Not variations on one idea)
EVALUATE: What are pros/cons/risks of each?
DECIDE: Which best fits constraints and team capability?
```

This prevents premature convergence on a familiar option and forces honest trade-off analysis.

### ReAct Pattern (Technical Investigation)
**Goal**: Systematically scope investigation work

```
THINK: What do we need to learn?
ACT: Run spike, gather data, build POC
OBSERVE: Did we learn enough to decide?
```

### Metaprompting (Team Amplification)
**Goal**: Create prompts that generate role-specific prompts

```
Level 1: "Design our caching strategy"
  → Generates for backend engineers: "Implement cache client"
  → Generates for DevOps: "Design Redis cluster"
  → Generates for QA: "Test cache scenarios"
  → Generates for Security: "Handle sensitive data in cache"
```

## Example: Banking System Modernization

### Your Question
"We have a legacy banking system (Java monolith, 500K lines, 50 teams).
Should we decompose it or use strangler fig pattern?"

### Skill Interrogates (15 questions)
- Current: monolith, Java 8, 100K trans/day, 1ms latency requirement
- Team: 50 Java engineers, no distributed systems experience
- Constraints: 18-month timeline, <5min downtime, $500K budget
- Goal: weekly deploys, 3x feature velocity, 80% fewer outages

### Skill Generates

**Option A: Big Bang Rewrite to Microservices**
- Pros: Clean slate, true decoupling, independent deployments
- Cons: 18-month timeline too tight, requires experts we don't have
- Risk: High — will slip to 24-30 months, team burnout

**Option B: Strangler Fig (Incremental)**
- Pros: Incremental validation, can stop anytime, leverage existing expertise
- Cons: Temporary duplication, database coupling longer
- Risk: Medium — gateway bottleneck, database refactoring delayed

**Option C: Modularize Monolith First**
- Pros: Uses team expertise, no parallel system, lower infrastructure cost
- Cons: Doesn't solve deployment problem, tightly coupled at runtime
- Risk: High — organizational complacency, never extracts microservices

### Decision
**Choose: Option B (Strangler Fig)**

**Why**:
- 18-month timeline achievable (vs. slipping with big bang)
- Leverages Java expertise, gradual learning curve for distributed systems
- Monthly wins visible, can validate each service before next
- Team can continue shipping while modernizing

### Output
- ADR document (shared with leadership)
- Implementation roadmap (7 services, 18-month plan)
- Risk mitigation strategy (gateway bottleneck, database refactoring)
- Team communication templates

## File Structure

```
tl-second-brain/
├── SKILL.md          # Full skill documentation
├── README.md         # This file
└── examples/         # (Optional) Example ADRs and standards files
```

## When to Use This Skill

| Situation | Use This Skill |
|-----------|---|
| Making a major architecture decision | ✅ Yes |
| Evaluating 3+ options fairly | ✅ Yes |
| Documenting decision rationale | ✅ Yes |
| Building team technical standards | ✅ Yes |
| Creating team-specific AI prompts | ✅ Yes |
| Scoping technical investigation | ✅ Yes |
| Communicating with leadership | ✅ Yes |
| Quick syntax question | ❌ No |
| Code review comment | ❌ No |
| Whiteboard brainstorm | ❌ No |

## Integration with Bootcamp

This skill is designed for **Joey's Prompt Engineering Bootcamp v2 — Tech Lead Track**.

### Learning Outcomes
- Understand how structure improves decision quality
- Master Tree of Thoughts for architecture decisions
- Learn metaprompting for team amplification
- See ReAct pattern in technical investigation
- Create production-quality ADRs and team standards

### Role-Fork Exercise
In a role-fork scenario where you're the "Tech Lead," use this skill to:
1. Make an architecture decision (Scenario A)
2. Create metaprompts for your team (Scenario B)
3. Plan technical investigation (Scenario C)
4. Codify team standards (Scenario D)

## Design Philosophy

### No Generic Advice
This skill doesn't give generic answers. It interrogates your specific context first.
- What problem does your organization face?
- What constraints are real?
- What can your team realistically execute?
- What are you willing to risk?

### Multiple Perspectives Required
Tree of Thoughts forces honest evaluation of trade-offs. You can't hide from risk.
- Option A is best for scalability but requires hiring
- Option B is best for timeline but creates technical debt
- Option C is safest but doesn't solve the problem

Choose with eyes open.

### Structure Enables Communication
A well-structured ADR becomes:
- Reference document for new engineers
- Justification for decisions made
- Foundation for follow-up decisions
- Input to team standards and patterns

### Metaprompting Amplifies Team
Rather than being a bottleneck, tech leads create prompts that help the team make better decisions autonomously.

## Implementation Notes

This skill works best when you:

1. **Answer interrogation questions fully**
   - "Limited experience" is better than "no"
   - "Loose coupling is important" is better than "just good code"
   - Real constraints beat theoretical ideals

2. **Evaluate options honestly**
   - Don't dismiss an option too quickly
   - Every option has merits and drawbacks
   - Risk acceptance is explicit, not hidden

3. **Communicate the decision**
   - Share the ADR with stakeholders
   - Explain the rationale, not just the outcome
   - Publish team standards so they guide future work

4. **Revisit periodically**
   - ADRs are not forever
   - Conditions change; decisions should too
   - Metaprompts need updating as team evolves

## FAQ

**Q: Will this make decisions for me?**
A: No. It structures your thinking and gathers context. You decide. But you'll have better information.

**Q: How long does this take?**
A: Interrogation phase: 30-45 min. Analysis and writing: 1-2 hours. Total: 2-3 hours for a major decision.

**Q: Can I use this with my team?**
A: Absolutely. You can interrogate the team together, then refine the output collaboratively.

**Q: What if my team doesn't agree with the decision?**
A: Use the ADR to discuss trade-offs. Different teams will weight risks differently.

**Q: How do I handle FOMO — what if we pick wrong?**
A: The ADR documents what you're accepting. If context changes, you revisit the decision.

## Contact & Feedback

This skill is part of Joey's Prompt Engineering Bootcamp v2.

For feedback or improvements, open an issue or contact the bootcamp facilitators.

---

**Version**: 1.0
**Created**: 2026-03-18
**For**: Tech Lead Track, Joey's Prompt Engineering Bootcamp v2
