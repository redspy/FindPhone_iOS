//
//  testComponent.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/12.
//

import SwiftUI

struct testComponent: View {
    @State var nameText: String
    init() {
        nameText = "HanSoul"
    }
    var body: some View {

            
        VStack {

            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(nameText)

            Image("pad")
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
                .shadow(radius: 10)
                .padding(.bottom)
            Button("Press", action: ButtonAction)
                
            Spacer()
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
            

        .background(Color.yellow)
        
    }
    
    func ButtonAction() {
        if (nameText=="HanSoul")
        {
            nameText = "한소을"
        }
        else
        {
            nameText = "HanSoul"
        }
        
    }
}

struct testComponent_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            testComponent()
        }
    }
}
