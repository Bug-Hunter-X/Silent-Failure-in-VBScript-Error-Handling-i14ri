Function MyFunction(param1)
  On Error Resume Next
  If IsEmpty(param1) Then
    WScript.Echo "Parameter is empty"
    Exit Function
  End If

  ' Some code here that may cause an error
  ' Example: Attempting to access a non-existent file
  Set objFSO = CreateObject("Scripting.FileSystemObject")
  Set objFile = objFSO.OpenTextFile("nonexistentfile.txt", 1)

  If Err.Number <> 0 Then
    WScript.Echo "An error occurred: " & Err.Number & " - " & Err.Description
    Err.Clear 'Important: Clear the error object
  End If
  On Error GoTo 0
End Function