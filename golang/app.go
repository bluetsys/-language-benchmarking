package main

import (
	"fmt"
	"time"
)

func main() {
	add := 0
	st := time.Now()

	for i := 0; i <= 100000000; i++ {
		add = add + i
	}

	ed := time.Since(st)

	fmt.Println("==========================")
	fmt.Println("go")
	fmt.Println(add)
	fmt.Println(ed)
}
