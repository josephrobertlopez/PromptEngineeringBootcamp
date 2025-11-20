# Quick Reference Cards - Prompt Engineering Bootcamp

*Print this page for quick reference during and after workshop*

---

## 🎯 **Three Approaches Decision Matrix**

| **When Your Task Is...** | **Choose This Approach** | **Example** |
|---------------------------|---------------------------|-------------|
| **Simple-Medium complexity** | 🟢 **ADRs + Config** | `.github/copilot-instructions.md` |
| **Team uses multiple AI tools** | 🟢 **ADRs + Config** | Reference standards document |
| **Complex, repeated tasks** | 🟠 **Structured Files** | Priority Builder (325 lines) |
| **Learning prompt engineering** | 🟠 **Structured Files** | 4-file interview workflow |
| **Team committed to one IDE** | 🟡 **Tool-Assisted** | Windsurf workflows |
| **Want automated guidance** | 🟡 **Tool-Assisted** | Platform-integrated prompts |

**Decision Rule**: Use the **simplest approach** that handles your complexity level.

---

## 📋 **Foundational Patterns Checklist**

**Before writing any prompt, include:**

- [ ] **🎭 Persona**: "You are an expert [role] with [specific expertise]..."
- [ ] **📚 Few-shot**: Provide 2-3 example input/output pairs
- [ ] **📋 Template**: "Respond in this format: [structure]"  
- [ ] **🧠 Chain-of-Thought**: "Show your reasoning step by step"

**Quality Check**: Does your prompt use ALL 4 patterns?

---

## 🔄 **Advanced Patterns Quick Guide**

### **ReAct Pattern** (Multi-step tasks)
```
THINK: [Analyze the situation]
ACT: [Take specific action]
OBSERVE: [Check results]
THINK: [Next steps based on observation]
```

### **Tree of Thoughts** (Decision points)
```
1. Generate 3 different approaches
2. Evaluate pros/cons of each
3. Choose best approach with rationale
```

### **Spec-Kit Workflow** (Complex tasks)
```
knowledge-base.md → Domain expertise (reusable)
specification.md → This task's requirements
implementation-plan.md → Execution strategy  
execution.md → Generated materials
```

---

## 🎯 **Pattern Recognition Quick Test**

**See a prompt and identify:**
- What **persona** is established?
- What **examples** are provided?
- What **format** is requested?
- Is **reasoning** required?

**Good prompt = All 4 patterns visible**

---

## 🚀 **Taking This Forward**

### **This Week:**
1. Apply **ReAct pattern** to one complex work decision
2. Use **Tree of Thoughts** for your next strategic choice
3. Create **spec-kit workflow** for a repeated task

### **Longer Term:**
- Evaluate new AI tools using **Three Approaches** framework
- Build team templates using **foundational patterns**
- Scale **systematic thinking** across your domain

### **Remember:**
**Patterns > Formats**. Choose approach based on team context and task complexity.

---

## 📞 **Resources for Continued Learning**

**Research Papers:**
- White et al. (2023): Prompt Pattern Catalog
- Yao et al. (2022): ReAct Pattern
- Yao et al. (2023): Tree of Thoughts

**Workshop Materials:**
- Priority Builder Agent (325 lines)
- Interview prep 4-file workflow
- Three Approaches examples

**Goal**: Transform ad-hoc AI prompting → systematic, evaluable methodology

---

*© Accenture - Prompt Engineering Bootcamp*
