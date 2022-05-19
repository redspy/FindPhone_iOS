//
//  FamilyView.swift
//  PhotoSoul
//
//  Created by Minsu Han on 2022/05/18.
//

import SwiftUI

struct FamilyView: View {
    var peoples = ["엄마", "아빠", "소을", "다을"]
    @State var selectedPeople = 0
    var body: some View {
        NavigationView {
            
            VStack {
                Rectangle().frame(height: 10).background(Color.white).foregroundColor(Color.white)
                NavigationLink("소다", destination: testComponent())
                    .navigationTitle("우리가족")
                Rectangle().frame(height: 10).background(Color.white).foregroundColor(Color.white)
                NavigationLink("엄마아빠", destination: mompaComponent())
                Rectangle().frame(height: 10).background(Color.white).foregroundColor(Color.white)
                NavigationLink("더하기 놀이",destination: plusComponent())
                Rectangle().frame(height: 10).background(Color.white).foregroundColor(Color.white)
            }
            
            .frame(
                  minWidth: 0,
                  maxWidth: .infinity,
                  minHeight: 0,
                  maxHeight: .infinity,
                  alignment: .center
                )
            .padding(30)
            
        }
    }
}

struct FamilyView_Previews: PreviewProvider {
    static var previews: some View {
        FamilyView()
    }
}
