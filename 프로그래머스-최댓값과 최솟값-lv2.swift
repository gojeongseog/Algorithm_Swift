//
//  프로그래머스-최댓값과 최솟값-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/10.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12939

import Foundation
func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map {Int($0)!}
    let answer = "\(arr.min()!) \(arr.max()!)"
    return answer
}
