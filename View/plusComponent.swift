//
//  plusComponent.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/19.
//

import SwiftUI

struct plusComponent: View {
    @State var firstNum :Int
    @State var secondNum: Int
    var answer = ["1","2","3"]
    @State var selectedStudent: Int
    init(){
        firstNum = Int.random(in: 0...10)
        secondNum = Int.random(in: 0...10)
        selectedStudent = 0
        
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.gray
                
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        let exampleString = String(firstNum) + " + " + String(secondNum)
        Text(exampleString).font(.system(size:50, weight: .bold))
        Picker("selected student", selection: $selectedStudent) {
            ForEach(0 ..< answer.count) {
                Text(self.answer[$0])
            }
            
        }.pickerStyle(SegmentedPickerStyle())
        Text("당신은 " + answer[selectedStudent] + "를 선택하였습니다. ")
    }
}
    
struct plusComponent_Previews: PreviewProvider {
    static var previews: some View {
        plusComponent()
    }
}
