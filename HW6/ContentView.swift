//
//  ContentView.swift
//  HW6
//
//  Created by Арслан on 12.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("WATER BALANCE")
                .foregroundColor(Color(red: 5/255, green: 165/255, blue: 239))
                .font(.system(size: 24, weight: .black))
                .italic()
                .frame(maxWidth: .infinity)
                .padding(.top, 108)
            
            Text("What is your goal?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36, weight: .semibold))
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            
            goalViews()
                .padding(.top, 32)
            
            Spacer()
            customButton()
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct goalViews: View {
    @State var item1Selected: Bool = false
    @State var item2Selected: Bool = false
    @State var item3Selected: Bool = false
    @State var item4Selected: Bool = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color (red: 212/255, green: 225/255, blue: 248/255))
//                .frame(width: 358, height: 330)
            VStack {
                choiceGoalCustom(title: "Goal Number One", selected: self.$item1Selected)
                choiceGoalCustom(title: "Goal Number Two", selected: self.$item2Selected)
                choiceGoalCustom(title: "Goal Number Three", selected: self.$item3Selected)
                choiceGoalCustom(title: "Goal Number Four", selected: self.$item4Selected)
            }
            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
        .frame(height: 330)
    }
}

struct choiceGoalCustom: View {
    var title: String = ""
    @Binding var selected: Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(.white)
            HStack {
                Text(title)
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Image(self.selected ? "Picker" : "Ellipse 1")
            }
            .padding([.trailing, .leading], 24)
        }
        .onTapGesture {
            self.selected.toggle()
        }
    }
}

struct customButton: View {
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
