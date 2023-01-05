fun main() {
    var add = 0.0
    val startTime = System.currentTimeMillis()

    for (count in 1..100000000) {
        add = add + count
    }

    val endTime = System.currentTimeMillis() - startTime
    
    println("==========================")
    println("kotlin - java");
    println(add)
    println(endTime/ 1000.0f)
}