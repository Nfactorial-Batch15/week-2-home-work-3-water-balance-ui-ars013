//
//  RME.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct RME: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack{
                Button(action: {}){
                Image("chevron.left")
                    .offset(x: -9)
                }
                
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239))
                .font(.system(size: 24, weight: .black))
                .italic()
                .frame(maxWidth: .infinity)
                .padding(.top, 108)
            }
            Text("Remind me each")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36, weight: .semibold))
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            
            goalViews2()
                .padding(.top, 32)
            
            Spacer()
            customButton2()
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct RME_Previews: PreviewProvider {
    static var previews: some View {
        RME()
    }
}

struct goalViews2: View {
//    @State var item1Selected: Bool = false
//    @State var item2Selected: Bool = false
//    @State var item3Selected: Bool = false
//    @State var item4Selected: Bool = false
//    @State var item5Selected: Bool = false
//    @State var item6Selected: Bool = false
//    @State var item7Selected: Bool = false
//    @State var item8Selected: Bool = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color (red: 212/255, green: 225/255, blue: 248/255))
//                .frame(width: 358, height: 330)
            VStack {
                HStack{
                choiceGoalCustom2(title: "15 minutes")
//               , selected: self.$item1Selected)
                choiceGoalCustom2(title: "30 minutes")
//                    , selected: self.$item2Selected)
                }
                HStack{
                choiceGoalCustom2(title: "45 minutes")
//                    , selected: self.$item3Selected)
                choiceGoalCustom2(title: "1 hour")
//                    , selected: self.$item4Selected)
                }
                HStack{
                choiceGoalCustom2(title: "1,5 hours")
//                    , selected: self.$item5Selected)
                choiceGoalCustom2(title: "2 hours")
//                    , selected: self.$item6Selected)
                }
                HStack{
                choiceGoalCustom2(title: "3 hours")
//                    , selected: self.$item7Selected)
                choiceGoalCustom2(title: "4 hours")
//                    , selected: self.$item8Selected)
                }
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(height: 330)
    }
}

struct choiceGoalCustom2: View {
    var title: String = ""
//    @Binding var selected: Bool
    var body: some View {
        ZStack {
            Button(action: {}){
//                self.selected ?
//                RoundedRectangle(cornerRadius: 16)
//                    .overlay(RoundedRectangle(cornerRadius: 16)
//                                .stroke(.white, lineWidth: 6)
//                    )
//                :
                RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.white)
//            HStack {
            }
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 16, weight: .semibold))
//                Spacer()
//                Image(self.selected ? "Picker" : "Ellipse 1")
//            }
            .padding([.trailing, .leading], 24)
            }
        }
//        .onTapGesture {
//            self.selected.toggle()
//        }
    }

struct customButton2: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                    Text("Next")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
            .frame(height: 60)
        }
    }
}
