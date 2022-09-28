// Adapted from Cloud Native DevOps with Kubernetes: Building, Deploying, and Scaling Modern Applications in the Cloud 2nd Edition by Justin Domingus, John Arundel

package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func getUser() string {
	username := "ERROR"

	user, ok := os.LookupEnv("USER")

	if !ok {
		return username
	} else {
		username := user
		return username
	}
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintln(w, "Hello, "+getUser()+"!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Running first class app. Press Ctrl+C to exit...")
	log.Fatal(http.ListenAndServe(":8888", nil))
}
