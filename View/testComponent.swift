//
//  testComponent.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/12.
//

import SwiftUI

struct testComponent: View {
    @State var nameText: String
    @State var imageText: String
    init() {
        nameText = "한소을"
        imageText = "Soul"
    }
    var body: some View {


        VStack {

            Text("소을이와 다을이")
            Text("엄마아빠도하자12")
            Spacer()
            Text(nameText)

            Image(imageText)
                .resizable()
                .clipShape(Circle())
                .frame(width: 300, height: 300)
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
        if (nameText=="한다을")
        {
            nameText = "한소을"
            imageText = "Soul"
        }
        else
        {
            nameText = "한다을"
            imageText = "Daul"
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
