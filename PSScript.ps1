$xlApp = New-Object -ComObject Excel.Application
$xlApp.Visible = $true
$xlApp.DisplayAlerts = $false
$xlwkbook = $xlApp.Workbooks.Add()
$xlmodule = $xlwkbook.VBProject.VBComponents.Add(1)
$xlmodule.CodeModule.AddFromFile($PSScriptRoot + '\VBAScript.txt')
$xlApp.Run('qrytest')
$xlApp.Quit()