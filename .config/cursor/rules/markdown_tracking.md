# Markdown Progress Tracking Rule

## Purpose
This rule ensures that all major tasks and requirements are tracked in a markdown file for better progress monitoring and context preservation.

## Rule Details
When executing any requirement or task:

1. Create a markdown file named `cursor_progress.md` in the project root if it doesn't exist
2. Before starting any new task:
   - Add a new section with timestamp
   - Include the task description
   - List any dependencies or prerequisites
3. During task execution:
   - Update the markdown with current progress
   - Add any important decisions or findings
   - Document any issues or blockers
4. After task completion:
   - Mark the task as completed
   - Add any relevant notes or lessons learned

## Example Format
```markdown
# Cursor Progress Tracking

## [Timestamp] Task Name
- **Status**: In Progress
- **Description**: Brief description of the task
- **Dependencies**: List of dependencies
- **Progress**:
  - [x] Step 1 completed
  - [ ] Step 2 in progress
  - [ ] Step 3 pending
- **Notes**: Any important observations or decisions
```

## Implementation Notes
- Always update the markdown before moving to the next step
- Include relevant code snippets or configuration changes
- Document any external API calls or dependencies
- Keep the format consistent across all projects 