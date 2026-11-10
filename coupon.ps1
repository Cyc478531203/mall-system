function Get-CouponDiscount([int]$Amount) {
    [Math]::Min([Math]::Floor($Amount * 0.10), 50)
}
