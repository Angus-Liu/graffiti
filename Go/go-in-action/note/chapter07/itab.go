package main

import "fmt"

type Ner interface {
	a()
	b(int)
	c(string) string
}

type N int

func (N) a()              { fmt.Print("N.a") }
func (N) b(int)           {}
func (N) c(string) string { return "" }

func main() {
	var n N
	var t Ner = n
	t.a()
}
