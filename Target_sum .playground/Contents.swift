import UIKit



// Sorted array and target is given, find a pair whose sum is equal to target




func findTargetPair(arr: [Int], target: Int)-> (Int, Int){
    var firstPointer = 0
    var lastPointer = arr.count-1
    while firstPointer < lastPointer {
        if arr[firstPointer] + arr[lastPointer] == target{
            return (arr[firstPointer],arr[lastPointer])
        } else if arr[firstPointer] + arr[lastPointer] > target {
            lastPointer -= 1
        } else {
            firstPointer += 1
        }
    }
    
    return (-1, -1)
}

let arr: [Int] = []
let result = findTargetPair(arr: arr, target: 0)
print(result.0, result.1)
