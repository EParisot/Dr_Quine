package main

import (
	"fmt"
	"os"
	"os/exec"
)

const (
	S    = "package main%[2]c%[2]cimport (%[2]c%[1]c%[3]cfmt%[3]c%[2]c%[1]c%[3]cos%[3]c%[2]c%[1]c%[3]cos/exec%[3]c%[2]c)%[2]c%[2]cconst (%[2]c%[1]cS    = %[3]c%[5]s%[3]c%[2]c%[1]cFILE = %[3]cSully_%%d.go%[3]c%[2]c%[1]cEXE  = %[3]c./Sully_%%d%[3]c%[2]c)%[2]c%[2]cfunc main() {%[2]c%[1]cn := %[4]d%[2]c%[2]c%[1]cfile := fmt.Sprintf(FILE, n)%[2]c%[1]cf, err := os.Create(file)%[2]c%[1]cif err != nil {%[2]c%[1]c%[1]creturn%[2]c%[1]c}%[2]c%[1]cfmt.Fprintf(f, S, 9, 10, 34, n-1, S)%[2]c%[1]cerr = f.Close()%[2]c%[1]cif err != nil {%[2]c%[1]c%[1]creturn%[2]c%[1]c}%[2]c%[1]cexec.Command(%[3]cgo%[3]c, %[3]cbuild%[3]c, file).Run()%[2]c%[1]cif n > 0 {%[2]c%[1]c%[1]cexec.Command(fmt.Sprintf(EXE, n)).Run()%[2]c%[1]c}%[2]c}%[2]c"
	FILE = "Sully_%d.go"
	EXE  = "./Sully_%d"
)

func main() {
	n := 5
	file := fmt.Sprintf(FILE, n)
	f, err := os.Create(file)
	if err != nil {
		return
	}
	fmt.Fprintf(f, S, 9, 10, 34, n-1, S)
	err = f.Close()
	if err != nil {
		return
	}
	exec.Command("go", "build", file).Run()
	if n > 0 {
		exec.Command(fmt.Sprintf(EXE, n)).Run()
	}
}
