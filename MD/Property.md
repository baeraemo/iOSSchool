## Property
>변수의 다른 이름   

>클래스, 구조체, 열거형에서 전체의 속성으로 사용되는 변수를 프로퍼티라고 부른다.

### 저장 프로퍼티(Stored Properties)

* 가장 일반적인 프로퍼티

* 값을 저장하는 용도로 사용된다.

* 클래스, 구조체에서만 인스턴스와 연관된 값을 저장한다.   

* 초기값을 설정 할 수 있습니다.

```swift
struct Subject {
	var name:String
	var score:Int
}
class Person {	var name:String	var gender:String 
	var blood:String? }
```

---

### 지연 저장 프로퍼티 (Lazy Stored Properties)

* 지연 저장된 속성은 처음 프로퍼티가 사용되기 전 까지 초기값이 계산되지 않은 특성을 가지고 있는 프로퍼티이다.

* 지연 저장 속성은 lazy keyword를 선언 앞에 작성한다.

* let은 지연 저장 프로퍼티로 설정할 수 없다.

* 초기화하는데 오래걸리거나, 복잡한 초기화 과정이 있는 변수의 경우 지연저장을 사용하면 좋다.

```swift
class ViewController: UIViewController {//init 시점이 아닌 사용이 되는 시점에 초기화 한다.	lazy var cal:Calculator = Calculator()	
	override func viewDidLoad() {		super.viewDidLoad()
		
		cal.average(student: Student())
	}
}
```

---

### 연산 프로퍼티(Computed Properties)

* 실제로 값을 저장하지 않지만, get, set키워드를 통해서 값을 간접적으로 설정하거나 받을 수 있다.

* 일반적으로 메소드중 속성에 관련된 메소드를 연산프로퍼티로 사용한다.

* 클래스, 구조체, 열거형 모두에서 사용 가능하다.

```swift
struct Point {
     var x = 0.0, y = 0.0
 }

struct Size {
     var width = 0.0, height = 0.0
 }

struct Rect {
	var origin = Point() 
	var size = Size() 
	var center: Point {
         get {
             let centerX = origin.x + (size.width / 2)
             let centerY = origin.y + (size.height / 2)
             return Point(x: centerX, y: centerY)
         }
         set(newCenter) {
             origin.x = newCenter.x - (size.width / 2)
             origin.y = newCenter.y - (size.height / 2)
             #center = newCenter <- 자신을 바로 사용
         }
    }
}
```
>set의 값이름 미지정시 newValue 가 기본 값으로 사용된다.

---

### Read Only 연산 프로퍼티
>읽기 전용 연산프로퍼티 작성시 get 키워드 없이 바로 작성할 수 있다

>쓰기 전용 연산 프로퍼티는 작성할수 없다.

```swift
 struct Cuboid {
          var width = 0.0, height = 0.0, depth = 0.0
          var volume: Double {
              return width * height * depth
          }
}
```

---

### Property Observers


* 프로퍼티 값의 변화를 감시하고 그에 따라 대응한다.

* 초기값이 설정된 저장 프로퍼티에서 사용 가능하다.

* 프로퍼티의 값이 설정될때마다 호출된다.

* didSet, willSet 키워드를 통해 값 변화의 직전 직후를 감지 할수 있다.

* 값이름 미지정시 oldValue, newValue가 기본값으로 지정된다.

```swift
   var changeValue:Int = 0 {
       didSet(oldV) {
          print("oldValue \(oldV)")
       }
       willSet(willV)
       {
          print("newValue \(willV)")
       } 
}
   changeValue = 4
```

---

### 타입 프로퍼티(Type Properties)


* 인스턴스의 속성이 아닌, 타입에 따른 속성을 정의 할수 있다.

* static 키워드를 사용해서 타입 프로퍼티를 설정할수 있으며, 클래스의 경우 연산 프로퍼티의 오버라이드를 지원하기 위해서는 class 키워드를 사용해서 클래스 타입에서 연산 프로퍼티를 설정 해야 한다.(class키워드는 저장 프로퍼티는 사용불가)

* 값을 가져올때는 클래스의 이름을 통해서 가져올 수 있다.

```swift
struct AudioChannel {	static let level = 10	static var maxLevel = 0	var currentLevel: Int = 0 {		didSet {			if currentLevel > AudioChannel.level {				currentLevel = AudioChannel.level			}			if currentLevel > AudioChannel.maxLevel {
				AudioChannel.maxLevel = currentLevel
			}
		}
	}
}
```
---

### Method

* 메서드는 특정 타입에 관련된 함수를 뜻한다. 

* 함수의 문법과 같다.

* 인스턴스의 기능을 수행하는 인스턴스 메서드와 타입자체의 기능을 수행하는 타입 메서드로 나눌 수 있다.

---

### self Property

* 모든 인스턴스는 self 프로퍼티를 가지고 있다.

* self 프로퍼티는 자기 자신을 가르키고 있는 프로퍼티이다.

* Type Method안에서의 self는 클래스 자체를 가르키고, instance Method안에서는 self는 인스턴스를 가르킨다.

```swift
struct Point {
             var x = 0.0, y = 0.0
             func isToTheRightOf(x: Double) -> Bool {
                 return self.x > x
             }
}
```
---

### Value Type 프로퍼티 수정

* 기본적으로 구조체와 열거형의 값타입 프로퍼티는 인스턴스 메소드 내에 서 수정이 불가능 하다.

* 그러나 특정 메소드에서 수정을 해야 할 경우에는 mutating 키워드를 통해 변경 가능하다.

```swift
struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
			x += deltaX
			y += deltaY 
	}
}
```

---

### 타입 메서드


* 타입 프로퍼티랑 마찬가지로 타입 자체에서 호출이 가능한 메서드

* 메서드 앞에 static키워드를 사용하여 타입메서드를 작성할수 있다. 

* 타입 프로퍼티와 마찬가지로 클래스에서는 class키워드를 사용해 타입메서드를 표현한다.

* 타입 메소드 안에서의 self는 인스턴스가 아닌 타입을 나타낸다.