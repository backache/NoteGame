#frequencys from https://pages.mtu.edu/~suits/notefreqs.html

$note = @(
    [pscustomobject]@{note='a';Frequency='440'}
    [pscustomobject]@{note='b';Frequency='494'}
    [pscustomobject]@{note='c';Frequency='523'}
    [pscustomobject]@{note='d';Frequency='587'}
    [pscustomobject]@{note='e';Frequency='659'}
    [pscustomobject]@{note='f';Frequency='698'}
    [pscustomobject]@{note='g';Frequency='784'}
)

$strprint=''

$RandomNumber = Get-Random -Minimum 1 -Maximum 7

[console]::beep($note.Frequency[$RandomNumber],500)

$answer=$note.note[$RandomNumber].tostring()

$guess=Read-Host -Prompt 'What note was that?'

if ($guess -eq $answer) 

{$strprint+="Yes"
} 
else 
{$strprint+="no"}

$strprint+=", that was the note "
$strprint+=$answer

Write-Output $strprint 