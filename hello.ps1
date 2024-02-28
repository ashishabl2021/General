Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create a form
$form = New-Object System.Windows.Forms.Form
$form.Text = "My PowerShell Form"
$form.Size = New-Object System.Drawing.Size(300,200)

# Create a button
$button = New-Object System.Windows.Forms.Button
$button.Text = "Click Me"
$button.Location = New-Object System.Drawing.Point(50,50)

# Add an event handler for the button click
$button.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Button Clicked!")
})

# Add the button to the form
$form.Controls.Add($button)

# Show the form
$form.ShowDialog()
