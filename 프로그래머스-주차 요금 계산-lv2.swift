//
//  프로그래머스-주차 요금 계산-lv2.swift
//  
//
//  Created by KoJeongseok on 2023/05/15.
//

import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var cars: [String: (time: Int, state: String)] = [:]
    var maxTime: Int = 23 * 60 + 59

    for record in records {
        let record = record.components(separatedBy: " ")
        let time = record[0].components(separatedBy: ":").map { Int($0)! }.reduce(0) { $0 * 60 + $1 }
        let number = record[1]
        let state = record[2]

        if cars[number] == nil {
            cars[number] = (time: time, state: state)
        } else {
            cars[number] = (time: time - cars[number]!.time, state: state)
        }
    }
    print(cars)
    let sortedCars = cars.sorted { $0.key < $1.key }
    var answer = [Int]()
    for car in sortedCars {
        var total = 0
        if car.value.state == "IN" {
            total = maxTime - car.value.time
        } else {
            total = car.value.time
        }

        if total <= fees[0] {
            answer.append(fees[1])
        } else if (total - fees[0]) % fees[2] == 0 {
            answer.append(fees[1] + (((total - fees[0]) / fees[2]) * fees[3]) )
        } else {
            answer.append(fees[1] + (((total - fees[0]) / fees[2]) * fees[3]) + fees[3])
        }
    }
    return answer
}
