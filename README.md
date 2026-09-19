<div align="center">
  <img src="banner.svg?v=2" alt="AI Sales Team for Claude Code" width="100%">

  <br>

  <p>
    <a href="#-quick-installation"><img src="https://img.shields.io/badge/⚡_INSTALLATION-1--MIN_SETUP-06b6d4?style=for-the-badge&logo=powershell" alt="Quick Start"></a>
    <a href="#-14-skill-command-suite"><img src="https://img.shields.io/badge/🎛️_COMMANDS-14_SKILLS-8b5cf6?style=for-the-badge&logo=claude" alt="14 Skills"></a>
    <a href="#-5-parallel-subagents"><img src="https://img.shields.io/badge/🤖_MULTI--AGENT-5_SUBAGENTS-3b82f6?style=for-the-badge" alt="5 Agents"></a>
    <a href="#-quant-lead-qualification-bant--meddic"><img src="https://img.shields.io/badge/📊_QUALIFICATION-BANT_%2B_MEDDIC-10b981?style=for-the-badge" alt="BANT MEDDIC"></a>
    <a href="INSTALLATION_AND_USAGE_GUIDE.md"><img src="https://img.shields.io/badge/📖_DOCUMENTATION-FULL_GUIDE-f59e0b?style=for-the-badge" alt="Docs"></a>
  </p>

  <h1>⚡ AI Sales Team for Claude Code ⚡</h1>
  <p><b>An Autonomous, Multi-Agent Outbound Sales Intelligence Engine Running Inside Claude Code CLI.</b></p>

  <p align="center">
    <i>Research target companies · Identify C-Suite decision makers · Qualify leads with BANT &amp; MEDDIC · Generate cold outreach sequences · Render vector PDF pipeline reports</i>
  </p>

  <br>
</div>

---

## 🌟 Key Capabilities at a Glance

<table>
  <tr>
    <td width="50%" fill="#0d1117">
      <h3>🌐 Autonomous Web Research</h3>
      <p>Scrapes company websites, extracts JSON-LD schemas, identifies tech stack footprints (React, HubSpot, Stripe, Shopify, WordPress), and detects hiring velocity signals.</p>
    </td>
    <td width="50%" fill="#0d1117">
      <h3>🤖 5 Parallel Subagents</h3>
      <p>Executes multi-perspective audits simultaneously across <b>Company Fit</b>, <b>Decision Makers</b>, <b>Opportunity Quality</b>, <b>Competitive Position</b>, and <b>Outreach Strategy</b>.</p>
    </td>
  </tr>
  <tr>
    <td width="50%" fill="#0d1117">
      <h3>📈 Mathematical Lead Qualification</h3>
      <p>Calculates a <b>0–100 Composite Prospect Score</b> backed by deterministic Python BANT scoring math, MEDDIC completeness ratios, and letter grades (A+ to D).</p>
    </td>
    <td width="50%" fill="#0d1117">
      <h3>📄 ReportLab PDF Generation</h3>
      <p>Renders multi-page executive sales pipeline PDF reports complete with horizontal bar charts, score gauges, prospect summary cards, and prioritized action plans.</p>
    </td>
  </tr>
</table>

---

## 🖥️ Live Terminal Execution Mockup

```text
┌────────────────────────────────────────────────────────────────────────┐
│  CLAUDE CODE CLI  ──  AI SALES TEAM                                   │
└────────────────────────────────────────────────────────────────────────┘

> /sales prospect https://acme.com

🚀 Phase 1: Sequential Web Discovery...
  ✓ Fetched https://acme.com (Homepage, About, Pricing, Team, Careers)
  ✓ Detected Company Type: SaaS / B2B Scale-up
  ✓ Identified Tech Stack: Next.js, Stripe, Segment, HubSpot, Intercom

🤖 Phase 2: Launching 5 Parallel Subagents...
  [Agent 1/5] ✓ Company Research & Firmographics  ── Fit Score: 88/100
  [Agent 2/5] ✓ Decision Maker Discovery           ── 4 Contacts Found (CEO, CTO, VP Sales)
  [Agent 3/5] ✓ Opportunity Assessment (BANT)       ── Quality Score: 85/100 (Pain Density High)
  [Agent 4/5] ✓ Competitive Intelligence            ── 3 Vendors Mapped (Legacy Replacement)
  [Agent 5/5] ✓ Outreach Strategy & Messaging       ── Multi-Touch Email Sequence Ready

📊 Phase 3: BANT + MEDDIC Synthesis...

┌────────────────────────────────────────────────────────────────────────┐
│  PROSPECT AUDIT SCORE CARD                                             │
│                                                                        │
│  ██████████████████████████████████████████████░░░░░░░   87 / 100      │
│                                                                        │
│  GRADE:   A   |  STATUS: Strong Qualified Prospect                     │
│  ACTION:  Invest Senior SDR Outreach Immediately                       │
└────────────────────────────────────────────────────────────────────────┘

📁 Full report saved to PROSPECT-ANALYSIS.md
```

---

## ⚡ Quick Installation

```bash
# 1. Install Claude Code CLI
npm install -g @anthropic-ai/claude-code

# 2. Install Python Requirements
pip install -r requirements.txt
```

### Deploy Skills & Agents:

<table>
  <tr>
    <td width="50%">
      <h4>🪟 Windows (PowerShell)</h4>
      <pre><code>powershell -ExecutionPolicy Bypass -File .\install.ps1</code></pre>
    </td>
    <td width="50%">
      <h4>🐧 macOS / Linux / Git Bash</h4>
      <pre><code>chmod +x install.sh
./install.sh</code></pre>
    </td>
  </tr>
</table>

### Launch Product:
```bash
claude
```

---

## 🎛️ 14-Skill Command Suite

<details open>
<summary><b>🚀 1. Flagship Audit Engine</b></summary>
<br>

```bash
/sales prospect <url>   # Full end-to-end sales audit with 5 parallel agents (Saves PROSPECT-ANALYSIS.md)
/sales quick <url>      # Fast 60-second snapshot evaluation directly in terminal
```
</details>

<details>
<summary><b>🔍 2. Deep Prospect Research & Qualification</b></summary>
<br>

```bash
/sales research <url>    # Deep firmographics, funding signals, tech stack & growth trajectory
/sales qualify <url>     # BANT + MEDDIC lead qualification & risk scoring
/sales contacts <url>    # Executive decision-maker discovery & buying committee mapping
/sales competitors <url> # Competitive matrix, feature gaps & battle-card creation
/sales icp <desc>        # Ideal Customer Profile definition & targeting rules
```
</details>

<details>
<summary><b>✉️ 3. Outreach, Meeting Prep & Deal Execution</b></summary>
<br>

```bash
/sales outreach <prospect>   # Multi-touch cold email sequence tailored to prospect pain
/sales followup <prospect>   # Post-meeting & non-responsive follow-up sequence generator
/sales prep <url>            # Executive meeting brief, question guide & battle cards
/sales proposal <client>     # Client proposal generator with ROI calculator
/sales objections <topic>    # Objection handling matrix & counter-messaging playbook
```
</details>

<details>
<summary><b>📊 4. Pipeline Reporting & Analytics</b></summary>
<br>

```bash
/sales report       # Aggregates local prospect files into unified Markdown report (SALES-REPORT.md)
/sales report-pdf   # Renders multi-page PDF sales pipeline report (SALES-REPORT-*.pdf)
```
</details>

---

## ⚔️ Why AI Sales Team? (Comparison Matrix)

| Capability | Manual SDR Research | Enterprise SaaS (ZoomInfo/Apollo) | ⚡ AI Sales Team for Claude |
| :--- | :---: | :---: | :---: |
| **Setup Cost** | \$0 | \$5,000 – \$25,000 / year | **\$0 (Free & Open Source)** |
| **Research Speed** | 30 – 45 mins / lead | Instant static lookup | **60 Seconds (Live Scrape)** |
| **Lead Qualification** | Subjective / Manual | Basic firmographic filter | **Quantitative BANT + MEDDIC** |
| **Multi-Agent Audit** | ❌ No | ❌ No | **✓ 5 Parallel Agents** |
| **Outreach Copy** | Manual drafting | Templated mail merge | **Personalized to Tech Stack & Pain** |
| **PDF Sales Reports** | Manual Canva/PPT | ❌ No | **Automated Vector PDF Charts** |

---

## 🧠 5 Parallel Subagents

When you execute `/sales prospect <url>`, 5 subagents execute in parallel:

```
                  ┌─────────────────────────────────────────┐
                  │          /sales prospect <url>          │
                  └────────────────────┬────────────────────┘
                                       │
      ┌──────────────────┬─────────────┼─────────────┬──────────────────┐
      ▼                  ▼             ▼             ▼                  ▼
┌───────────┐      ┌───────────┐  ┌───────────┐  ┌───────────┐      ┌───────────┐
│  Company  │      │ Contacts  │  │Opportunity│  │Competitive│      │ Strategy  │
│  Agent    │      │  Agent    │  │   Agent   │  │   Agent   │      │   Agent   │
├───────────┤      ├───────────┤  ├───────────┤  ├───────────┤      ├───────────┤
│ Fit: 25%  │      │ Access:20%│  │Quality:20%│  │Position:15│      │Ready: 20% │
└───────────┘      └───────────┘  └───────────┘  └───────────┘      └───────────┘
```

---

## 📖 Deep Technical & Architectural Documentation

* 📘 **[Installation & User Guide](file:///c:/Users/anvay/Desktop/ai-sales-team-claude-main/ai-sales-team-claude-main/INSTALLATION_AND_USAGE_GUIDE.md):** Complete setup, CLI invocation, and script guide.
* 🏛️ **[Product Architecture & Deep Analysis](file:///c:/Users/anvay/Desktop/ai-sales-team-claude-main/ai-sales-team-claude-main/PRODUCT_ARCHITECTURE_AND_ANALYSIS.md):** Technical design evaluation, scoring formulas, Python codebase analysis, and failure mode mitigation.

---

<div align="center">
  <p>Designed &amp; Developed with ❤️ by <b>Anvaya Arsha</b></p>
  <p>
    <a href="https://github.com/anvaya-arsha/ai-sales-team-claude/issues">Report Bug</a> ·
    <a href="https://github.com/anvaya-arsha/ai-sales-team-claude/issues">Request Feature</a>
  </p>
</div>
