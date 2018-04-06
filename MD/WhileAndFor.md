## 반복문  
>* 반복적으로 실행되는 코드를 만드는 구문   

>* 대표적인 반복문으로 while문과 for-in문이 있다.   

#### while문
```swift
var index = 0;
while index < 10
{
print("현재 횟수는 \(index)입니다.") 
index += 1;
}
```
> * 조건이 참일경우 구문 반복 실행   

> * 구문안에 조건을 변화시키는 내용이 없으면 무한 반복이 될수 있다.   

---

### for-in문

```swift
let numbers = [1,2,3,4,5]
for number in numbers
{
    print("\(number)")
}
```
```swift
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
```
> 배열의 항목, 숫자의 범위 또는 문자열의 문자와 같은 시퀀스를 반복 할때 사용
