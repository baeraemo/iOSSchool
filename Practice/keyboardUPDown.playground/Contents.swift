//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

// Do any additional setup after loading the view.
NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: nil) { (noti) in
    print("keyboad open")
    if let keyboardFrame  = noti.userInfo![UIKeyboardFrameEndUserInfoKey] as? CGRect
    {
        self.scrollView.contentOffset = CGPoint(x: 0, y: keyboardFrame.size.height)
    }
}


NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: nil) { (noti) in
    self.scrollView.contentOffset = CGPoint(x: 0, y: 0)
}
