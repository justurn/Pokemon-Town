function SCR_Round_N(value, places)
{
    var factor = power(10, places);
    return round(value * factor) / factor;
}
