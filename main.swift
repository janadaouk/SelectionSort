

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

//var array = unsortedIntegers
var unsorted = [String]()
var input: String

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
   
    let temp = integers[firstIndex]
     integers[firstIndex] = integers[secondIndex]
     integers[secondIndex] = temp
}

func compareString(stringOne: String, stringTwo: String) -> Bool {
    let firstString = stringOne.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    let secondString = stringTwo.lowercased().filter("abcdefghijklmnopqrstuvwxyz".contains)
    if firstString > secondString {
        return true
    }
    return false
}

func sort(array: [String]) {

    var totalswapcount = 0
    var passcount = 0
    var array = array
    var swapcountperpass = 0

//    print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(unsortedIntegers)")
    for index in 0..<array.count-1 {
        swapcountperpass = 0
        passcount += 1
        var smallestIndex = index
        for switchIndex in index+1..<array.count {
  //          if array[switchIndex] < array[smallestIndex] {
            if compareString(stringOne: array[smallestIndex], stringTwo:array[switchIndex] ) == true {
            smallestIndex = switchIndex
            }
//            print("smallestindex: \(smallestIndex), switchIndex: \(switchIndex)")              
        }
            swap(integers: &array, firstIndex: index, secondIndex: smallestIndex)
            totalswapcount += 1
            swapcountperpass += 1
            print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(array)")      
    }
   }
while let input = readLine() {
    unsorted.append(input)
}
sort(array: unsorted)
