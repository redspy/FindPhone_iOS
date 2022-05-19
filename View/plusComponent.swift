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
    @State var answer = ["1","2","3"]
    @State var sum = 0
    @State var selectedStudent: Int
    init(){
        firstNum = Int.random(in: 1...9)
        secondNum = Int.random(in: 1...3)
        selectedStudent = 0
        sum = firstNum + secondNum;
        answer[0] = String(sum-1)
        answer[1] = String(sum)
        answer[2] = String(sum+1)
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
            
        }
        .pickerStyle(SegmentedPickerStyle())
        .frame(width: .none, height: 30, alignment: .center)
        Text("당신은 " + answer[selectedStudent] + "를 선택하였습니다. ")
        Rectangle().frame(width: .none, height: 30, alignment: .center).foregroundColor(Color.white)
        Button("이거요", action: answerButton).font(.system(size:40, weight: .bold))
    }
    
    func answerButton()
    {
        firstNum = Int.random(in: 1...9)
        secondNum = Int.random(in: 1...3)
        sum = firstNum + secondNum;
        answer[0] = String(sum-1)
        answer[1] = String(sum)
        answer[2] = String(sum+1)
    }
}
    
struct plusComponent_Previews: PreviewProvider {
    static var previews: some View {
        plusComponent()
    }
}
