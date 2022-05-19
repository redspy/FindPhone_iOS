//
//  mompaComponent.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/19.
//

import SwiftUI

struct mompaComponent: View {
    @State var nameText: String
    @State var imageText: String
    init() {
        nameText = "엄마"
        imageText = "insuk"
    }
    var body: some View {

        VStack {

            Text("엄마아빠 결혼")
            Text("소을다을")
            Spacer()
            Text(nameText)

            Image(imageText)
                .resizable()
                .clipShape(Circle())
                .frame(width: 300, height: 300)
                .shadow(radius: 10)
                .padding(.bottom)
            Button(nameText + "다~~", action: ButtonAction)
                
            Spacer()
            
                
            
        }
        .frame(
              minWidth: 0,
              maxWidth: .infinity,
              minHeight: 0,
              maxHeight: .infinity,
              alignment: .center
            )
        .background(Color.green)
    }
    func ButtonAction() {
        if (nameText=="엄마")
        {
            nameText = "아빠"
            imageText = "minsu"
        }
        else
        {
            nameText = "엄마"
            imageText = "insuk"
        }
        
    }
}

struct mompaComponent_Previews: PreviewProvider {
    static var previews: some View {
        mompaComponent()
    }
}
