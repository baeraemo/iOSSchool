## Subscript

>* 클래스, 구조체, 열거형의 collection, list, sequence의 멤버에 접근 가능한 단축문법인 Subscript를 정의 할수 있다.

>* Subscript는 별도의 setter/getter없이 index를 통해서 데이터를 설정하거나 값을 가져오는 기능을 할 수 있다.

>* Array[index] / Dictionary[“Key”] 등의 표현이 Subscript이다.

---

### 예제 - struct

```swift
 struct TimesTable {
      let multiplier: Int
      subscript(index: Int) -> Int {
          return multiplier * index
      }
}
  let threeTimesTable = TimesTable(multiplier: 3)
  print("six times three is \(threeTimesTable[6])")
```
---

## extension

>Extensions 기능은 기존 클래스, 구조, 열거 형 또는 프로토콜 유형에 새로운 기능을 추가합니다

---


### Ex.mutating method

```swift
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
```

---

### Ex.Subscript

```swift
extension Int {
      subscript(digitIndex: Int) -> Int {
          var decimalBase = 1
          for _ in 0..<digitIndex {
              decimalBase *= 10
          }
          return (self / decimalBase) % 10
      }
}
  746381295[0]
// returns 5
  746381295[1]
// returns 9
  746381295[2]
// returns 2
  746381295[8]
// returns 7
```

