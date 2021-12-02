/*
* The Tower of Hanoi program, that plays the hanoi
* game by itself given the number of disks.
*
* @author  Matthew Sanii
* @version 1.0
* @since   2021-12-02
*/

import Foundation

let startPeg = 1
let endPeg = 3

func hanoi(nOfDisks: Int, startPeg: Int, endPeg: Int) {
    if nOfDisks == 1 {
        print("Move disk 1 from peg", startPeg, "to peg", endPeg)
    } else {
        hanoi(nOfDisks: (nOfDisks - 1), startPeg: (startPeg), endPeg: (6 - startPeg - endPeg))
        print("Move disk", nOfDisks, "from peg", startPeg, "to peg", endPeg)
        hanoi(nOfDisks: (nOfDisks - 1), startPeg: (6 - startPeg - endPeg), endPeg: (endPeg))
    }
}

print("How many disks are there (max 8)? ")
let userChoice = readLine()!
guard var disks = Int(userChoice) else {
    print("Expected a number, got something else.")
    exit(0)
}
hanoi(nOfDisks: disks, startPeg: startPeg, endPeg: endPeg)
print("")
print("done")
