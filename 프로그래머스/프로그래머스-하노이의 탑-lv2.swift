//
//  프로그래머스-하노이의 탑-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/16.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12946

/// 처음에는 너무 어렵게 탑이 쌓이는 과정 자체의 규칙을 찾으려고 했지만
/// 결국 지금 쌓으려는 탑의 크기 보다 한칸 적은 탑을 중간에 위치시키고 가장 큰 탑을
/// 목표지점에 위치하고 중간에 위치한 탑을 다시 목표지점에 옮기면 되는것이었다.

import Foundation

func solution(_ n:Int) -> [[Int]] {
    return hanoi(n, 1, 2, 3)
}

func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int) -> [[Int]] {
    if n == 2 {
        return [[start,mid], [start,end], [mid,end]]
    }
    return hanoi(n - 1, start, end, mid ) +
    [[start, end]] +
    hanoi(n - 1, mid, start, end)
}
