package main

import (
		"fmt"
		"os"
)

const (
	S = "test%[2]c%[4]s"
	FNAME = "Grace_kid.go"
	
)
/*
com1
*/
func main() {
	f, err := os.Create(FNAME)
	if err != nil {return}
	fmt.Fprintf(f, S, 9, 10, 34, S)
	f.Close()
}
