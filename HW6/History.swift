//
//  History.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct History: View {
    var body: some View {
        ZStack{
        mainBackScreen()
            VStack(spacing: 0){
                Text("TODAY")
                    .font(.system(size: 17, weight: .black))
                    .italic()
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255, opacity: 1))
                    .padding(.top, 95)
//                Spacer()
                
                inform()
                    .padding(.top, 41)
                Spacer()
            }
        }
//        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
            .tabItem{
                        Label("History", systemImage: "doc")
                    }
                    .tag(3)
    }
}

struct History_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}

struct mainBackScreen: View{
    var body: some View{
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(Color(red: 252/255, green: 253/255, blue: 255/255, opacity: 1))
            .frame(width: 390, height: 844)
    }
}

struct inform: View{
    var body: some View{
        VStack(spacing: 0){
            r
        }
        .padding([.leading, .trailing], 16)
    }
    
    var r: some View{
        VStack(spacing: 0){
        HStack{
            Text("250 ml")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(.black)
                .padding(.leading, 16)
            
            Spacer()
            
            Text("12:13")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6))
                .padding(.trailing, 16)
        }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
        
            HStack{
                Text("200 ml")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("14:10")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6))
                    .padding(.trailing, 16)
            }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
            
            HStack{
                Text("50 ml")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("15:13")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6))
                    .padding(.trailing, 16)
            }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
            
            HStack{
                Text("300 ml")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                
                Spacer()
                
                Text("19:10")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6))
                    .padding(.trailing, 16)
            }
            Image("Separator")
            .padding(.top, 11)
        }
    }
}
