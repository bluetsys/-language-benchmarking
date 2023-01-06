function main()
    
    add::Int64 = 0
    st = time_ns();

    for index in 0:100000000
        add = add + index
    end

    println("==========================")
    println("julia")
    println(add)
    println((time_ns() - st) / 100000000)
end;

main()
