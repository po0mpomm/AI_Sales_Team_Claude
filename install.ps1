# Windows PowerShell Installer for AI Sales Team for Claude Code
Write-Host "Installing AI Sales Team Skills and Agents..." -ForegroundColor Cyan

$HOME_DIR = $env:USERPROFILE
$SKILLS_DIR = "$HOME_DIR\.claude\skills"
$AGENTS_DIR = "$HOME_DIR\.claude\agents"

# Create target directories
New-Item -ItemType Directory -Force -Path "$SKILLS_DIR\sales\scripts" | Out-Null
New-Item -ItemType Directory -Force -Path "$SKILLS_DIR\sales\templates" | Out-Null
New-Item -ItemType Directory -Force -Path "$AGENTS_DIR" | Out-Null

# Copy main orchestrator
Copy-Item "sales\SKILL.md" "$SKILLS_DIR\sales\SKILL.md" -Force
Write-Host " Installed main orchestrator: sales" -ForegroundColor Green

# Copy sub-skills
Get-ChildItem "skills" -Directory | ForEach-Object {
    $skillName = $_.Name
    New-Item -ItemType Directory -Force -Path "$SKILLS_DIR\$skillName" | Out-Null
    Copy-Item "$($_.FullName)\SKILL.md" "$SKILLS_DIR\$skillName\SKILL.md" -Force
    Write-Host " Installed skill: $skillName" -ForegroundColor Green
}

# Copy agents
Get-ChildItem "agents\*.md" | ForEach-Object {
    Copy-Item $_.FullName "$AGENTS_DIR\$($_.Name)" -Force
    Write-Host " Installed agent: $($_.Name)" -ForegroundColor Green
}

# Copy scripts
Get-ChildItem "scripts\*.py" | ForEach-Object {
    Copy-Item $_.FullName "$SKILLS_DIR\sales\scripts\$($_.Name)" -Force
    Write-Host " Installed script: $($_.Name)" -ForegroundColor Green
}

# Copy templates
Get-ChildItem "templates\*.md" | ForEach-Object {
    Copy-Item $_.FullName "$SKILLS_DIR\sales\templates\$($_.Name)" -Force
    Write-Host " Installed template: $($_.Name)" -ForegroundColor Green
}

Write-Host "`nInstallation Complete! All 14 skills, 5 agents, 4 scripts, and 6 templates installed." -ForegroundColor Yellow
Write-Host "You can now run commands inside Claude Code CLI (e.g., /sales prospect https://acme.com)" -ForegroundColor Cyan
