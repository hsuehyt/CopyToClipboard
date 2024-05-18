Add-Type -AssemblyName System.Windows.Forms

# Create and configure the form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Drag and Drop File Here"
$form.Size = New-Object System.Drawing.Size(300,200)
$form.TopMost = $true

# Enable drag and drop on the form
$form.AllowDrop = $true
$form.Add_DragEnter({$_.Effect = "Copy"})
$form.Add_DragDrop({
    $filePath = $_.Data.GetData("FileDrop")[0]
    if (Test-Path $filePath) {
        try {
            $content = Get-Content $filePath -Raw
            [System.Windows.Forms.Clipboard]::SetText($content)
            [System.Windows.Forms.MessageBox]::Show("File content copied to clipboard.")
            $form.Close()
        } catch {
            [System.Windows.Forms.MessageBox]::Show("Failed to read the file content.")
        }
    }
})

# Show the form
$form.ShowDialog()
