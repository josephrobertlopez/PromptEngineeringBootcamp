# Developer Second Brain Skill

A Claude Code skill for the **Developer track** of Joey's Prompt Engineering Bootcamp v2.

## What It Is

The **Developer Second Brain** is a specialist assistant that developers use during the bootcamp's role-fork section to learn systematic code development.

It demonstrates the three bootcamp intuitions in a technical context:

1. **Context is everything** — Before suggesting any code, it interrogates your situation (codebase, team conventions, constraints, success criteria)
2. **Structure gets rewarded** — Outputs structured implementation plans, code diffs with reasoning, and test strategies  
3. **You are the retrieval system** — Acts as an automated knowledge retrieval system for your codebase and team patterns

## When to Use It

### Perfect For:
- ✅ **Code migrations** (framework upgrades, language version bumps)
- ✅ **Refactoring** (extract service, decompose monolith)
- ✅ **New feature implementation** (with existing codebase conventions)
- ✅ **Systematic debugging** (root cause analysis, production issues)

### Not For:
- ❌ Quick syntax lookups (use IDE)
- ❌ Simple bug fixes (use IDE refactoring)
- ❌ Variable renames (use IDE)

## How It Works: 3-Step Workflow

### Step 1: Choose Your Scenario
```
"I need to migrate from Python 3.9 to 3.12" 
→ Scenario A: Code Migration

"Our monolith is too big, time to extract services"
→ Scenario B: Refactoring  

"Build new payment module following our patterns"
→ Scenario C: Feature Implementation

"Production is slow, need to find root cause"
→ Scenario D: Systematic Debugging
```

### Step 2: Answer Interrogation (12-15 questions)

The skill asks structured questions about:

- **Current State** (5-7 questions)
  - What language/framework + version?
  - What's your architecture pattern?
  - What's the specific problem?
  - What's the scope?
  - How many developers?

- **Target State** (3-4 questions)
  - How will you know it's working?
  - What constraints exist?
  - What systems does this touch?

- **Implementation Context** (3-4 questions)
  - What's your test pattern?
  - What are your team's conventions?
  - What's your review process?
  - What's your rollback plan?

- **Knowledge Gathering** (2-3 questions)
  - Have you done something similar?
  - What tribal knowledge is critical?
  - Are there limiting decisions?

**Key**: Answer fully. This is where context richness happens. The more you tell it, the better the output.

### Step 3: Get Structured Output

You'll receive:

✅ **Implementation Plan** with ReAct annotations:
```
THINK: Why are we changing this?
ACT: Here's the code change
OBSERVE: How do we verify it works?
```

✅ **Code Diffs** with side-by-side comparisons and reasoning

✅ **Test Strategy** as a matrix (unit, integration, e2e coverage)

✅ **Verification Checklist** (pre-deployment safety checks)

## Using in Bootcamp: Role-Fork Section

### What You're Learning
The skill demonstrates these bootcamp patterns:

1. **ReAct Pattern** (Think → Act → Observe)
   - Real code with reasoning
   - Why we're making changes
   - How to verify it works

2. **Interrogation Workflow** (like Priority Builder, but for code)
   - Structured questions instead of guessing
   - Context assembly before generation
   - Team conventions matter

3. **Structured Output** (not prose)
   - Plans, not narratives
   - Diffs, not rewrites
   - Checklists, not suggestions

### Exercise Progression

**Warm-up** (10 min): Use the skill with a simple scenario
- Pick a basic feature implementation
- Let it interrogate you
- Observe the structure of output

**Main Exercise** (30 min): Use for something realistic
- Choose a real issue from your work (anonymized)
- Complete full interrogation
- Review generated plan and code

**Advanced** (20 min): Combine patterns
- Use skill output with ReAct thinking
- Map to ABCD framework
- Compare your approach vs. skill's approach

## Example Output

### Interrogation Phase
```
Q1: Language/framework?
→ "Python 3.11 + Django 4.2"

Q2: Architecture pattern?
→ "Monolithic Django app with Celery workers"

Q3: What needs to change?
→ "Migrate to async views in Django 5.0"

Q4: Scope?
→ "All 47 views in main app"

Q5: Team conventions?
→ "Snake_case functions, structured logging with JSON, 80% test coverage target"

[continues for 10+ more questions...]
```

### Output Phase: Implementation Plan
```
## Migration Plan: Django 3.2 → 5.0 (async views)

### Phase 1: Preparation
THINK: What needs to be true before we start?
- Tests passing
- Backup created
- Team notified

ACT: Run setup commands
OBSERVE: Verify with automated checks

### Phase 2: Async Migration
THINK: Why async? Better performance + non-blocking I/O

ACT: Convert view functions to async
```python
# Before
def user_profile(request, user_id):
    user = User.objects.get(id=user_id)
    return JsonResponse(user.to_dict())

# After
async def user_profile(request, user_id):
    user = await User.objects.aget(id=user_id)
    return JsonResponse(user.to_dict())
```

OBSERVE: Test with pytest async, verify non-blocking behavior
```

## Key Principles

### Principle 1: Rich Context Before Code
The interrogation phase is critical. More context = better code.

### Principle 2: Structure Matters
Every output includes:
- Why (THINK)
- What (ACT)
- How to verify (OBSERVE)

### Principle 3: Team Conventions Are Sacred
Code respects your naming, error handling, logging, and review patterns.

### Principle 4: Safety First
Every change includes testing, verification, and rollback planning.

## FAQ for Bootcamp Participants

**Q: Will it write all my code?**  
A: No. It writes structure, plans, and guidance. You write the actual code, informed by the plan.

**Q: What if I don't know all the answers?**  
A: That's fine! It will ask follow-up questions. The goal is to build context together.

**Q: How is this different from just prompting an AI?**  
A: The interrogation ensures code respects YOUR team's conventions, YOUR architecture, and solves YOUR actual problem — not a generic version.

**Q: Can I use this with legacy code?**  
A: Yes! It helps you understand what's there and creates a safe refactoring path.

**Q: What if it suggests something that violates our standards?**  
A: Tell it during interrogation: "We use exceptions, not result types" or "Our logging must be JSON." It will adjust.

## Technical Details

**Framework**: Claude Code skill (XML-structured prompting)

**Patterns Used**:
- ReAct (Yao et al. 2022): Reasoning + Acting for complex tasks
- Interrogation Workflow: Context assembly before generation
- Spec-kit: Structured output formats

**Output Formats**:
- Markdown implementation plans
- Python/Java/TypeScript code examples
- YAML test configurations
- Structured checklists

## Files in This Skill

- `SKILL.md` — Complete skill definition and usage guide (this is what Claude Code loads)
- `README.md` — This guide for bootcamp participants

## For Facilitators

### When to Introduce
- **Session 2**: Use in "Advanced Patterns" discussion
- **Role-Fork Exercise**: Have developers use this skill
- **Post-Bootcamp**: Reference for on-the-job application

### Discussion Points
1. How interrogation builds context (like Priority Builder pattern)
2. How ReAct pattern appears in code planning
3. How structured output (plans, diffs, tests) beats freestyle prose
4. When to use systematic approach vs. IDE shortcuts

### Expected Outcomes
Participants will:
- Understand systematic code development
- Recognize ReAct pattern in technical domain
- See value of structured interrogation
- Generate production-quality code with confidence

---

**Version**: 1.0  
**Created**: 2026-03-18  
**For**: Joey's Prompt Engineering Bootcamp v2 — Developer Track  
**Status**: Ready for use in role-fork section
