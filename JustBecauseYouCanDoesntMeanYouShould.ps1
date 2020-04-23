<#
    A - Latin A
    А - Cryillic A
    Α - Greek Alpha
#>

Set-Alias "A" "Set-Alias"
A "AA" "Select-Object"
A "AА" "Where-Object"
A "AΑ" "Write-Host"

A "АA" "ForEach-Object"
A "АА" "New-Object"
A "ΑΑ" "Sort-Object"

A "ΑA" "Invoke-Command"

$A = 1
$А = 100
$Α = "PSCustomObject"
$ААА = "System.Collections.ArrayList"
$AAA = @("A","А","Α")
$ΑΑΑ = АА $ААА

$AAAA = {
    Param($A)
    switch($A)
    {
        "A" { 
            $AА = @{
                "A" = "A"
                "А" = "А"
                "Α" = "Α"
            }
        }
        "А" { 
            $AА = @{
                "А" = "A"
                "Α" = "А"
                "A" = "Α"
            }
        }
        "Α" { 
            $AА = @{
                "Α" = "A"
                "A" = "А"
                "А" = "Α"
            }
        }
    }
    return $AА
}

$AAAА = {
    Param($ΑΑΑ)
    $ΑΑΑ | АA {
        $AA = $_
        AΑ $AA | AА Α -eq "A" | AA | ΑΑ
        AΑ $AA | AА А -eq "А" | AA | ΑΑ
        AΑ $AA | AА Α -eq "A" | AA | ΑΑ
    }
}

$A..$А | АA {
    $AA = $_
    $AAA | АA {
        $AА = ΑA -ScriptBlock $AAAA -ArgumentList $AA
        $АAA = АА $Α @{$AA = $AА}
        $null = ($ΑΑΑ += $AAA)
    }
}

ΑA -ScriptBlock $AAAА -ArgumentList $ΑΑΑ