# AI Sales Team for Claude Code — Complete Installation, Setup & User Guide

**Author:** Anvaya Arsha  
**Product:** AI Sales Team for Claude Code  

---

## Quick Reference Summary

| Phase | Windows (PowerShell) | macOS / Linux / Git Bash |
| :--- | :--- | :--- |
| **1. Install Claude CLI** | `npm install -g @anthropic-ai/claude-code` | `npm install -g @anthropic-ai/claude-code` |
| **2. Install Python Packages** | `pip install -r requirements.txt` | `pip install -r requirements.txt` |
| **3. Run Installer** | `powershell -ExecutionPolicy Bypass -File .\install.ps1` | `chmod +x install.sh && ./install.sh` |
| **4. Start Product** | `claude` | `claude` |
| **5. Example Command** | `/sales prospect https://acme.com` | `/sales prospect https://acme.com` |

---

## 1. System Requirements & Prerequisites

Before installing, ensure your environment has:

1. **Node.js (v18+) & npm:** Required to run the Anthropic Claude Code CLI.
2. **Python 3.8+ & pip:** Required for background scraping, lead scoring math, and PDF rendering.
3. **Git (Optional):** Recommended for cloning updates.

---

## 2. Step-by-Step Installation & Setup

### Step 1: Install Claude Code CLI Globally
Open your terminal (PowerShell, Command Prompt, or Terminal) and run:

```powershell
npm install -g @anthropic-ai/claude-code
```

*Verification:*
```powershell
claude --version
```
*(Should output `2.1.x (Claude Code)` or similar).*

---

### Step 2: Install Python Dependencies
In the root directory of this project (`ai-sales-team-claude-main`), run:

```powershell
pip install -r requirements.txt
```

This installs:
* `reportlab` (v4.0+) — Vector PDF chart and report generation engine.
* `beautifulsoup4` (v4.12+) — Enhanced HTML parsing support.
* `requests` (v2.31+) — Network HTTP request fallback layer.

---

### Step 3: Deploy Skills, Agents & Scripts to Claude

#### Option A: On Windows (PowerShell)
Run the custom PowerShell installer script:
```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

#### Option B: On macOS / Linux / Git Bash
Run the bash installer script:
```bash
chmod +x install.sh
./install.sh
```

**What the installer does:**
* Copies 14 skills into `~/.claude/skills/`
* Copies 5 autonomous agents into `~/.claude/agents/`
* Installs 4 Python scripts into `~/.claude/skills/sales/scripts/`
* Installs 6 markdown templates into `~/.claude/skills/sales/templates/`

---

## 3. How to Launch & Run the Product

### Method 1: Inside Claude Code CLI (Recommended)

1. Launch Claude Code in your terminal:
   ```powershell
   claude
   ```

2. Run any of the `/sales` commands inside the interactive session:

#### 🚀 Flagship Command: Full Prospect Audit
```text
/sales prospect https://acme.com
```
*Launches 5 parallel subagents (Company Research, Decision Makers, Opportunity Scoring, Competitive Intel, Outreach Strategy). Generates `PROSPECT-ANALYSIS.md`.*

#### ⚡ 60-Second Snapshot
```text
/sales quick https://acme.com
```
*Fast terminal summary (<30 lines) without launching subagents.*

#### 🎯 Targeted Commands Matrix

| Slash Command | Description | Output File Generated |
| :--- | :--- | :--- |
| `/sales research <url>` | Deep firmographic research & tech stack detection | `COMPANY-RESEARCH.md` |
| `/sales qualify <url>` | BANT + MEDDIC lead scoring & risk analysis | `LEAD-QUALIFICATION.md` |
| `/sales contacts <url>` | Map executives, C-suite & MEDDIC buying roles | `DECISION-MAKERS.md` |
| `/sales outreach <name>` | Multi-touch cold email sequence generation | `OUTREACH-SEQUENCE.md` |
| `/sales followup <name>` | Post-meeting & non-responsive follow-up sequence | `FOLLOWUP-SEQUENCE.md` |
| `/sales prep <url>` | Executive meeting brief, question guide & battle card | `MEETING-PREP.md` |
| `/sales proposal <name>` | Client proposal generator with ROI calculator | `CLIENT-PROPOSAL.md` |
| `/sales objections <topic>` | Objection handling matrix & counter-messaging playbook | `OBJECTION-PLAYBOOK.md` |
| `/sales icp <description>` | Ideal Customer Profile definition & disqualifiers | `IDEAL-CUSTOMER-PROFILE.md` |
| `/sales competitors <url>` | Competitive positioning matrix & feature gap analysis | `COMPETITIVE-INTEL.md` |
| `/sales report` | Aggregates local prospect files into pipeline summary | `SALES-REPORT.md` |
| `/sales report-pdf` | Compiles pipeline data into a multi-page PDF document | `SALES-REPORT-*.pdf` |

---

### Method 2: Running Standalone Python CLI Scripts

You can also run the underlying scripts directly from PowerShell without entering Claude Code:

#### 1. Extract Website Data & Tech Stack:
```powershell
python scripts/analyze_prospect.py --url https://example.com --output json
```

#### 2. Find Executive Leadership & Contacts:
```powershell
python scripts/contact_finder.py --url https://example.com --output json
```

#### 3. Calculate Lead Scores (BANT + MEDDIC):
```powershell
python scripts/lead_scorer.py input_data.json
```

#### 4. Render Sample PDF Sales Report:
```powershell
python scripts/generate_pdf_report.py
```
*(Outputs `SALES-REPORT-sample.pdf`)*

---

## 4. Troubleshooting & FAQ

### Q1: `claude : The term 'claude' is not recognized`
**Fix:** Run `npm install -g @anthropic-ai/claude-code`. Ensure `C:\Users\<YourUsername>\AppData\Roaming\npm` is added to your environment `PATH`.

### Q2: PowerShell Script Execution Warning (`Running scripts is disabled`)
**Fix:** Execute the installer with `-ExecutionPolicy Bypass`:
```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### Q3: PDF Report Generation Error (`No module named 'reportlab'`)
**Fix:** Re-install requirements via:
```powershell
pip install reportlab beautifulsoup4 requests
```

---

## 5. Uninstallation

To remove all installed skills and agents from your system:

#### Windows PowerShell:
```powershell
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\sales*"
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\agents\sales*"
```

#### macOS / Linux / Git Bash:
```bash
./uninstall.sh
```
