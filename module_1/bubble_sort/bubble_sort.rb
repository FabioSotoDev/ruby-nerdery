def bubble_sort(list)
    final_index = list.length - 2
    isSorted = false

    while !isSorted || final_index == 1 do
        isSorted = true
        for i in 0..final_index do
            if list[i] > list[i+1]
                list[i], list[i+1] = list[i+1], list[i]
                isSorted = false
            end
        end
    end
    
    p list
    
    return list
end

bubble_sort([4,3,78,2,0,2])