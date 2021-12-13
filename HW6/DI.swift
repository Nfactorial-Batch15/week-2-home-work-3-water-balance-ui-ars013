//
//  DI.swift
//  HW6
//
//  Created by Арслан on 13.12.2021.
//

import SwiftUI

struct DI: View {
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
            Text("Daily intake?")
                .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                .font(.system(size: 36, weight: .semibold))
                .frame(maxWidth: .infinity)
                .padding(.top, 62)
            
            goalViews3()
                .padding(.top, 32)
            
            Spacer()
            customButton3()
                .padding(.bottom, 50)
        }
        .padding([.leading, .trailing], 16)
        .background(Color(red: 252/255, green: 253/255, blue: 255/255))
        .edgesIgnoringSafeArea(.all)
    }
}

struct DI_Previews: PreviewProvider {
    static var previews: some View {
        DI()
    }
}

class NumbersOnly: ObservableObject {
    @Published var value = ""{
        didSet {
            let filtered = value.filter { $0.isNumber}
            if value != filtered {
                value = filtered
            }
        }
    }
}

struct goalViews3: View {
    @ObservedObject var input = NumbersOnly()
//    @State var item1Selected: Bool = false
//    @State var item2Selected: Bool = false
//    @State var item3Selected: Bool = false
//    @State var item4Selected: Bool = false
    var body: some View {
        VStack{
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Color (red: 212/255, green: 225/255, blue: 248/255))
            HStack{
                ZStack{
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.white)
//                    .keyboardType(.decimalPad)
                    TextField("2400", text: $input.value)
//                        .frame(alignment: .center)
//                        .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
//                        .brightness(0.6)
                    .keyboardType(.decimalPad)
                }
                .padding(.leading, 19)
                Text("ML")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
                    .padding(.trailing, 43)
                    .padding(.leading, 12)
            }
//                .frame(width: 358, height: 330)
//            VStack {
//                choiceGoalCustom(title: "Goal Number One", selected: self.$item1Selected)
//                choiceGoalCustom(title: "Goal Number Two", selected: self.$item2Selected)
//                choiceGoalCustom(title: "Goal Number Three", selected: self.$item3Selected)
//                choiceGoalCustom(title: "Goal Number Four", selected: self.$item4Selected)
//            }
//            .padding(.horizontal, 19)
            .padding(.vertical, 24)
        }
//        .padding(.horizontal, 19)
//        .padding(.vertical, 24)
        .frame(height: 108)
//            Spacer()
//            customButton3()
//                .padding(.bottom, 50)
        }
    }
}

//struct choiceGoalCustom: View {
//    var title: String = ""
//    @Binding var selected: Bool
//    var body: some View {
//        ZStack {
//            RoundedRectangle(cornerRadius: 16)
//                .foregroundColor(.white)
//            HStack {
//                Text(title)
//                    .foregroundColor(Color(red: 47/255, green: 47/255, blue: 51/255))
//                    .font(.system(size: 16, weight: .semibold))
//                Spacer()
//                Image(self.selected ? "Picker" : "Ellipse 1")
//            }
//            .padding([.trailing, .leading], 24)
//        }
//        .onTapGesture {
//            self.selected.toggle()
//        }
//    }
//}

struct customButton3: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(Color(red: 24/255, green: 104/255, blue: 253/255))
                    Text("Save")
                    .foregroundColor(.white)
                    .font(.system(size: 22, weight: .semibold))
            }
            .frame(height: 60)
        }
    }
}
