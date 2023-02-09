//
//  알고리즘- 선택 정렬,삽입 정렬.swift
//  
//
//  Created by KoJeongseok on 2023/02/10.
//


// 선택 정렬
// : 가장 작은것을 선택하여 앞으로 보내는 과정을 반복
// 시간복잡도 O(n^2) 데이터의 개수가 100개 늘어나면 수행시간은 10,000배로 늘어남
// 가장 작은것은 선택하여 아픙로 보내는 과정을 N - 1 번 반복

var arr = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]
for i in 0..<arr.count {
    var minIndex = i
    for j in i..<arr.count {
        if arr[minIndex] > arr[j] {
            minIndex = j
        }
    }
    arr.swapAt(minIndex, i)
}
print(arr)

// 삽입 정렬
// 특정한 데이터를 적절한 위치에 삽입, 특정한 데이터가 적절한 위치에 들어가기 이전에 그 앞까지의 데이터는 이미 정렬되어 있다고 가정
// 시간복잡도 O(n^2) but 데이터가 거의 정렬되어 있다면 매우 빠르게 정렬 됨(퀵정렬보다)

var arr1 = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

for i in 1..<arr1.count {
    for j in stride(from: i, to: 0, by: -1) {
        if arr1[j] < arr1[j - 1] {
            arr1.swapAt(j, j - 1)
        }
    }
}
print(arr1)
