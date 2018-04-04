import UIKit
//딕셔너리는 들어있는 값에 순서가 없지만, 키를 기준으로 정렬하고 싶습니다. 그래서 키와 값을 튜플로 구성하고, 이를 순서대로 리스트에 넣으려고 합니다.
//예를들어 {김철수:78, 이하나:97, 정진원:88}이 있다면 각각의 키와 값을
//
//(김철수, 78)
//(이하나, 97)
//(정진원, 88)
//과 같이 튜플로 분리하고 키를 기준으로 정렬해서 다음과 같은 리스트를 만들면 됩니다.
//[ (김철수, 78), (이하나, 97), (정진원, 88) ]
//
//다음 sort_dictionary 함수를 완성해 보세요.

//func q1(name:String, soo:Int) -> [String:Int]{
//
//
//    return dict1
//}

func reQ1(dict:[String:Int]) -> [(String, Int)] {
    var tuple:[(String, Int)] = []
    for n in dict{
        let (key, value) = n
        
        tuple.append((key,value))
    }
    
    print(tuple)
    tuple.sorted(by: )
    
    print(tuple)
    return tuple
}

var dict1:[String:Int] = [
    
    "정진원": 88,
    "이하나": 111,
    "김철수": 100
]

reQ1(dict: dict1)

//옵셔널 강제 !를 붙히면 풀림
//inputNum이 한개가 아닌 두개라면?
//옵셔널 바인딩방법
func isNumber(inputNum1:String?, inputNum2:String) -> Bool {
    if let input11: String = inputNum1 , let input22 = Int(inputNum2) {
        print("\(input11)" + "\(input22)")
        return true
    }
    else{
        return false
    }
    
    
}
//divisible 메소드는 int형 배열 array와 int divisor를 매개변수로 받습니다.
//array의 각 element 중 divisor로 나누어 떨어지는 값만 포함하는 새로운 배열을 만들어서 반환하도록 divisible에 코드를 작성해 보세요.
//
//예를들어 array가 {5, 9, 7, 10}이고 divisor가 5이면 {5, 10}을 리턴해야 합니다.

func divisible(a: [Int], b:Int) -> [Int]{
    var hab:[Int] = []
    for c in a {
        if c % b == 0 {
            hab.append(c)
        }
    }
    return hab
}
divisible(a: [5,9,7,10], b: 5)




//no_continuous함수는 스트링 s를 매개변수로 입력받습니다.
//
//s의 글자들의 순서를 유지하면서, 글자들 중 연속적으로 나타나는 아이템은 제거된 배열(파이썬은 list)을 리턴하도록 함수를 완성하세요.
//예를들어 다음과 같이 동작하면 됩니다.
//
//s가 '133303'이라면 ['1', '3', '0', '3']를 리턴
//s가 '47330'이라면 [4, 7, 3, 0]을 리턴

func no_coninuous(s: String) -> [Int] {
//    let qw = Int(s)
//    let A:[Int] = [qw!]
    var B:[Int] = []
    
    //    for val in s {
    //        B.append(val as! Int)
    //    }
    //    print(B)
    //    for _ in 0..<A.count{
    
    for q in s{
        print(q)
        let str:String = String(q)
        let integer :Int = Int(str)!
        
        B.append(integer)
    }
    return B
}
no_coninuous(s: "47330" )







