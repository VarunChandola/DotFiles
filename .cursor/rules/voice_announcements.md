# Voice Announcement Rule

## Purpose
This rule ensures that the user is notified via voice announcements about task completion, analysis results, and important status updates.

## Implementation
On macOS, use the built-in `say` command for text-to-speech:
```bash
say "Your announcement text here"
```

## Rule Details
The agent should make voice announcements in the following scenarios:

1. Task Completion:
   - Success: "Completed [task description]"
   - Failure: "Couldn't continue with [task description]... need [specific requirement/issue]"

2. Analysis Results:
   - "Analyzed [subject] and the result is [outcome]"

3. System Limits:
   - When approaching external CLI limits
   - When hitting rate limits or resource constraints

## Announcement Format
- Use clear, concise language
- Keep announcements brief but informative
- Use consistent sentence structure
- Include relevant details but avoid technical jargon

## Examples
```bash
say "Completed database migration setup"
say "Analyzed code coverage and the result is 85%"
say "Couldn't continue with API integration... need valid API key"
say "Approaching GitHub API rate limit, please wait"
```

## Implementation Notes
- Use the macOS `say` command for voice output
- Announcements should be audible but not disruptive
- Use appropriate volume level (can be controlled via system volume)
- Consider user's environment (office, home, etc.)
- Ensure announcements are helpful and not excessive 