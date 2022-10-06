

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var array = unsortedIntegers

func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
   
    let temp = integers[firstIndex]
     integers[firstIndex] = integers[secondIndex]
     integers[secondIndex] = temp
}

func sort(array: [Int]) {

    var totalswapcount = 0
    var passcount = 0
    var array = unsortedIntegers
    var swapcountperpass = 0

    print("Pass: \(passcount), Swaps: \(swapcountperpass)/\(totalswapcount), Array: \(unsortedIntegers)")
    for index in 0..<array.count-1 {
        swapcountperpass = 0
        passcount += 1
        var smallestIndex = index
        for switchIndex in index+1..<array.count {
            if array[switchIndex] < array[smallestIndex] {
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
    sort(array: array)
