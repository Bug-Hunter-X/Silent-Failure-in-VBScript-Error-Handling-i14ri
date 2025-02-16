Function MyFunction(param1)
  If IsEmpty(param1) Then
    WScript.Echo "Parameter is empty"
    Exit Function
  End If

  ' Some code here that may cause an error

  If Err.Number <> 0 Then
    WScript.Echo "An error occurred: " & Err.Description
  End If
End Function