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
            
            VStack(alignment: .leading, spacing: 10) {
                NavigationLink("소다", destination: testComponent())
                    .navigationTitle("우리가족")
                Spacer()
                NavigationLink("엄마아빠", destination: testComponent())
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
