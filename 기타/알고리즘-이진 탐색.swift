//
//  알고리즘-이진 탐색.swift
//  
//
//  Created by KoJeongseok on 2023/02/17.


// 이진 탐색
// 찾으려는 데이터와 중간점 위치에 있는 데이터를 반복적으로 비교하여 원하는 데이터를 찾는다.
// 시간 복잡도: O(logN)

func binarySearch(numbers: [Int], target: Int) -> Int? {
    var first: Int = 0
    var end: Int = numbers.count - 1

    while first <= end {
        let mid: Int = (first + end) / 2
        if numbers[mid] == target {
            return mid
        } else if numbers[mid] < target {
            first = mid + 1
        } else {
            end = mid - 1
        }
    }
    return nil
}

let numbers = [2, 5, 7, 11, 23, 34, 55, 56, 78, 89, 90]
binarySearch(numbers: numbers, target: 7) // 2
