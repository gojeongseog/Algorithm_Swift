//
//  알고리즘-퀵 정렬,계수 정렬.swift
//  
//
//  Created by KoJeongseok on 2023/02/11.
//


// 퀵 정렬
// 정렬 알고리즘 중 가장 많이 사용되는 알고리즘
// 기준 데이터를 설정하고 기준보다 작은 데이터와 큰 데이터로 나누는 행위를 나눌 수 없을때까지 나눠서 반환
// 시간복잡도 평균적으로는 O(NlogN)이며 최악의 경우에도 O(N^2)라는 준수한 성능

var arr = [7, 5, 9, 0, 3, 1, 6, 2, 4, 8]

func quick(array: [Int]) -> [Int] {
    guard let first = array.first, array.count > 1 else { return array }
    let pivot = first
    let left = array.filter { $0 < pivot }
    let right = array.filter { $0 > pivot }
    return quick(array: left) + [pivot] + quick(array: right)
}



//  계수 정렬
// 특정한 조건이 부합할 때만 사용할 수 있지만 매우 빠름
// 특정한 조건?: 가장 작은 수와 가장 큰수를 배열에 넣어야 하기 때문에 데이터의 크기 범위가 제한되어 정수 형태로 편할 수 있을때만 사용 가능
// 다른 정렬과는 다르게 연속된 수만 가능한듯? 하지만 숫자의 중복은 상관 없음
// 시간 복잡도(데이터의 개수: N. 데이터중 최대값의 크기 K) O(N + K)
// 심각한 비효울을 초래하는 경우도 있음 -> 데이터가 0과 999,999 단 2개인 경우라도 배열의 크기는 100만개가 된다.

var arr1 = [7, 5, 9, 0, 3, 1, 2, 9, 1, 8, 0, 5, 2]
var count = Array(repeating: 0, count: arr3.max()! + 1) // 0 ~ 9 까지를 담아야 하기 때문에 10개 필요

for i in 0..<arr1.count {
    count[arr1[i]] += 1
}
print(count)
for i in 0..<count.count {
    for _ in 0..<count[i] {
        print(i)
    }
}
