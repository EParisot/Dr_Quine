package main

import (
	"fmt"
	"os"
)

const (
	S = "package main%[2]c%[2]cimport (%[2]c%[1]c%[3]cfmt%[3]c%[2]c%[1]c%[3]cos%[3]c%[2]c)%[2]c%[2]cconst (%[2]c%[1]cS = %[3]c%[4]s%[3]c%[2]c%[1]cFNAME = %[3]cGrace_kid.go%[3]c%[2]c%[1]cUSELESS = %[3]c%[3]c%[2]c)%[2]c/*%[2]ccom1%[2]c*/%[2]cfunc main() {%[2]c%[1]cf, err := os.Create(FNAME)%[2]c%[1]cif err != nil {return}%[2]c%[1]cfmt.Fprintf(f, S, 9, 10, 34, S)%[2]c%[1]cf.Close()%[2]c}%[2]c"
	FNAME = "Grace_kid.go"
	USELESS = ""
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
