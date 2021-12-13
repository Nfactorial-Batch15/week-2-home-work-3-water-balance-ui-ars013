//
//  Main1.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct Main1: View {
    var body: some View {
        VStack(spacing: 0){
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239))
                .font(.system(size: 17, weight: .black))
                .italic()
                .frame(maxWidth: .infinity)
                .padding(.top, 56)
            
            mainS()
                .padding(.top, 30)
            Spacer()
            
            customButton4()
//                .padding(.top, 95)
            Spacer()
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
            .tabItem{
                        Label("Main", systemImage: "house.circle.fill")
                    }
                    .tag(1)
    }
}

struct Main1_Previews: PreviewProvider {
    static var previews: some View {
        Main1()
    }
}

struct mainS: View {
    static let gradientStart = Color(red: 212/255, green: 225/255, blue: 248/255, opacity: 1)
    static let gradientEnd = Color(red: 212/255, green: 225/255, blue: 248/255, opacity: 0)
    var body: some View{
        ZStack{
            rec
                .padding(.bottom, 0)
            VStack(spacing: 0){
                
                cir
                
                Text("Monday, 25th of November")
                    .frame(width: 326, height: 22)
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(red: 0/255, green: 0/255, blue: 0/255, opacity: 1))
                    .padding(.top, 58)
            }
        }
        
    Text("Add your first drink for today")
            .multilineTextAlignment(.center)
            .frame(height: 92)
            .font(.system(size: 36, weight: .semibold))
            .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255, opacity: 1))
            .padding(0)
    }
    
    var rec: some View{
        RoundedRectangle(cornerRadius: 16)
            .fill(LinearGradient(gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]), startPoint: .init(x: 0.5, y: 0), endPoint: .init(x: 0.5, y: 0.9)))
            .frame(height: 332)
    }
    
    var cir: some View{
        ZStack{
            
        Circle()
            .stroke(.white, lineWidth: 4)
            .frame(width: 180, height: 180)
            
            VStack{
            
            Text("0%")
                    .frame(width: 122, height: 46)
                .font(.system(size: 36, weight: .bold))
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255, opacity: 1))
                .padding(.bottom, 2)
            
            Text("0 out of 2,4 L")
                    .frame(width: 122, height: 34)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255, opacity: 1))
            }
        }
    }
}

struct customButton4: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                    Text("Add")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
            .frame(height: 60)
        }
    }
}
