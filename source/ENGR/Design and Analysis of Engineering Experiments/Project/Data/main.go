package main

import (
	"bufio"
	"encoding/csv"
	"fmt"
	"io"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
)

type Entry struct {
	Time        float64
	Temperature int
}

type Dataset struct {
	Configuration Configuration
	Instance      string
	Entries       []Entry
}

type Configuration struct {
	Insulation, Orientation, Coating bool
}

func findData() []string {
	var files []string

	root := "./"

	err := filepath.Walk(root, func(path string, info os.FileInfo, err error) error {

		if err != nil {

			fmt.Println(err)
			return nil
		}

		found, err := regexp.MatchString("[H|L]{3}[0-9]+.csv", filepath.Base(path))

		if !info.IsDir() && found {
			files = append(files, path)
		}

		return nil
	})

	if err != nil {
		log.Fatal(err)
	}
	return files

}

func main() {

	var data []Dataset

	for _, name := range findData() {
		dat := Dataset{
			Configuration: Configuration{
				Coating:     name[0] == 'H',
				Insulation:  name[1] == 'H',
				Orientation: name[2] == 'H',
			},
			Instance: name[3 : len(name)-5],
			Entries: func(filename string) (entries []Entry) {
				csvFile, _ := os.Open(filename)
				reader := csv.NewReader(bufio.NewReader(csvFile))
				reader.TrimLeadingSpace = true
				for {
					line, error := reader.Read()
					if error == io.EOF {
						break
					} else if error != nil {
						log.Fatal(error)
					}
					time, err := strconv.ParseFloat(line[0], 64)
					if err != nil {
						log.Fatal(err)
					}
					temp, err := strconv.ParseInt(line[1], 10, 0)
					if err != nil {
						log.Fatal(err)
					}
					entries = append(entries, Entry{
						Time:        time,
						Temperature: int(temp),
					})
				}
				return
			}(name),
		}
		data = append(data, dat)
	}

}
