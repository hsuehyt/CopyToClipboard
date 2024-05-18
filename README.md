# Copy File Content to Clipboard

This repository contains scripts to copy the content of a text file to the clipboard by dragging and dropping the file onto a form. The process involves running a batch script, which in turn runs a PowerShell script.

## Files

1. **CopyFileContentToClipboard.bat**
   - This batch script runs the PowerShell script `CopyFileContentToClipboard.ps1`.

2. **CopyFileContentToClipboard.ps1**
   - This PowerShell script creates a form that allows users to drag and drop a file. The content of the dropped file is copied to the clipboard.

## Instructions

### Step 1: Run the Batch Script

1. Double-click `CopyFileContentToClipboard.bat`.
2. This script will request administrative privileges and set the PowerShell execution policy to `Bypass`.
3. It will then automatically run `CopyFileContentToClipboard.ps1`.

### Step 2: Use the Drag-and-Drop Form

1. After running `CopyFileContentToClipboard.bat`, a form will appear with the title "Drag and Drop File Here".
2. Drag and drop a text file into the form.
3. The content of the file will be copied to the clipboard.
4. A message box will confirm that the content has been copied.
5. The form will close automatically.

## Troubleshooting

- Ensure both files (`CopyFileContentToClipboard.bat` and `CopyFileContentToClipboard.ps1`) are in the same directory.
- If the scripts do not run, make sure you have the necessary permissions to change the execution policy.
- Verify that you have administrative privileges when running `CopyFileContentToClipboard.bat`.

## Note

These scripts temporarily change the PowerShell execution policy to `Bypass` for the current process only. This change is not permanent and will revert when the PowerShell session ends.
