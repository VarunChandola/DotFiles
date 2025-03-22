# DotFiles

My personal dotfiles and development environment configurations.

## Features

### Cursor IDE Rules
- `.cursor/rules/markdown_tracking.md`: Rule for tracking progress in markdown files
- `.cursor/rules/voice_announcements.md`: Rule for voice announcements using macOS `say` command

## Installation

### Quick Install
```bash
git clone https://github.com/VarunChandola/DotFiles.git
cd DotFiles
./install.sh
```

### Manual Installation
1. Clone this repository
2. Copy the `.cursor` directory to your home directory
3. The rules will be automatically picked up by Cursor IDE

## Usage

### Markdown Tracking
- Creates and maintains a `cursor_progress.md` file in each project
- Tracks task progress, dependencies, and important decisions
- Updates automatically as tasks are completed

### Voice Announcements
- Provides voice feedback for task completion
- Announces analysis results
- Alerts about system limits and important events
- Uses macOS `say` command for text-to-speech

## Structure
```
DotFiles/
├── .cursor/
│   └── rules/
│       ├── markdown_tracking.md
│       └── voice_announcements.md
├── install.sh
└── README.md
```

## Contributing
Feel free to submit issues and enhancement requests! 