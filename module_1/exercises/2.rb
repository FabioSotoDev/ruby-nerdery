# Same as above, but only print out values greater than 5.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each{
    |value|
    if value > 5
        puts value
    end
}