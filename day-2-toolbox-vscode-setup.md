# Day 2: Setting up Toolbox, VS Code, and Project Automation

## Goals

- Understand how Fedora Silverblue's Toolbox works for development
- Install and configure VS Code to work with Toolbox containers
- Automate new project creation with GitHub integration
- Prepare for seamless coding inside Toolbox with VS Code

## What I Did

- Explored Toolbox environments and confirmed home directory sharing with the host
- Installed GitHub CLI (`gh`) inside Toolbox and authenticated
- Created a `newproject` bash script that:
  - Creates a new project directory
  - Initializes a Git repository
  - Creates a GitHub repo via `gh`
  - Pushes initial commit
  - Opens the project in VS Code from inside Toolbox
- Debugged VS Code launching issues from Toolbox, discovering aliases don’t work in scripts
- Fixed VS Code launch by using `flatpak-spawn --host code .` in the script
- Confirmed `newproject` creates repos on GitHub and opens VS Code automatically
- Verified the environment is ready for Node.js, Python, Django, Rust, and more

## What I Learned

- Toolbox shares home directories with the host, allowing access to all projects seamlessly
- Host commands like VS Code (`code`) need explicit exposure inside Toolbox (`flatpak-spawn --host`)
- Aliases are not available in non-interactive scripts; use full commands or `flatpak-spawn` in scripts
- The `gh` CLI is powerful for automating repo creation and management
- Automating setup saves me time and reduces context switching

## Next Steps

- Extend `newproject` to scaffold different language templates (Node.js, Python, Django, React, Rust, etc.)
- Install necessary runtimes and tools inside Toolbox to support these templates
- Keep journaling the setup and development progress as I go

---

This setup is now solid enough to start real development work. Excited for Day 3!

---

