//: [Previous](@previous)
//: # Escaping02
import Foundation

final class Callee {
//  func doSomething(closure: () -> Void) {    // Error
  func doSomething(closure: @escaping () -> Void) {
    DispatchQueue.main.async {     // 화면관련 처리를 이곳에서함 큐에서
      closure()
    }
  }
  
  init() {
    print("Callee was initialized")
  }
  deinit {
    print("Callee was deinitialized")
  }
}

final class Caller {
  let callee = Callee()
  var name = "James"
  
  func doSomething() {
//    callee.doSomething {
//      self.name = "Tom"    // Leak
//    }
//    callee.doSomething { [weak self] in
//      self?.name = "Tom"    // Release
//    }
    
//    callee.doSomething { [weak self] in
//      DispatchQueue.main.async {                 // 이것처럼 위에다가 weekself 해야 한다
//        self?.name = "Tom"   // Release
//      }
//    }
//    callee.doSomething {
//      DispatchQueue.main.async { [weak self] in
//        self?.name = "Tom"   // Leak                  //아래쪽에서 week self하면 위험할 수 있다
//      }
//    }
  }
  
  init() {
    print("Caller was initialized")
  }
  deinit {
    print("Caller was deinitialized")
  }
}

print("[ Init ]")
var caller: Caller? = Caller()

print("\n[ Deinit ]")
caller?.doSomething()
caller = nil

print("\n[ End ]")

//: [Next](@next)
