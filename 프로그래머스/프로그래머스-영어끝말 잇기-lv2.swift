//
//  프로그래머스-영어끝말 잇기-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12981

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    let wordcount = words.count
    var words = words
    var passWords: [String] = [words.removeFirst()]
    var isRwong = false

    while words.isEmpty == false {
        let currentWords = words.removeFirst()
        if passWords.last!.last! != currentWords.first! ||
        passWords.contains(currentWords) {
            passWords.append(currentWords)
            isRwong = true
            break
        }
        passWords.append(currentWords)
    }

    if isRwong {
        let count = passWords.count
        if count % n == 0 {
            return [n, count / n]
        } else {
            return [count % n, count / n + 1]
        }
    } else {
        return [0, 0]
    }
}
