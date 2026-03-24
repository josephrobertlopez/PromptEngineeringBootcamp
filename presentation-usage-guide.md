# Presentation Usage Guide: Prompt Engineering Bootcamp

## 🚀 **QUICK START: 3 Simple Steps**

### 1. **Extract & Generate**
```bash
# Extract zip file to your folder
unzip prompt-engineering-bootcamp-FINAL.zip

# OPTION A: Generate PowerPoint + PDF (RECOMMENDED)
chmod +x generate-presentations.sh
./generate-presentations.sh
# Creates .pptx and .pdf files with professional branding

# OPTION B: Generate HTML only
npm install -g @marp-team/marp-cli
marp SESSION-1-FINAL.md --html --theme bootcamp-theme.css -o SESSION-1.html
marp SESSION-2-FINAL.md --html --theme bootcamp-theme.css -o SESSION-2.html
```

### 2. **Present**
```bash
# PowerPoint (maximum compatibility)
open SESSION-1-FINAL.pptx   # Professional presentation with static diagrams

# OR HTML (interactive, requires browser)
open SESSION-1.html         # F11 fullscreen, arrow keys to navigate
```

### 3. **Facilitate**
- Follow `MINUTE-BY-MINUTE-FACILITATOR-GUIDE.md` for exact timing
- Use `participant-materials.md` for exercises
- Load `priority-builder-prompt.txt` in AI tool for demos

## 🎉 **SOLVED: Diagram Display Issues**

**✅ What's Fixed**: All diagrams are now **static SVG images** instead of Mermaid
**✅ Result**: Diagrams display reliably in ANY environment

**No more:**
- ❌ Internet connection required
- ❌ Mermaid rendering failures  
- ❌ Browser compatibility issues

**Now you get:**
- ✅ Perfect offline presentation
- ✅ Consistent visual quality
- ✅ Works in all browsers/exports

## 📁 **File Structure**

```
your-workshop-folder/
├── SESSION-1-FINAL.html           # Generated presentations
├── SESSION-2-FINAL.html           
├── bootcamp-theme.css             # Professional styling
├── images/                         # Reliable SVG diagrams
│   ├── three-approaches.svg        # Decision framework
│   ├── foundational-patterns.svg   # Pattern progression  
│   ├── react-tree-integration.svg  # Advanced patterns
│   ├── spec-kit-workflow.svg       # 4-file methodology
│   └── cross-domain-patterns.svg   # Domain connections
├── facilitator-guide.md           # Detailed timing guide
├── participant-materials.md       # All reference materials
└── priority-builder-prompt.txt    # 325-line demo prompt
```

## 🎨 **Professional Branding Features**

### **the organization Logo Integration**
- **Automatic logo** appears on every slide in top-right corner
- **White logo** on hero slides (purple background) for contrast
- **Purple logo** on content slides for brand consistency  
- **Responsive sizing** adjusts for different screen sizes
- **Print-friendly** maintains branding in handouts

### **Slide Type System (Color Coded)**

**`<!-- _class: hero -->`** → Purple gradient + white logo (titles/transitions)
**`<!-- _class: theory -->`** → Blue accent + purple logo (educational content)
**`<!-- _class: demo -->`** → Yellow background + purple logo (instructor demos)
**`<!-- _class: exercise -->`** → Green background + purple logo (participant work)
**`<!-- _class: transition -->`** → Blue gradient + white logo (energy moments)

## 🖼️ **SVG Diagram Interaction Tips**

### **Three Approaches Framework**
- **Point and trace** decision paths with cursor
- **Ask**: "Which branch fits your team's context?"
- **Connect**: to real participant scenarios

### **Foundational Patterns Flow**
- **Show progression**: Each pattern builds on previous
- **Ask**: "Where have you seen these patterns before?"
- **Connect**: to Priority Builder demo

### **ReAct + Tree Integration**  
- **Demonstrate complexity**: Multiple patterns working together
- **Ask**: "How would you approach this decision?"
- **Connect**: to interview prep exercise

### **Cross-Domain Visualization**
- **Build synthesis**: Same patterns, different applications
- **Ask**: "Where else could you apply these patterns?"  
- **Connect**: to participant work domains

## ⏰ **Timing Reference**

### **Session 1 (60 min)**
```
📊  0-20 min  | Theory + SVG diagrams
🔴 20-55 min  | Hands-on Priority Builder  
📊 55-60 min  | Insights + Preview
```

### **Session 2 (60 min)**  
```
📊  0-15 min  | Advanced patterns + SVG diagrams
🔴 15-40 min  | Interview prep exercise
🔴 40-55 min  | Live Java demo
📊 55-60 min  | Integration + Next steps
```

## 🎬 **Demo Execution**

### **Priority Builder Demo** (Session 1)
- **Pre-load**: `priority-builder-prompt.txt` in AI tool
- **Use persona**: "Tech Lead - Banking Automation"  
- **Show patterns**: Point out Persona, Few-shot, Template, Chain-of-Thought
- **Generate output**: CSV + formatted versions
- **Time limit**: 5 minutes max

### **Java Migration Demo** (Session 2)
- **Show approaches**: ADRs vs Structured vs Tool-assisted  
- **Live execute**: Load spec files, generate code
- **Pattern recognition**: "Same ReAct pattern as interview prep"
- **Cross-domain insight**: Business + technical same methodology

## ✅ **Success Checklist**

### **Before Workshop**
- [ ] Generated HTML presentations work correctly
- [ ] All 5 SVG diagrams display properly  
- [ ] Demo materials loaded in AI tools
- [ ] Screen sharing tested

### **During Workshop**
- [ ] Use slide colors as timing cues
- [ ] Make diagrams interactive (point, trace, discuss)
- [ ] Protect hands-on time from theory deep-dives
- [ ] Celebrate participant completions

### **Outcome Goals**
- [ ] Participants recognize patterns across domains
- [ ] Real deliverables created (priorities + interview materials)
- [ ] Clear understanding of Three Approaches framework
- [ ] Confidence applying systematic methodology

## 🎉 **You're Ready!**

**Professional presentation** with:
- ✅ **professional branding** on every slide
- ✅ **PowerPoint compatibility** via generate-presentations.sh script
- ✅ **Reliable diagrams** that display in any environment  
- ✅ **Professional styling** with corporate color scheme
- ✅ **Complete workshop materials** ready for delivery  
- ✅ **Real deliverables** (priorities + interview prep)  
- ✅ **Cross-domain methodology** scaling business to technical  

**Focus on delivery**: Your systematic prompt engineering methodology will transform how teams approach AI.

**Result**: Participants leave with evaluable frameworks that scale across business and technical domains.
