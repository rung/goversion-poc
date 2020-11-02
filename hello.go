package main

import (
	"fmt"
	"github.com/pkg/errors"
)

func main() {
	fmt.Println("go")
	fmt.Println(throwerror())
}

func throwerror() error {
	return errors.New("foobar")
}
