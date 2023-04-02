//
//  프로그래머스- [3차]파일명 정렬.swift
//  
//
//  Created by KoJeongseok on 2023/04/03.
//  https://school.programmers.co.kr/learn/courses/30/lessons/17686

import Foundation

func solution(_ files:[String]) -> [String] {
    var fileNames = [(head: String, number: String, tail: String)]()
    var answer = [String]()


    for name in files {
        var head: String = ""
        var number: String = ""
        var tail: String = ""

        for n in name {
            let str = String(n)
            if Int(str) == nil {
                if number == "" {
                    head += str
                } else {
                    tail += str
                }
            } else {
                if tail == "" {
                    number += str
                } else {
                    tail += str
                }
            }
        }
        let fileName = (head: head, number: number, tail: tail)
        fileNames.append(fileName)
    }
    let sortedFileNames = fileNames.sorted {
        ($0.head.uppercased(), Int($0.number)!) < ($1.head.uppercased(), Int($1.number)!)
    }

    for name in sortedFileNames {
        answer.append(name.head + name.number + name.tail)
    }

    return answer
}
