package main

import "fmt"
/*
com1
*/
func main() {
	/*
		com2
	*/
	s := "package main%[2]c%[2]cimport %[3]cfmt%[3]c%[2]c/*%[2]ccom1%[2]c*/%[2]cfunc main() {%[2]c%[1]c/*%[2]c%[1]c%[1]ccom2%[2]c%[1]c*/%[2]c%[1]cs := %[3]c%[4]s%[3]c%[2]c%[1]cfn(s)%[2]c}%[2]c%[2]cfunc fn(s string) {%[2]c%[1]cfmt.Printf(s, 9, 10, 34, s)%[2]c}%[2]c"
	fn(s)
}

func fn(s string) {
	fmt.Printf(s, 9, 10, 34, s)
}
