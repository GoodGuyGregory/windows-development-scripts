Write-Host "Congratulations! on purchasing your first Dell!"
Write-Host "Let's start developing some powershell tasks!"


<# create a string array #>

[String[]]$greetings = "Hello", "Good Morning","Good Evening"

$stringArrayTwo = @("Girl by The Internet","Two Fish One Elephant by Khurangbin", "Demon Days by Gorillaz")

Foreach ($greeting in $greetings)
{
   Write-Output "$($greeting) is a greeting"
}

<# while syntax #>
$i = 0
while($i -lt $stringArrayTwo.Length) { $stringArrayTwo[$i]; $i++ }