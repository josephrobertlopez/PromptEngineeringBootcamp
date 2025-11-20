# Three Approaches Examples: Spring Boot Migration

## Approach A: ADRs + Configuration Files ⭐ (Recommended for Most Teams)

### Example: .github/copilot-instructions.md
```markdown
# GitHub Copilot Instructions - Spring Boot 3 Migration

## Project Context
Migrating from Spring Boot 2.7 to Spring Boot 3.2.

## Migration Standards

### Package Transformations
**BEFORE (Spring Boot 2.7.x):**
```java
import javax.persistence.*;
import javax.validation.Valid;
import javax.servlet.http.*;
```

**AFTER (Spring Boot 3.x):**
```java
import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.servlet.http.*;
```

### Annotation Modernization
**BEFORE:**
```java
@RequestMapping(value = "/users", method = RequestMethod.GET)
public ResponseEntity<List<User>> getAllUsers() { ... }
```

**AFTER:**
```java
@GetMapping("/users")
public ResponseEntity<List<User>> getAllUsers() { ... }
```

### Dependency Injection
**Preferred (Spring 3):**
```java
@RestController
@RequiredArgsConstructor  // Lombok
public class UserController {
    private final UserService userService;  // Constructor injection
}
```

**Avoid:**
```java
@Autowired
private UserService userService;  // Field injection
```

## Quality Requirements
✅ Code must compile with Spring Boot 3.2.0
✅ Pass all unit and integration tests
✅ Have no @Deprecated warnings
✅ Preserve all API endpoints and behavior

❌ Do NOT change business logic during migration
❌ Do NOT modify database schemas
❌ Do NOT alter API endpoint URLs

## Reference
See docs/adr/0001-spring-migration-strategy.md for decisions.
```

### Example: docs/adr/0001-spring-migration-strategy.md
```markdown
# ADR 0001: Spring Boot 3 Migration Strategy

## Status
Accepted

## Context
Migrating from Spring Boot 2.7 to 3.2 requires:
- Java 8 → Java 17 (breaking change)
- javax.* → jakarta.* namespace changes  
- Potential Spring Security configuration updates
- Third-party dependency compatibility verification

## Decision
Use conservative migration approach:
1. **Minimal changes strategy**: Focus only on required changes
2. **Preserve current patterns**: Keep existing security config, error handling
3. **Staged validation**: Test compilation → unit tests → integration tests → runtime

## Consequences
**Positive:**
- Lower risk of introducing new bugs
- Faster migration timeline (estimated 2-3 days)
- Team can focus on learning Spring 3 features later

**Negative:**  
- Won't immediately leverage new Spring 3 capabilities
- May need follow-up migration for modern patterns

## Alternatives Considered
- **Option B**: Full modernization (SecurityFilterChain, ProblemDetail, etc.)
  - *Rejected*: Too much scope creep for framework migration
- **Option C**: Gradual migration over 6 months
  - *Rejected*: Security vulnerabilities in Spring Boot 2.x end-of-life
```

### Usage:
```
Simple prompt: "Following ADR 0001 and .github/copilot-instructions.md, migrate UserController.java to Spring Boot 3."
```

**Advantages:**
✅ Proven approach (10+ years at scale)
✅ Low maintenance overhead
✅ Team onboarding easy
✅ Works across all AI tools

**When to Use:**
- Production teams
- Simple to medium complexity
- Want low maintenance
- Multiple AI tools in use

---

## Approach B: Structured Prompt Files (Experimental)

### Example: spec/ Folder Structure
```
spec/
├── knowledge-base.md       # Reusable Spring migration expertise
├── specification.md        # UserController specific requirements  
└── implementation-plan.md  # ReAct execution phases
```

### spec/knowledge-base.md
```markdown
# Spring Boot Migration Knowledge Base

## Migration Patterns

### Package Migration Rules
javax.persistence.* → jakarta.persistence.*
javax.validation.* → jakarta.validation.*  
javax.servlet.* → jakarta.servlet.*

**Exceptions (DO NOT migrate):**
- javax.crypto.* (part of JDK)
- javax.net.* (part of JDK)
- javax.security.* (part of JDK)

### Annotation Modernization
@RequestMapping(method=GET) → @GetMapping
@RequestMapping(method=POST) → @PostMapping
@RequestMapping(method=PUT) → @PutMapping
@RequestMapping(method=DELETE) → @DeleteMapping

### Spring Security Migration
**Spring Boot 2 (deprecated):**
```java
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    @Override
    protected void configure(HttpSecurity http) throws Exception { ... }
}
```

**Spring Boot 3 (modern):**
```java
@EnableWebSecurity
public class SecurityConfig {
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception { ... }
}
```

## Quality Gates
1. **Compilation**: mvn clean compile
2. **Unit Tests**: mvn test  
3. **Integration Tests**: mvn test -Dtest=*Integration*
4. **Runtime Verification**: mvn spring-boot:run
```

### spec/specification.md  
```markdown
# UserController Migration Specification

## Current State Analysis
- **File**: src/main/java/com/example/demo/controller/UserController.java
- **Dependencies**: javax.validation.Valid, javax.persistence imports
- **Annotations**: Uses @RequestMapping with method parameters
- **Injection**: Constructor injection (already modern)

## Target State Requirements
- **Package Updates**: All javax.* → jakarta.* where applicable
- **Annotation Updates**: All @RequestMapping → specific HTTP annotations
- **API Preservation**: All 7 endpoints must work identically
- **Error Handling**: Preserve existing exception handling

## Success Criteria
✅ File compiles without javax/jakarta warnings
✅ All existing unit tests pass without modification
✅ Integration tests pass (Cucumber scenarios)  
✅ API contracts unchanged (same URLs, request/response formats)
✅ No new deprecation warnings introduced

## Edge Cases
- Validate @Valid annotation still works with jakarta.validation
- Ensure error responses maintain same structure
- Verify Spring Security integration unaffected
```

### spec/implementation-plan.md
```markdown
# UserController Migration Implementation Plan

## Phase 1: Import Updates
**THINK**: Dependencies must be updated before annotations to ensure compilation
**ACT**: Replace javax imports with jakarta equivalents
**OBSERVE**: Run `mvn compile` to verify import resolution
**VALIDATION**: No import errors, clean compilation

## Phase 2: Annotation Modernization  
**THINK**: Now that imports work, can safely update annotations
**ACT**: Replace @RequestMapping(method=X) with @XMapping
**OBSERVE**: Run `mvn compile` again, check for annotation warnings
**VALIDATION**: No @deprecated warnings, modern annotations used

## Phase 3: Unit Test Validation
**THINK**: Business logic should be unaffected, but framework changes might impact tests
**ACT**: Run full test suite: `mvn test`
**OBSERVE**: All tests pass, no Spring context loading errors
**VALIDATION**: 100% test pass rate, no new failures

## Phase 4: Integration Test Validation
**THINK**: Full application context and HTTP layer testing
**ACT**: Run Cucumber integration tests: `mvn test -Dtest=CucumberTestRunner`  
**OBSERVE**: All scenarios pass, real HTTP requests work
**VALIDATION**: End-to-end functionality preserved

## Phase 5: Runtime Verification
**THINK**: Final validation under real runtime conditions
**ACT**: Start application: `mvn spring-boot:run`
**OBSERVE**: Clean startup, no errors in logs, health check passes
**VALIDATION**: Application starts successfully on expected port

## Rollback Plan
If any phase fails:
1. Git revert to last known good state
2. Review specific error messages
3. Consult Spring Boot 3 migration guide for specific issues
4. Fix incrementally and retry from failed phase
```

### Usage:
```
Load all spec/ files in order:
1. "Read spec/knowledge-base.md for migration expertise"  
2. "Read spec/specification.md for UserController requirements"
3. "Execute spec/implementation-plan.md using ReAct pattern"
4. "Generate migrated code following all specifications"
```

**Advantages:**
✅ Explicit pattern application (great for learning)
✅ Comprehensive audit trail  
✅ Handles complex dependencies well
✅ Reusable knowledge base across files

**When to Use:**
- Learning prompt engineering
- Complex multi-step tasks
- Need detailed reasoning trail
- Training team on systematic approach

---

## Approach C: Tool-Assisted Workflows

### Example: Windsurf Cascade Workflow (290 lines)

```yaml
---
description: Spring Boot 2 → 3 Migration Cascade
auto_execution_mode: 1
---

# Spring Boot 2 → 3 Migration Cascade Workflow

## 🎯 Migration Goal & Philosophy
Primary Objective: Systematically migrate with minimal risk and maximum confidence.

Core Reasoning: Major framework shift involving:
- Java Runtime: JDK 8/11 → JDK 17+ (LTS requirement)
- Namespace Change: javax.* → jakarta.* (Jakarta EE transition)  
- Dependency Evolution: Updated Spring ecosystem with breaking changes

## 🧠 Decision Logic Framework
### Risk Assessment Matrix
Risk Level | Impact | Mitigation Strategy
-----------|---------|-------------------
HIGH       | Breaking API changes | Comprehensive testing at each step
MEDIUM     | Dependency conflicts | Staged dependency updates  
LOW        | Configuration drift | Validation checkpoints

## 🔄 Migration Execution Cascade

### Phase 1: Build System Migration
**Goal**: Update project foundation without touching application code

#### Step 1.1: Maven POM Updates
1. **Backup Current State**: cp pom.xml pom.xml.pre-migration
2. **Update Spring Boot Parent**: 2.7.18 → 3.2.0
3. **Update Java Version**: 1.8 → 17

#### Step 1.2: Dependency Resolution Test
mvn clean dependency:resolve
**Decision Point**: 
✅ Success → Proceed to Phase 2
❌ Failure → Investigate conflicts before continuing

### Phase 2: Source Code Migration  
**Goal**: Update application source to use Jakarta namespace

#### Step 2.1: Automated Namespace Migration
find src/ -name "*.java" -exec sed -i 's/javax\.persistence/jakarta.persistence/g' {} \;
find src/ -name "*.java" -exec sed -i 's/javax\.validation/jakarta.validation/g' {} \;

#### Step 2.2: Import Verification
grep -r "javax\." src/ | grep -v "javax\.crypto\|javax\.net"
**Decision Checkpoint**:
✅ Clean → No problematic javax imports remain
⚠️ Issues Found → Review and fix manually

[... continues for full 290-line workflow ...]
```

### Usage:
```
Execute in Windsurf IDE:
1. Load spring-boot-migration-cascade.md workflow
2. Run auto-execution with human decision points
3. Follow systematic validation at each step
4. Built-in rollback if any phase fails
```

**Advantages:**  
✅ Built-in workflow management
✅ Automated validation checkpoints
✅ Platform provides guardrails
✅ Real-time execution feedback

**When to Use:**
- Team committed to specific IDE (Windsurf, Cursor, etc.)
- Want built-in workflow guidance  
- Comfortable with platform dependency
- Need systematic execution with checkpoints

---

## Comparison Summary

| Aspect | ADRs + Config | Structured Files | Tool-Assisted |
|--------|---------------|------------------|----------------|
| **Setup Time** | 15 minutes | 1-2 hours | 30 minutes |
| **Maintenance** | Low | Medium | Low (tool manages) |
| **Reusability** | High | High | Platform-specific |
| **Learning Curve** | Low | Medium | Medium |
| **Debugging** | Manual | Explicit trail | Tool-dependent |
| **Team Scaling** | Excellent | Good | Depends on tool adoption |
| **Pattern Recognition** | Implicit | Explicit | Tool-abstracted |

## Decision Guidelines

**Choose ADRs + Config when:**
- ✅ Want proven, low-maintenance approach
- ✅ Team uses multiple AI tools
- ✅ Simple to medium complexity tasks
- ✅ Fast iteration needed

**Choose Structured Files when:**
- ✅ Learning prompt engineering patterns
- ✅ Complex tasks with many dependencies
- ✅ Need detailed audit trail
- ✅ Training team on systematic thinking

**Choose Tool-Assisted when:**
- ✅ Team standardized on specific IDE
- ✅ Want built-in workflow management
- ✅ Comfortable with platform dependency
- ✅ Need automated execution checkpoints

**Key Insight**: All three approaches can achieve the same result. Choose based on team context, not dogma.
