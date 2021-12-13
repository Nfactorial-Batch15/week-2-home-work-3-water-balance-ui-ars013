//
//  Rem.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct Rem: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0){
                Button(action: {}){
                Image("chevron.left")
//                    .padding(.leading, 9)
                    .offset(x: -9)
                    .padding(.top, 55)
                }
            Text("REMINDER")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239))
                .font(.system(size: 17, weight: .black))
                .italic()
                .frame(maxWidth: .infinity)
                .padding(.top, 56)
            }
            
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36, weight: .semibold))
                .frame(maxWidth: .infinity)
                .padding(.top, 132)
            
            goalViews2()
                .padding(.top, 32)
            
            Spacer()
            customButton6()
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Rem_Previews: PreviewProvider {
    static var previews: some View {
        Rem()
    }
}
