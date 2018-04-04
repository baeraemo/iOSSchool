## 옵셔널 (Optional)
> 값이 있을 수도 없을 수도 있고 없을 수도 있다

#### nil
```swift
let person: Person
print(person.name)
```
> 변수 선언 후 초기화 하지 않은 상태를 nil이라 한다.

---

### !

```swift
var person: Person!
var name: String!
var age: Int!
var subjects: [Int]!
```
> 해당 변수에는 값이 항상 존재한다.

---

### ?

```swift
var person: Person?
var name: String?
var age: Int?
var subjects: [Int]?
```
> 해당변수가값이있을수도있고, nil일수도있다!

---

## Optional Binding

#### 강제 해제(Forced Unwrapping)
```swift
func testFuc(optionalStr:String?) {
    if optionalStr != nil {
        let unwrapStr:String = optionalStr!
        print(unwrapStr)
    }
}
```
---

#### 선택적 해제(Optional Binding)
```swift
func testFuc(optionalStr:String?) {
    if let unwrapStr:String = optionalStr {
        print(unwrapStr) 
    }
}
```

> Optional Binding 변수가 두개 이상일 경우 `,`콤마를 통해 옵셔널 바인딩을 추가, 또 조건을 추가 할수 있다.

```swift
func isNumber(inputNum1:String, inputNum2:String) -> Bool{
    if let firstNumber = Int(inputNum1), let secondNumber = Int(inputNum1){
        return true
    }else{
        return false
    }
}
```
---

## guard문

```swift
guard 조건값 else {return(거짓일때 실행)}
    참일경우 넘어오기
```
