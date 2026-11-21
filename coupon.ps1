function Get-CouponDiscount([int]$Amount) {
    [Math]::Min([Math]::Floor($Amount * 0.15), 50)
}
