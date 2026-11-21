# Simple assertions for Get-CouponDiscount
. "$PSScriptRoot/../coupon.ps1"
$cases = @(
    @{ Amount = 100; Expected = 15 },
    @{ Amount = 1000; Expected = 80 }
)
foreach ($c in $cases) {
    $actual = Get-CouponDiscount -Amount $c.Amount
    if ($actual -ne $c.Expected) { throw "Amount $($c.Amount): expected $($c.Expected), got $actual" }
}
"All coupon tests passed."
