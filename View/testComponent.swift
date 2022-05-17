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
        VStack(alignment: .leading, spacing: 10) {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(nameText)
//            Image("pad")
//                .clipShape(Circle())
//                .frame(width: 100, height: 100)
//                .shadow(radius: 10)
//                .padding(.bottom)
            Button("Press", action: ButtonAction)
                
            Spacer()
        }
        
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
        testComponent()
    }
}
