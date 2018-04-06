//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

func wun(year: Int) {
    let yearwun1 = year % 4
    let yearwun2 = Double(year) * 0.01
    let yearwun3 = Int(yearwun2) % 10
    
    if yearwun1 == 0 && (yearwun3 == 0 || yearwun3 == 4) {
        print("윤년")
 
    }
      else if yearwun1 == 0 {
         print("윤년입니다")
     }
     else {
        print("윤년이 아닙니다")
     }
        if year % 100 == 0 {
            if year % 400 == 0{
                print("윤년입니다.")
            }
            else{
                print("윤년이아닙니다.")
            }
        }
        else if year % 4 == 0 {
            print("윤년입니다.")
        }
        else {
            print("윤년이아닙니다.")
        }
    
}
wun(year: 1600)
