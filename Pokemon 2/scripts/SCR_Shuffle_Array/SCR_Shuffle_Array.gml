function SCR_Shuffle_Array(arr) 
{
    var n = array_length(arr);
    for (var i = n - 1; i > 0; i--) 
    {
        var j = irandom(i); // Random index from 0 to i
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }
}
