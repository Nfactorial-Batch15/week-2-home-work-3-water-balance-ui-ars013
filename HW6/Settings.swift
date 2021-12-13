//
//  Settings.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        ZStack{
        mainBackScreen()
            VStack(spacing: 0){
                Text("EDIT")
                    .font(.system(size: 17, weight: .black))
                    .italic()
                    .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239/255, opacity: 1))
                    .padding(.top, 95)
                inform2()
                    .padding(.top, 41)
                Spacer()
            }
        }
//        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
            .tabItem{
                        Label("Settings", systemImage: "gear")
                    }
                    .tag(2)
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct inform2: View{
    var body: some View{
        VStack(spacing: 0){
            r
        }
        .padding([.leading, .trailing], 16)
    }
    
    var r: some View{
        VStack(spacing: 0){
        HStack{
            Text("Daily Intake Level")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(.black)
                .padding(.leading, 16)
            
            Spacer()
            
            Text("2400 ML")
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(red: 60/255, green: 60/255, blue: 67/255, opacity: 0.6))
                .padding(.trailing, 12)
            
            Image("chevron")
                .padding(.trailing, 16)
        }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
        
            HStack{
                Text("Your goal")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                
                Spacer()
                
                Image("chevron")
                    .padding(.trailing, 16)
            }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
            
            HStack{
                Text("Reminder")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                
                Spacer()
                
                Image("chevron")
                    .padding(.trailing, 16)
            }
            Image("Separator")
                .padding(.top, 11)
                .padding(.bottom, 23)
            
        }
    }
}
