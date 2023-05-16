//
//  프로그래머스-호텔 대실-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/155651

import Foundation

/// 아쉽게도 이 문제는 풀지 못했다.
/// 그래서 답을 보았다.
/// 핵심은 시작 시간이 빠른 순으로 정렬하고 끝나는 시간을 기준으로 rooms 배열에 추가하거나 값을 할당해주는 것이다.

func solution(_ book_time:[[String]]) -> Int {
    var rooms: [Int] = []
    var times: [[Int]] = book_time.map {
        let start = $0[0].components(separatedBy: ":").map { Int($0)! }
        let end = $0[1].components(separatedBy: ":").map { Int($0)! }
        return [start[0] * 60 + start[1], end[0] * 60 + end[1]]
    }

    let sortedTimes = times.sorted { $0[0] < $1[0] }

    for time in sortedTimes {
        if rooms.isEmpty {
            rooms.append(time[1] + 10)
        } else if rooms.min()! > time[0] {
            rooms.append(time[1] + 10)
        } else {
            let index = rooms.firstIndex(of: rooms.min()!)!
            rooms[index] = time[1] + 10
        }
    }
    return rooms.count
}
