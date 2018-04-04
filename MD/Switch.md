## Switch
> * 패턴 비교문

> * 가장 첫번째 매칭되는 패턴의 구문이 실행된다.

### switch 문법
* 각의 상태는 case 키워드를 통해 나타낼수 있다.

* 각 case 상태 끝에는 콜론( : )을 작성해서 매칭 패턴을 종료한다.

* 여러개의 case가 필요하면 콤마( , )를 통해 상태를 추가 할수 있다.

* 각 case는 분기로 실행되며 매칭된 해당 case문이 종료되면 switch 문을 종료시킨다.

* 각 case의 상태는 switch 문의 value값에 매칭된 지점을 결정하며, 모든 value에 대해 매칭 되어야 한다. 만약 매칭되는 값이 없다면 default 키워드를 통해 기본 매칭값을 설정하며, default키워드는 마지막에 배치된다.

```swift
func sampleSwitch(someCharacter:Character)
{
    switch someCharacter {
    case "a":
        print("The first letter of the alphabet")
    case "z":
        print("The last letter of the alphabet")
    default:
        print("Some other character")
    }
}
```

---

### Interval Matching
* Switch 문의 상태는 단순 value 매칭을 넘어 좀더 다양한 패턴을 통해 매칭이 가능하다.

* interval matching은 범위 연산자를 통해 해당 범위에 해당하는 value를 매칭 시킬수 있다.

```swift
func interSwitch(count:Int)
 {
     let countedThings = "moons orbiting Saturn"
     let naturalCount: String
     switch count {
     case 0:
         naturalCount = "no"
     case 1..<5:
         naturalCount = "a few"
     case 5..<12:
         naturalCount = "several"
     case 12..<100:
         naturalCount = "dozens of"
     case 100..<1000:
         naturalCount = "hundreds of"
     default:
         naturalCount = "many"
     }
     print("There are \(naturalCount) \(countedThings).")
 }
 
```

---

### 튜플매칭

* 튜플을 사용해서 여러개의 value를 동시에 확인 할수 있습니다.

* 사용 가능한 모든 값에 대한 매칭은 와일드 카드 ( _ )를 통해서 매칭 가능합니다.

```swift
func getPoint(somePoint:(Int,Int))
     {
         switch somePoint {
         case (0, 0):
             print("\(somePoint) is at the origin")
         case (_, 0):
             print("\(somePoint) is on the x-axis")
         case (0, _):
             print("\(somePoint) is on the y-axis")
         case (-2...2, -2...2):
             print("\(somePoint) is inside the box")
         default:
             print("\(somePoint) is outside of the box")
         }
}
```

---

### 값 바인딩

* case 내부에서 사용되는 임시 값으로 매칭 시킬수 있다.

```swift
func getPoint(somePoint:(Int,Int))
     {
         switch somePoint {
         case (0, 0):
             print("\(somePoint) is at the origin")
         case (let x, 0):
             print("on the x-axis with an x value of \(x)")
         case (0, let y):
             print("on the y-axis with an y value of \(y)")
         case (-2...2, -2...2):
             print("\(somePoint) is inside the box")
         default:
             print("\(somePoint) is outside of the box")
         }
}
```

---

### where문

* where 문의 추가로 추가 조건을 넣을수 있다.

```swift
func wherePoint(point:(int,Int))
{
    switch point {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
    }
}
```