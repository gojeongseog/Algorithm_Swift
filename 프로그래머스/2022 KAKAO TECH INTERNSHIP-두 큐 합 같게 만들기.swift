//
//  2022 KAKAO TECH INTERNSHIP - 두 큐 합 같게 만들기
//  
//
//  Created by KoJeongseok on 2022/10/10.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/118667
import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    // 배열을 둘로 나누고 append와 removeFirst를 이용하여 시도 했지만
    // 시간 초과로 인해 실패 하였음
    // https://gyuios.tistory.com/216 해당 블로그를 참고
    // arr 이라는 배열에 queue1 과 queue2를 더하고 queue간 이동없이 구현하였음.
    
    var arr = queue1 + queue2
    var l = 0
    var r = queue1.count
    var q1Sum = queue1.reduce(0, +)
    let q2Sum = queue2.reduce(0, +)
    var num = (q1Sum + q2Sum) / 2
    var count = 0
    
    // 배열의 요소 중 num보다 큰 수가 있는지 확인
    if num < arr.max()! {
        return -1
    }
    // 두 큐의 합을 나눈 값에 나머지가 있는지 확인
    if (q1Sum + q2Sum) % 2 != 0  {
        return -1
    }
    
    while r < arr.count && l <= r {
        
        // queue1의 합이 num 보다 클때 arr[l]을 빼주고 다음 인덱스를 가리키기 위해ㅣ에 +1을 해준다
        if num < q1Sum {
            q1Sum -= arr[l]
            l += 1
        // queue1의 합이 num 보다 작을 때 arr[r]을 더해주고 다음 인덱스를 가리키기 위해 r에 +1을 해준다.
        } else if num > q1Sum {
            q1Sum += arr[r]
            r += 1
        // 조건 외의 경우 (num == q1Sum) 작업을 마침
        } else {
            break
        }
        count += 1
    }
    // 만약 모든 실행이 완료된 후에도 조건에 맞지 않는다면 -1을 반환 한다.
    if q1Sum != num {
        return -1
    }
    return count
}
