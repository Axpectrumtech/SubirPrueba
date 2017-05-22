Sintaxis en Visual Basic .NET

For i As Byte = 1 To 100
  If i Mod 3 = 0 Or i Mod 5 = 0 Then
    If i Mod 3 <> 0 Then
      Console.WriteLine("Buzz")
    ElseIf i Mod 5 <> 0 Then
      Console.WriteLine("Fizz")
    Else
      Console.WriteLine("FizzBuzz")
    End If
  Else
    Console.WriteLine(i)
  End If
Next
