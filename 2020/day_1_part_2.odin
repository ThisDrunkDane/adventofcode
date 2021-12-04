package main

import "core:os"
import "core:fmt"
import "core:strings"
import "core:strconv"

main :: proc() {
    data, ok := os.read_entire_file("./input/day_1.input");
    if ok != true {
        fmt.println("Error reading file.");
        os.exit(1);
    }

    lines := strings.split(string(data), "\n");

    for i := 0; i < len(lines); i += 1 {
        x := strconv.atoi(lines[i]);

        for j := i+1; j < len(lines); j += 1 {
            y := strconv.atoi(lines[j]);

            for k := j+1; k < len(lines); k += 1 {
                z := strconv.atoi(lines[k]);

                if x + y + z== 2020 {
                    fmt.printf("Solution: %v + %v + %v = %v\n", x, y, z, x * y * z);
                    break;
                }
            }
        }
    }

    fmt.println("END OF DAY 1 PART 2");
}