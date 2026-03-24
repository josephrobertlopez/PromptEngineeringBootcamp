# Spec-Driven Development Bootcamp: Curriculum Roadmap

## Overview

### Purpose
This bootcamp teaches intermediate AI tool users to transition from "vibe-coding" (ad-hoc prompting) to systematic spec-driven development. By grounding learners in composition intuition and the spec folder pattern, they'll gain a portable, environment-agnostic approach that works across all AI tools.

### Target Audience
- Intermediate AI tool users (ChatGPT, Copilot, Claude, Gemini)
- Mix of business and technical roles
- Already comfortable with basic prompting
- Want systematic approaches for complex projects
- Need to maintain work across conversation boundaries

### Learning Outcomes
By completing this bootcamp, learners will:
1. Understand composition as the core mechanism of AI-assisted development
2. Control WHAT, WHEN, and HOW context is loaded
3. Create and maintain spec folder artifacts (KNOWLEDGE, SPEC, PLAN)
4. Chain prompts and compose templates with dynamic context
5. Scale their approach to any AI environment (agent or edit mode)
6. Connect to industry tools (GitHub spec-kit, Kiro, Tessl)

---

## The Teaching Philosophy

### Foundation First: Composition Intuition
We teach composition as the **fundamental principle**, not just a technique. Every pattern in spec-driven development derives from one constraint: **LLM context is finite**.

This curriculum follows the intuition stack:
```
1. Context is finite
   ↓
2. Control WHAT, WHEN, HOW you load
   ↓
3. Conversations emit artifacts as byproducts
   ↓
4. Artifacts can be loaded, chained, composed
   ↓
5. Template + Dynamic Context = Novel Output
```

### Implementation: Spec Folder Pattern
Once composition intuition is established, we teach the **spec folder pattern** as the primary implementation:
- KNOWLEDGE.md → "Why do we do it this way?"
- SPEC.md → "What are we building?"
- PLAN.md → "How do we build it?"

These three files are **composable artifacts** that survive conversation death.

### Industry Connection
Throughout the curriculum, we connect our patterns to real industry tools:
- **GitHub spec-kit** (2024): Open source toolkit for spec-driven AI development
- **Kiro** (2024-2025): Agentic IDE with native spec-driven workflow
- **Tessl** (2025): Spec-as-source framework with $125M backing

This grounds the theory in production-grade implementations and shows learners they're learning industry-relevant patterns.

---

## Session 1: The Composition Foundation

**Duration**: 90 minutes

### Learning Objectives
By the end of this session, learners will be able to:
- Explain why LLM context limits drive all AI-assisted development patterns
- Identify the difference between fighting context and designing around it
- Articulate the intuition stack (5 levels)
- Recognize artifacts vs. conversations

### Key Concepts
1. **The Root Constraint**: LLM context is finite
2. **Fighting vs. Designing**: Two approaches to context limits
3. **Conversations are ephemeral**: They produce artifacts, not store them
4. **The Intuition Stack**: From constraint to composition

### Hands-on Exercise (30 min)
**Exercise: Context Death Simulation**

Learners experience context degradation firsthand:

1. Start a conversation with their preferred AI tool
2. Load a large document or multiple files
3. Continue asking questions and adding context
4. Observe quality degradation
5. Attempt to recover by summarizing
6. Start fresh conversation and load only what's needed
7. Compare quality and clarity

**Reflection prompts**:
- When did you notice quality dropping?
- What happened when you tried to recover?
- How did the fresh conversation with surgical loading compare?

### Takehome Exercise (45 min)
**Exercise: Artifact Audit**

Learners audit their recent AI conversations:

1. Review your last 5 AI conversations
2. For each, identify:
   - What artifacts were produced (if any)
   - What context was lost when conversation ended
   - What you had to re-explain in follow-up conversations
3. Choose one conversation and extract:
   - Decisions made → list them
   - Requirements surfaced → list them
   - Plans created → list them
4. Write a brief reflection: "What artifacts should have survived?"

**Deliverable**: A markdown file listing:
- Conversation summaries
- Artifacts identified (or missing)
- Reflection on what should survive

### Artifacts Produced
- Personal reflection document
- List of artifacts from past conversations
- Understanding of conversation ephemerality

---

## Session 2: The Three Controls

**Duration**: 90 minutes

### Learning Objectives
By the end of this session, learners will be able to:
- Control WHAT context to load for different task types
- Determine WHEN to load context (just-in-time vs. upfront)
- Choose HOW to load context (raw, summary, extracted, synthesized)
- Apply surgical context loading to a real task

### Key Concepts
1. **WHAT to Load**: Task-specific context selection
2. **WHEN to Load**: Just-in-time loading pattern
3. **HOW to Load**: Structure determines utility
4. **Evidence from Research**: "Lost in the Middle" findings

### Hands-on Exercise (30 min)
**Exercise: Surgical Loading Practice**

Learners practice loading context for different tasks:

Given a sample project with:
- DECISIONS.md (past architectural choices)
- REQUIREMENTS.md (user stories and criteria)
- TASKS.md (implementation plan)

Practice these scenarios:
1. **Scenario A**: You need to understand why we chose PostgreSQL over MongoDB
   - What do you load? (DECISIONS.md only)
   - When do you load it? (When the question arises)
   - How do you load it? (Search for database mentions)

2. **Scenario B**: You're implementing user authentication
   - What do you load? (REQUIREMENTS.md for auth requirements, TASKS.md for current step)
   - When? (Just before starting implementation)
   - How? (Extract auth section from requirements, current task from plan)

3. **Scenario C**: You're planning the next phase
   - What? (REQUIREMENTS.md + DECISIONS.md)
   - When? (Before writing TASKS.md)
   - How? (Summary of requirements, full decisions for constraints)

**Group discussion**: Compare loading strategies

### Takehome Exercise (60 min)
**Exercise: Context Loading Matrix**

For your own project or domain, create a context loading matrix:

| Task Type | Load What | Load When | Load How | Why |
|-----------|-----------|-----------|----------|-----|
| Understanding constraints | ... | ... | ... | ... |
| Checking requirements | ... | ... | ... | ... |
| Executing step | ... | ... | ... | ... |
| Planning phase | ... | ... | ... | ... |
| Evaluating outcome | ... | ... | ... | ... |

Add 3-5 more task types specific to your domain.

**Deliverable**: A markdown file with:
- Your context loading matrix
- 3 example prompts demonstrating surgical loading
- Reflection on how this differs from your current practice

### Artifacts Produced
- Personal context loading matrix
- Domain-specific loading strategies
- Example prompts demonstrating controls

---

## Session 3: The Spec Folder Foundation

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Explain the purpose of each spec folder file (KNOWLEDGE, SPEC, PLAN)
- Create a basic spec folder for a small project
- Apply surgical loading to spec files
- Recognize when conversations should produce which artifacts

### Key Concepts
1. **Three Files, Three Questions**:
   - KNOWLEDGE.md → "Why?"
   - SPEC.md → "What?"
   - PLAN.md → "How?"
2. **Never Load All Three**: Surgical file reading
3. **Conversations Produce Artifacts**: Files survive, conversations don't
4. **Prior Art**: ADRs, BDD, Design Docs, RFCs

### Hands-on Exercise (45 min)
**Exercise: Spec Folder Creation**

In small groups, learners create a spec folder for a sample project:

**Project**: Build a simple expense tracking feature

1. **Phase 1** (15 min): Brainstorm decisions
   - What database?
   - What framework?
   - Mobile or web?
   - Authentication approach?

   Create KNOWLEDGE.md capturing decisions with rationale

2. **Phase 2** (15 min): Define requirements
   - User stories
   - Acceptance criteria
   - Edge cases

   Create SPEC.md with requirements

3. **Phase 3** (15 min): Plan implementation
   - Phases
   - Tasks per phase
   - Verification steps

   Create PLAN.md with structure

**Gallery walk**: Groups present their spec folders

### Takehome Exercise (90 min)
**Exercise: Your Domain Spec Folder**

Create a spec folder for a project in your domain:

1. Choose a small, well-understood feature or capability
2. Create spec-folder/ directory with three files
3. Populate KNOWLEDGE.md:
   - 3-5 key decisions with rationale
   - Domain constraints
   - Patterns to follow
   - Anti-patterns to avoid
4. Populate SPEC.md:
   - User stories or requirements
   - Acceptance criteria
   - Edge cases
   - Success metrics
5. Populate PLAN.md:
   - 2-3 phases
   - 3-5 tasks per phase
   - Verification step per task
   - Dependencies noted

**Test it**: Start a conversation with your AI tool:
- Load only KNOWLEDGE.md
- Ask: "What constraints should I consider for X?"
- Observe if the AI can answer from the file

**Deliverable**: A spec folder with:
- KNOWLEDGE.md (populated)
- SPEC.md (populated)
- PLAN.md (populated)
- Brief reflection on what was easy/hard

### Artifacts Produced
- First complete spec folder for learner's domain
- Experience creating each file type
- Understanding of file purposes

---

## Session 4: The Composition Formula

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Apply the composition formula: Template + Context = Output
- Perform the three operations: Load, Chain, Compose
- Chain multiple prompts together
- Create reusable prompt templates

### Key Concepts
1. **The Formula**: Template + Dynamic Context = Novel Output
2. **Three Operations**:
   - **Load**: Bring artifact into context
   - **Chain**: Output of A → input of B
   - **Compose**: Template + context = new thing
3. **Parameterized Intelligence**: Same template, different context
4. **Evidence**: PromptChainer, Decomposed Prompting research

### Hands-on Exercise (45 min)
**Exercise: Build a Prompt Chain**

Learners create a 3-step prompt chain:

**Goal**: Analyze a codebase feature for security concerns

**Step 1 - Research Prompt**:
```
Template: "Analyze {file} for {concern}"
Context: @auth.js + "security vulnerabilities"
Output: findings.md
```

**Step 2 - Planning Prompt**:
```
Template: "Create remediation plan for {findings}"
Context: @findings.md + KNOWLEDGE.md (security patterns)
Output: remediation-plan.md
```

**Step 3 - Execution Prompt**:
```
Template: "Implement task {task-id} from {plan}"
Context: @remediation-plan.md + specific task
Output: Updated code
```

Practice:
1. Write out each template
2. Identify what context each needs
3. Execute the chain with your AI tool
4. Observe how each step has fresh context

### Takehome Exercise (90 min)
**Exercise: Domain-Specific Prompt Chain**

Create a 3-5 step prompt chain for your domain:

1. Identify a complex task that requires multiple steps
2. For each step, define:
   - Template (the thinking pattern)
   - Context needed (artifacts to load)
   - Output produced (artifact created)
3. Create template files for each step
4. Execute the chain on a real example
5. Document the results

**Example domains**:
- Marketing: Research → Strategy → Content → Review
- Data Analysis: Exploration → Cleaning → Analysis → Visualization
- Product: Discovery → Requirements → Design → Validation

**Deliverable**: A directory with:
- 3-5 prompt template files
- Example execution with real context
- Artifacts produced at each step
- Reflection on chain effectiveness

### Artifacts Produced
- Reusable prompt chain for learner's domain
- Template files ready for reuse
- Understanding of chaining mechanics

---

## Session 5: Behavioral Modes and Task Routing

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Recognize different cognitive patterns (modes) for different tasks
- Apply ABCD clarification mode for ambiguous requirements
- Use progressive disclosure for complex implementations
- Create mode-specific prompts

### Key Concepts
1. **Modes as Cognitive Patterns**: How LLM should think
2. **Five Core Modes**:
   - ABCD Clarification → Capture decisions
   - Planning → Structured decomposition
   - Progressive Disclosure → Layered building
   - Socratic → Guided discovery
   - Spec-Driven Orchestrator → Full workflow
3. **Modes Produce Artifacts**: Each mode outputs to spec files
4. **Research Connection**: Tree of Thoughts, Chain of Thought

### Hands-on Exercise (45 min)
**Exercise: Mode Practice**

Learners practice three modes:

**Part 1 - ABCD Clarification** (15 min):
- Given ambiguous requirement: "Make the app faster"
- Use ABCD mode to present 4 specific options:
  - A) Optimize database queries
  - B) Implement caching layer
  - C) Add CDN for assets
  - D) Reduce bundle size
- Make recommendation with reasoning
- Capture decision in KNOWLEDGE.md

**Part 2 - Progressive Disclosure** (15 min):
- Implement user authentication in 5 layers:
  - Layer 0: Username/password only (happy path)
  - Layer 1: Basic error handling
  - Layer 2: Password validation and hashing
  - Layer 3: Session management
  - Layer 4: OAuth integration
- Build Layer 0 first, verify, then add layers

**Part 3 - Socratic Mode** (15 min):
- Given: "User wants better reporting"
- Use Socratic questions to surface requirements:
  - What reports do you currently use?
  - What questions do they answer?
  - What questions do they NOT answer?
  - What would "better" look like?
- Capture surfaced requirements in SPEC.md

### Takehome Exercise (90 min)
**Exercise: Create Mode Templates**

Create prompt template files for 3 modes relevant to your domain:

For each mode, create a template that includes:
1. **Purpose**: When to use this mode
2. **Behavior**: How the LLM should think
3. **Input**: What context to load
4. **Output**: What artifacts to produce
5. **Example**: A filled-in example from your domain

**Deliverable**: Directory with:
- 3 mode template files (markdown)
- Examples of each mode applied to your domain
- Reflection on which modes are most valuable for your work

### Artifacts Produced
- 3 reusable mode templates
- Domain-specific mode applications
- Decision-making framework for mode selection

---

## Session 6: Environment Portability and Scaling

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Adapt composition patterns to different AI environments
- Scale spec folders for small context windows (fractal decomposition)
- Distinguish between agent mode and edit mode capabilities
- Apply the same patterns across tools (Claude Code, ChatGPT, Copilot, local LLMs)

### Key Concepts
1. **Environment Constraints Vary**:
   - Agent mode (Claude Code, Cursor): Can execute
   - Edit mode (ChatGPT, Copilot, Ollama): Cannot execute
2. **Same Pattern, Different Granularity**:
   - Large context → Flat spec folders
   - Small context → Fractal decomposition
3. **Execution Inversion**: Converting plans to scripts for edit mode
4. **Tool-Agnostic Approach**: Patterns work everywhere

### Hands-on Exercise (45 min)
**Exercise: Cross-Environment Implementation**

Learners implement the same task across two different environments:

**Task**: Create a PLAN.md and execute first step

**Environment 1 - Agent Mode** (if available):
- Load PLAN.md
- Ask agent to execute step 1
- Agent runs commands/writes code
- Verify completion

**Environment 2 - Edit Mode**:
- Load PLAN.md
- Ask LLM to generate execute.sh script for step 1
- Human runs script
- Ask LLM to generate validate.sh script
- Human runs validation
- Present evidence to LLM: "Did it pass?"

**Comparison**:
- What was different between environments?
- What stayed the same?
- Which was faster? More controllable?

### Takehome Exercise (90 min)
**Exercise: Fractal Decomposition**

Take your spec folder from Session 3 and create a fractal version:

1. Create overview-level files:
   - SPEC.md (high-level only)
   - PLAN.md (phase overview only)

2. Create phase subdirectories:
   ```
   spec-folder/
   ├── SPEC.md (overview)
   ├── PLAN.md (phases)
   └── phases/
       ├── 01-foundation/
       │   ├── SPEC.md (phase 1 detail)
       │   └── PLAN.md (phase 1 tasks)
       └── 02-implementation/
           ├── SPEC.md (phase 2 detail)
           └── PLAN.md (phase 2 tasks)
   ```

3. Test loading strategies:
   - Load only overview SPEC.md first
   - Then load specific phase SPEC.md
   - Compare context consumption

**Deliverable**:
- Fractal spec folder structure
- Comparison of flat vs. fractal loading
- Notes on when to use each approach

### Artifacts Produced
- Fractal spec folder version
- Cross-environment execution strategy
- Understanding of portability principles

---

## Session 7: Industry Tools and Real-World Applications

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Connect composition patterns to GitHub spec-kit architecture
- Understand Kiro's spec-driven workflow
- Map their learned patterns to Tessl's spec-as-source approach
- Evaluate which tool fits their needs
- Apply patterns with or without specialized tools

### Key Concepts
1. **GitHub spec-kit (2024)**:
   - Constitution (KNOWLEDGE.md equivalent)
   - Specifications (SPEC.md equivalent)
   - Technical Plans (PLAN.md equivalent)
   - CLI for bootstrapping projects
2. **Kiro (2024-2025)**:
   - IDE-integrated spec workflow
   - 4-phase process: Requirements → Design → Planning → Execution
   - Agent hooks for automation
3. **Tessl Framework (2025)**:
   - Spec-as-source (specs are primary artifacts)
   - Generated code marked "DO NOT EDIT"
   - Spec Registry for versioning
4. **Martin Fowler's Analysis**:
   - Spec-first vs. spec-anchored vs. spec-as-source
   - Parallels to Model-Driven Development

### Hands-on Exercise (45 min)
**Exercise: Tool Mapping**

Learners map their patterns to industry tools:

**Part 1** - GitHub spec-kit mapping (15 min):
- Given your spec folder structure
- Map to spec-kit's three components:
  - Your KNOWLEDGE.md → spec-kit's "constitution"
  - Your SPEC.md → spec-kit's "specifications"
  - Your PLAN.md → spec-kit's "technical plans"
- Identify similarities and differences

**Part 2** - Kiro workflow mapping (15 min):
- Map your Session 5 modes to Kiro's phases:
  - Your Socratic mode → Kiro's Requirements phase
  - Your Planning mode → Kiro's Design + Planning phases
  - Your Progressive Disclosure → Kiro's Execution phase
- Document the mapping

**Part 3** - Evaluation matrix (15 min):
Create a tool selection matrix:

| Criteria | Manual (your approach) | spec-kit | Kiro | Tessl |
|----------|------------------------|----------|------|-------|
| Cost | Free | Free (OSS) | $19-39/mo | TBD |
| Learning curve | ... | ... | ... | ... |
| Tool flexibility | ... | ... | ... | ... |
| Team collaboration | ... | ... | ... | ... |
| Your priority | ... | ... | ... | ... |

### Takehome Exercise (60 min)
**Exercise: Tool Trial or Manual Refinement**

Choose one path:

**Path A - Try a Tool**:
1. Install GitHub spec-kit CLI or sign up for Kiro
2. Migrate your spec folder to the tool's format
3. Complete one workflow in the tool
4. Document what the tool added beyond your manual approach
5. Decide if you'll continue using it

**Path B - Refine Manual Approach**:
1. Review your manual spec folder workflow
2. Identify friction points
3. Create helper scripts or templates to reduce friction
4. Document your streamlined workflow
5. Share with peers for feedback

**Deliverable**:
- Tool trial report OR refined manual workflow
- Decision matrix: when to use which approach
- Recommendations for your team/domain

### Artifacts Produced
- Understanding of tool landscape
- Tool evaluation matrix
- Decision framework for tool selection
- Either: tool trial experience OR refined manual workflow

---

## Session 8: Advanced Patterns and Production Practices

**Duration**: 2 hours

### Learning Objectives
By the end of this session, learners will be able to:
- Create golden sets for evaluation
- Use LLM-as-judge pattern for validation
- Handle context handoffs between conversations
- Implement verification strategies
- Build production-grade spec workflows

### Key Concepts
1. **Golden Sets**: Hand-crafted correct examples
2. **LLM-as-Judge Pattern**:
   - Evidence + Criteria + Golden Examples → Pass/Fail judgment
   - Research findings (85% alignment with humans)
3. **Context Handoffs**: Using artifacts to bridge conversations
4. **Verification Strategies**:
   - Execute scripts for agent mode
   - Generate + run + evaluate scripts for edit mode
5. **Plan Immutability**: Check off, append, never edit

### Hands-on Exercise (45 min)
**Exercise: Create Golden Set and Judge Prompt**

Learners create evaluation artifacts:

**Part 1 - Golden Set** (20 min):
- Choose a verification task from your domain
- Create 3 examples of CORRECT behavior
- Document as golden-set.md:
  ```markdown
  # Golden Set: User Authentication

  ## Example 1: Successful Login
  Input: Valid credentials
  Expected: JWT token, 200 status, user object

  ## Example 2: Invalid Password
  Input: Wrong password
  Expected: 401 status, error message, no token

  ## Example 3: Missing Fields
  Input: Email only, no password
  Expected: 400 status, validation error
  ```

**Part 2 - Judge Prompt** (15 min):
- Create a prompt template for evaluation:
  ```markdown
  # Evaluation Prompt

  You are evaluating authentication implementation against acceptance criteria.

  ## Golden Set
  {load golden-set.md}

  ## Acceptance Criteria
  {load from SPEC.md}

  ## Evidence Provided
  {human pastes test results here}

  ## Your Task
  Compare evidence against golden set and criteria.
  Output: PASS or FAIL with reasoning.
  ```

**Part 3 - Test It** (10 min):
- Run implementation
- Collect evidence
- Use judge prompt to evaluate
- Compare AI judgment to your own

### Takehome Exercise (90 min)
**Exercise: Production Workflow Package**

Create a complete, reusable workflow package for your domain:

**Required Components**:
1. **Spec Folder Template**:
   - KNOWLEDGE.md (with starter sections)
   - SPEC.md (with template structure)
   - PLAN.md (with phase template)

2. **Mode Templates** (3 minimum):
   - Clarification mode
   - Planning mode
   - Execution mode

3. **Verification Package**:
   - Golden set for common scenarios
   - Judge prompt template
   - Validation checklist

4. **Workflow Documentation**:
   - When to use which mode
   - How to load context for each task
   - How to chain prompts
   - How to handle conversation death

5. **Example Walkthrough**:
   - Complete example from your domain
   - All artifacts filled in
   - Demonstrates full workflow

**Deliverable**: GitHub repo or directory with:
- All components above
- README explaining the workflow
- Example implementation
- Ready for team reuse

### Artifacts Produced
- Production-ready workflow package
- Golden sets for domain
- Judge prompts for evaluation
- Complete example demonstrating all concepts

---

## Session 9: Team Practices and Handoff Strategies

**Duration**: 90 minutes

### Learning Objectives
By the end of this session, learners will be able to:
- Share spec folders effectively with team members
- Handle conversation handoffs (person to person)
- Version control spec artifacts
- Review and approve spec changes
- Establish team conventions

### Key Concepts
1. **Spec Folders as Team Artifacts**: Not personal notes
2. **Handoff Documents**: State transfer between people/conversations
3. **Version Control Integration**: Git workflow for specs
4. **Review Practices**: PR for spec changes, not just code
5. **Team Conventions**: Naming, structure, loading patterns

### Hands-on Exercise (30 min)
**Exercise: Spec Review Practice**

In pairs, learners practice spec review:

**Part 1** - Create a spec change (10 min):
- Partner A adds a new requirement to SPEC.md
- Partner A updates PLAN.md with new tasks
- Partner A creates a "PR description" explaining the change

**Part 2** - Review the change (10 min):
- Partner B reviews using criteria:
  - Is the requirement clear and testable?
  - Does it conflict with existing requirements?
  - Are acceptance criteria specific?
  - Is the plan complete?
  - Are verification steps included?
- Partner B provides feedback

**Part 3** - Create handoff (10 min):
- Partner A creates handoff.md:
  - Current state: What's been completed
  - Blockers: What's stuck
  - Next steps: What needs to happen next
  - Context: Key decisions or discoveries
- Partner B reads handoff and confirms understanding

### Takehome Exercise (60 min)
**Exercise: Team Conventions Document**

Create conventions document for your team:

**Required Sections**:
1. **Spec Folder Structure**:
   - Required files
   - Optional files
   - Naming conventions

2. **File Formats**:
   - KNOWLEDGE.md section structure
   - SPEC.md requirement template
   - PLAN.md task format

3. **Review Process**:
   - When to review specs
   - Review checklist
   - Approval criteria

4. **Handoff Protocol**:
   - When to create handoff docs
   - Required information
   - Handoff template

5. **Version Control**:
   - What to commit
   - Commit message format
   - Branch strategy

6. **AI Tool Guidelines**:
   - Which tools are approved
   - How to document AI-assisted work
   - Quality standards

**Deliverable**: CONVENTIONS.md file with:
- All sections above
- Examples for each convention
- Rationale for key decisions
- Ready to share with team

### Artifacts Produced
- Team conventions document
- Handoff template
- Review checklist
- Shared understanding of team practices

---

## Session 10: Capstone Project

**Duration**: 3 hours (can be split across multiple days)

### Learning Objectives
By the end of this session, learners will be able to:
- Apply all learned patterns to a complete project
- Navigate from ambiguous request to production-ready spec
- Demonstrate composition, chaining, and mode selection
- Create artifacts that survive conversation death
- Present their approach to others

### Key Concepts
- **Integration**: All patterns working together
- **Real-World Application**: Messy, ambiguous requirements
- **Tool Independence**: Works with any AI environment
- **Artifact Focus**: Files are the deliverable

### Capstone Project Structure

**Phase 1 - Requirements Discovery** (45 min):
- Start with intentionally vague requirement
- Use Socratic mode to surface details
- Create SPEC.md with:
  - User stories
  - Acceptance criteria
  - Edge cases
  - Success metrics

**Phase 2 - Decision Making** (30 min):
- Identify key decisions needed
- Use ABCD Clarification mode for each
- Document in KNOWLEDGE.md with:
  - Decision
  - Options considered
  - Rationale for choice
  - Constraints

**Phase 3 - Planning** (45 min):
- Use Planning mode to decompose work
- Create PLAN.md with:
  - 3-5 phases
  - 3-5 tasks per phase
  - Dependencies
  - Verification steps

**Phase 4 - Execution** (45 min):
- Choose 1 phase to implement
- Use Progressive Disclosure mode
- Create golden set for verification
- Execute with your AI tool
- Verify with LLM-as-judge

**Phase 5 - Handoff** (15 min):
- Create handoff document for "next person"
- Includes:
  - What's complete
  - What's in progress
  - What's next
  - Key context

### Capstone Project Options

Choose a project in your domain or select from these examples:

**For Developers**:
- Build a CI/CD pipeline specification
- Design a microservice API
- Create a data migration plan

**For Product Managers**:
- Spec a new product feature end-to-end
- Plan a user research program
- Design an onboarding flow

**For Data Professionals**:
- Design a data pipeline
- Plan an ETL process
- Spec a reporting dashboard

**For Content/Marketing**:
- Plan a content campaign
- Design a style guide implementation
- Spec a documentation site

**For Business Analysts**:
- Analyze a business process improvement
- Design a reporting system
- Plan a data governance initiative

### Presentation (20 min per learner)

Each learner presents:
1. **The Challenge** (3 min): What was the initial vague requirement?
2. **The Artifacts** (10 min): Walk through your spec folder
   - Show KNOWLEDGE.md decisions
   - Show SPEC.md requirements
   - Show PLAN.md structure
3. **The Composition** (5 min): Explain your approach
   - What modes did you use?
   - How did you chain prompts?
   - What context did you load when?
4. **The Outcome** (2 min): What did you learn?

### Evaluation Criteria

Capstone projects are evaluated on:

| Criteria | Weight | Evaluation |
|----------|--------|------------|
| **Composition Intuition** | 25% | Demonstrates understanding of WHAT/WHEN/HOW to load context |
| **Artifact Quality** | 25% | KNOWLEDGE/SPEC/PLAN are complete, clear, and well-structured |
| **Mode Selection** | 15% | Appropriate mode chosen for each phase |
| **Chaining** | 15% | Effective prompt chaining demonstrated |
| **Tool Independence** | 10% | Approach works across AI environments |
| **Real-World Application** | 10% | Solves actual problem in learner's domain |

### Artifacts Produced
- Complete spec folder for real project
- Presentation demonstrating all concepts
- Portfolio piece showing spec-driven approach
- Confidence to apply patterns independently

---

## Appendix A: Takehome Exercise Templates

### Template 1: Artifact Audit (Session 1)

```markdown
# Artifact Audit

## Conversation 1
**Date**:
**Tool**:
**Purpose**:

### Artifacts Produced
-

### Context Lost
-

### Had to Re-explain
-

---

## Conversation 2
[Same structure]

---

## Reflection
What artifacts should have survived from these conversations?

1.
2.
3.
```

### Template 2: Context Loading Matrix (Session 2)

```markdown
# Context Loading Matrix

## Domain: [Your Domain]

| Task Type | Load What | Load When | Load How | Why |
|-----------|-----------|-----------|----------|-----|
| Example: Understanding constraints | KNOWLEDGE.md | When question arises | Search for relevant section | Only need decisions, not full context |
| [Your task] | | | | |
| [Your task] | | | | |

## Example Prompts

### Prompt 1: [Task Type]
```
[Show surgical loading prompt]
```

### Prompt 2: [Task Type]
```
[Show surgical loading prompt]
```

## Reflection
How does this differ from your current practice?
```

### Template 3: Spec Folder (Session 3)

```markdown
# KNOWLEDGE.md Template

## Decisions

### Decision: [Name]
**Context**: Why did this decision come up?
**Options Considered**:
- Option A: ...
- Option B: ...
**Decision Made**:
**Rationale**:

---

## Constraints
-

## Patterns to Follow
-

## Anti-Patterns to Avoid
-
```

```markdown
# SPEC.md Template

## Overview
[One paragraph: what are we building?]

## User Stories

### Story 1: [Title]
**As a** [role]
**I want** [capability]
**So that** [benefit]

**Acceptance Criteria**:
- [ ] Given [context], when [action], then [outcome]
- [ ]

---

## Edge Cases
1.

## Success Metrics
-
```

```markdown
# PLAN.md Template

## Overview
[One paragraph: how will we build this?]

## Phase 1: [Name]
**Goal**:
**Duration**:

### Task 1.1: [Name]
- **Description**:
- **Dependencies**:
- **Verification**: How to prove completion
- **Status**: [ ] Not started / [ ] In progress / [x] Complete

---

## Phase 2: [Name]
[Same structure]
```

### Template 4: Prompt Chain (Session 4)

```markdown
# Prompt Chain: [Name]

## Overview
**Purpose**:
**Steps**: 3-5

---

## Step 1: [Name]
**Template**:
```
[Prompt template with {placeholders}]
```

**Context Needed**:
- @file1.md
- @file2.md

**Output Artifact**:
**Estimated Time**:

---

## Step 2: [Name]
[Same structure]

---

## Example Execution

### Step 1 Execution
**Context Loaded**:
**Output**: [Link or snippet]

### Step 2 Execution
**Context Loaded**: [Including Step 1 output]
**Output**: [Link or snippet]

---

## Reflection
What worked? What didn't?
```

### Template 5: Mode Template (Session 5)

```markdown
# Mode: [Name]

## Purpose
Use this mode when [scenario description].

## Behavior
The LLM should:
1.
2.
3.

## Input Requirements
**Context to Load**:
-
**Prerequisites**:
-

## Output Artifacts
This mode produces:
-

## Prompt Template
```
[Your role and instructions]

[Context loading instructions]

[Behavior expectations]

[Output format]
```

## Example Usage

### Scenario
[Description of when you'd use this]

### Filled Prompt
```
[Template filled in with real values]
```

### Output
[Example of what the mode produced]

## Tips
-
```

### Template 6: Team Conventions (Session 9)

```markdown
# Team Conventions: Spec-Driven Development

## Version
Version 1.0 | Last Updated: [Date]

---

## Spec Folder Structure

### Required Files
- `KNOWLEDGE.md` - Decisions and rationale
- `SPEC.md` - Requirements and acceptance criteria
- `PLAN.md` - Implementation phases and tasks

### Optional Files
- `handoff.md` - Context transfer document
- `golden-sets/` - Example correct behaviors
- `phases/` - Fractal decomposition for large projects

### Naming Conventions
- Use kebab-case for directory names: `user-auth/`
- Use UPPERCASE.md for spec files: `SPEC.md`
- Use descriptive names for artifacts: `auth-findings.md`

---

## File Formats

### KNOWLEDGE.md Structure
```markdown
# Knowledge

## Decisions
[Decision records with rationale]

## Constraints
[System/domain constraints]

## Patterns
[Approved patterns]

## Anti-Patterns
[What to avoid]
```

### SPEC.md Requirements Template
```markdown
### Story: [Title]
**As a** [role]
**I want** [capability]
**So that** [benefit]

**Acceptance Criteria**:
- [ ] Given [context], when [action], then [outcome]
```

### PLAN.md Task Format
```markdown
### Task X.Y: [Name]
- **Description**: [What to do]
- **Dependencies**: [What must be done first]
- **Verification**: [How to prove completion]
- **Status**: [ ] Not started
```

---

## Review Process

### When to Review
- Before starting implementation
- After significant spec changes
- When adding new phases

### Review Checklist
- [ ] Requirements are clear and testable
- [ ] No conflicts with existing specs
- [ ] Acceptance criteria are specific
- [ ] Plan includes verification steps
- [ ] Decisions have rationale
- [ ] Constraints are documented

### Approval Criteria
- At least 1 peer review
- All checklist items pass
- Reviewers understand the change

---

## Handoff Protocol

### When to Create Handoff
- End of day/week if work is incomplete
- Before vacation or leave
- When blocked on external dependency
- Context switching to different project

### Required Information
```markdown
# Handoff: [Project Name]

## Current State
- What's complete:
- What's in progress:
- Completion percentage:

## Blockers
-

## Next Steps
1.
2.

## Key Context
- Recent decisions:
- Important discoveries:
- Watch out for:

## Files to Review
-
```

---

## Version Control

### What to Commit
- All spec folder files (KNOWLEDGE, SPEC, PLAN)
- Handoff documents
- Golden sets
- Mode templates

### Commit Message Format
```
[spec] Brief description

- Detail 1
- Detail 2

Affects: [phase or component]
```

### Branch Strategy
- Specs live in main branch
- Create feature branch for major spec changes
- PR for spec changes, not just code

---

## AI Tool Guidelines

### Approved Tools
- [List your team's approved AI tools]

### Documentation Standards
When using AI assistance:
- Document prompts used for key decisions
- Note which AI tool was used
- Include AI-generated artifacts in PR

### Quality Standards
All AI-generated content must:
- Be reviewed by human
- Meet team code/content standards
- Pass verification criteria
- Be tested/validated before merge

---

## Examples

[Include examples of well-formed spec artifacts from your domain]
```

---

## Appendix B: Assessment Criteria

### Session-by-Session Assessment

#### Session 1: The Composition Foundation
**Formative Assessment** (during session):
- Can explain context limits in own words
- Identifies artifacts vs. conversations in examples
- Participates in context death simulation discussion

**Summative Assessment** (takehome):
- Artifact audit completeness
- Quality of reflection
- Identification of missing artifacts

#### Session 2: The Three Controls
**Formative Assessment**:
- Correct loading strategy for scenarios
- Justification of WHAT/WHEN/HOW choices
- Application to different task types

**Summative Assessment**:
- Context loading matrix completeness
- Domain-specific applicability
- Quality of example prompts

#### Session 3: The Spec Folder Foundation
**Formative Assessment**:
- Spec folder creation exercise participation
- Understanding of file purposes
- Ability to populate each file

**Summative Assessment**:
- Quality of KNOWLEDGE.md decisions
- Clarity of SPEC.md requirements
- Structure of PLAN.md phases/tasks
- Successful loading test

#### Session 4: The Composition Formula
**Formative Assessment**:
- Chain construction during exercise
- Template identification
- Output artifact production

**Summative Assessment**:
- Prompt chain functionality
- Template reusability
- Domain application creativity
- Chain execution success

#### Session 5: Behavioral Modes
**Formative Assessment**:
- Mode application in exercises
- ABCD option quality
- Progressive disclosure execution

**Summative Assessment**:
- Mode template completeness
- Domain-specific adaptation
- Mode selection reasoning

#### Session 6: Environment Portability
**Formative Assessment**:
- Cross-environment comparison understanding
- Recognition of agent vs. edit mode differences

**Summative Assessment**:
- Fractal decomposition structure
- Loading strategy effectiveness
- Portability demonstration

#### Session 7: Industry Tools
**Formative Assessment**:
- Tool mapping accuracy
- Evaluation matrix completeness

**Summative Assessment**:
- Tool trial depth OR manual workflow refinement
- Decision matrix reasoning
- Recommendation quality

#### Session 8: Advanced Patterns
**Formative Assessment**:
- Golden set quality
- Judge prompt effectiveness

**Summative Assessment**:
- Production workflow package completeness
- Component reusability
- Documentation clarity

#### Session 9: Team Practices
**Formative Assessment**:
- Spec review thoroughness
- Handoff creation completeness

**Summative Assessment**:
- Team conventions comprehensiveness
- Example quality
- Practicality for team adoption

#### Session 10: Capstone Project
**Assessment rubric provided in session description**

---

### Overall Program Assessment

**Completion Criteria**:
- Attended 9/10 sessions (one absence allowed)
- Completed 8/9 takehome exercises
- Presented capstone project
- Created reusable workflow package

**Proficiency Levels**:

**Foundational** (60-70%):
- Understands composition intuition conceptually
- Can create basic spec folders with guidance
- Uses one or two modes effectively
- Works in single environment

**Proficient** (70-85%):
- Applies composition intuition to novel scenarios
- Creates complete, clear spec folders independently
- Uses multiple modes appropriately
- Works across environments
- Chains prompts effectively

**Advanced** (85-100%):
- Teaches composition intuition to others
- Creates production-ready workflow packages
- Adapts patterns to unique domain needs
- Seamlessly works across all environments
- Contributes back to community (blog posts, templates, tools)

---

### Feedback Mechanisms

**During Sessions**:
- Quick polls on understanding
- Small group discussions
- Gallery walks for peer feedback
- Live Q&A

**Between Sessions**:
- Written feedback on takehome exercises
- Office hours for questions
- Peer review partnerships
- Slack/Discord community

**End of Program**:
- Capstone presentation feedback
- Program retrospective
- Certificate of completion
- Alumni community access

---

## Appendix C: References

### Foundational Research

1. **Wei, J., et al.** (2022). "Chain-of-Thought Prompting Elicits Reasoning in Large Language Models." *NeurIPS 2022*. [arXiv:2201.11903](https://arxiv.org/abs/2201.11903)

2. **Wu, T., et al.** (2022). "PromptChainer: Chaining LLM Prompts through Visual Programming." *arXiv*. [arXiv:2203.06566](https://arxiv.org/abs/2203.06566)

3. **Khot, T., et al.** (2022). "Decomposed Prompting: A Modular Approach for Solving Complex Tasks." *Semantic Scholar*. [Link](https://www.semanticscholar.org/paper/Decomposed-Prompting:-A-Modular-Approach-for-Tasks-Khot-Trivedi/07955e96cbd778d0ae2a68f09d073b866dd84c2a)

4. **Chen, S., et al.** (2023). "Skills-in-Context Prompting: Unlocking Compositionality in LLMs." *arXiv*. [arXiv:2308.00304](https://arxiv.org/abs/2308.00304)

5. **Gao, Y., et al.** (2023). "Retrieval-Augmented Generation for LLMs: A Survey." *arXiv*. [arXiv:2312.10997](https://arxiv.org/abs/2312.10997)

6. **Zhou, D., et al.** (2022). "Least-to-Most Prompting Enables Complex Reasoning." *arXiv*. [arXiv:2205.10625](https://arxiv.org/abs/2205.10625)

7. **Yao, S., et al.** (2023). "Tree of Thoughts: Deliberate Problem Solving with LLMs." *NeurIPS 2023*. [arXiv:2305.10601](https://arxiv.org/abs/2305.10601)

8. **Yao, S., et al.** (2022). "ReAct: Synergizing Reasoning and Acting in Language Models." *ICLR 2023*. [arXiv:2210.03629](https://arxiv.org/abs/2210.03629)

9. **Liu, N., et al.** (2023). "Lost in the Middle: How Language Models Use Long Contexts." *arXiv*. [arXiv:2307.03172](https://arxiv.org/abs/2307.03172)

10. **Packer, C., et al.** (2023). "MemGPT: Towards LLMs as Operating Systems." *arXiv*. [arXiv:2310.08560](https://arxiv.org/abs/2310.08560)

11. **Zheng, L., et al.** (2023). "Judging LLM-as-a-Judge with MT-Bench and Chatbot Arena." *arXiv*. [arXiv:2306.05685](https://arxiv.org/abs/2306.05685)

### Prior Art

12. **Nygard, M.** (2011). "Documenting Architecture Decisions." *Cognitect Blog*. [Link](https://www.cognitect.com/blog/2011/11/15/documenting-architecture-decisions)

13. **North, D.** (2006). "Introducing BDD." *Cucumber Documentation*. [Link](https://cucumber.io/docs/bdd/history/)

### Industry Tools and Analysis

14. **GitHub** (2024). "Spec-Driven Development with AI: Get Started with a New Open Source Toolkit." *GitHub Blog*. [Link](https://github.blog/ai-and-ml/generative-ai/spec-driven-development-with-ai-get-started-with-a-new-open-source-toolkit/)

15. **GitHub spec-kit Repository**. [https://github.com/github/spec-kit](https://github.com/github/spec-kit)

16. **Kiro** (2024-2025). "Agentic AI IDE: Build from Prototype to Production." [https://kiro.dev/](https://kiro.dev/)

17. **Fowler, M.** (2025). "Understanding Spec-Driven-Development: Kiro, spec-kit, and Tessl." *martinfowler.com*. [Link](https://martinfowler.com/articles/exploring-gen-ai/sdd-3-tools.html)

### Additional Resources

18. **Taches CC Resources** - Claude Code plugin with skills, commands, subagents. [GitHub](https://github.com/glittercowboy/taches-cc-resources)

19. **VibeCoding Thursday Modes** - Behavioral mode prompt files. [GitHub](https://github.com/Mitobyte/VibeCodingThursday)

---

## Appendix D: Facilitator Notes

### Preparation Checklist

**Before Session 1**:
- [ ] Set up communication channel (Slack/Discord)
- [ ] Share pre-work (read articles on context limits)
- [ ] Prepare context death simulation materials
- [ ] Test demo with your preferred AI tool

**Before Session 2**:
- [ ] Review takehome exercises from Session 1
- [ ] Prepare sample project files for exercise
- [ ] Create context loading scenarios
- [ ] Prepare comparison examples

**Before Session 3**:
- [ ] Review context loading matrices
- [ ] Prepare expense tracking example
- [ ] Set up gallery walk space/board
- [ ] Create spec folder templates for distribution

**Before Session 4**:
- [ ] Review spec folders from Session 3
- [ ] Prepare sample codebase for chain exercise
- [ ] Test prompt chain examples
- [ ] Have template files ready

**Before Session 5**:
- [ ] Review prompt chains from Session 4
- [ ] Prepare ambiguous requirements for ABCD practice
- [ ] Create auth implementation layers
- [ ] Prepare Socratic question examples

**Before Session 6**:
- [ ] Review mode templates from Session 5
- [ ] Set up access to different AI environments
- [ ] Prepare fractal decomposition examples
- [ ] Test execution inversion pattern

**Before Session 7**:
- [ ] Review fractal structures from Session 6
- [ ] Prepare demos of GitHub spec-kit
- [ ] Have Kiro trial access ready (if possible)
- [ ] Prepare tool comparison materials

**Before Session 8**:
- [ ] Review tool evaluations from Session 7
- [ ] Prepare golden set examples
- [ ] Create judge prompt templates
- [ ] Test LLM-as-judge pattern

**Before Session 9**:
- [ ] Review production packages from Session 8
- [ ] Prepare PR review materials
- [ ] Create handoff examples
- [ ] Draft sample team conventions

**Before Session 10**:
- [ ] Review team conventions from Session 9
- [ ] Prepare capstone project options
- [ ] Set up presentation schedule
- [ ] Create evaluation rubric copies

### Common Challenges and Solutions

**Challenge**: "My AI tool can't load files like @filename.md"
**Solution**: Teach manual loading - copy/paste with clear labels. Pattern still works.

**Challenge**: "This feels like too much overhead for simple tasks"
**Solution**: Emphasize scaling - simple tasks don't need full spec folder. Use patterns as needed.

**Challenge**: "My team won't adopt this"
**Solution**: Start with personal practice, demonstrate value through results, share wins.

**Challenge**: "The spec folder feels like waterfall"
**Solution**: Emphasize artifacts evolve, specs are living documents, not fixed requirements.

**Challenge**: "I keep loading everything anyway"
**Solution**: Practice surgical loading exercises, track context consumption, compare results.

### Adaptation for Different Audiences

**For Technical Teams**:
- Emphasize code generation and verification
- Deep dive on execution patterns
- Connect to CI/CD and testing

**For Business Teams**:
- Focus on requirements and planning
- Emphasize communication and alignment
- Connect to project management tools

**For Mixed Teams**:
- Show how spec folder bridges technical and business
- Emphasize shared understanding
- Focus on handoff and collaboration

### Time Management Tips

- Use timers for exercises
- Have backup slides ready if ahead
- Prepare optional deep-dives for extra time
- Allow flexibility in capstone timeline

### Success Metrics

Track these metrics to evaluate program success:
- Completion rate (target: 80%+)
- Takehome submission rate (target: 85%+)
- Post-program tool usage (survey at 30/60/90 days)
- Artifacts created (spec folders in production)
- Team adoption stories
- Community contributions (templates, blog posts)

---

*Curriculum developed: December 2025*
*Based on research in composition intuition and spec-driven development theory*
*Aligned with GitHub spec-kit, Kiro, and emerging industry practices*
