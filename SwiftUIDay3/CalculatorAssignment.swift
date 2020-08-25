//
//  CalculatorAssignment.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/25/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct CalculatorAssignment: View {
    @State var calculatorScreen: String
    var body: some View {
        ZStack(alignment: .bottom){
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text(calculatorScreen)
                    .foregroundColor(.white)
//                    .fontWeight(.bold)
                    .font(.system(size: 100, weight: .ultraLight, design: .default))
                    .padding(.leading, 190)
            
                HStack{
                    VStack(spacing: 10){
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "C")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "7")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "4")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "1")
                    }
                VStack(spacing: 10){
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "±")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "8")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "5")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "2")
                }
                VStack(spacing: 10){
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "%")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "9")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "6")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "3")
                }
                VStack(spacing: 10){
                    Text("÷").modifier(OrangeModifier())
                    Text("X").modifier(OrangeModifier())
                    Text("-").modifier(OrangeModifier())
                    Text("+").modifier(OrangeModifier())
                }
                }
                HStack{
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "0")
                    NumbersButtons(calculatorScreen: $calculatorScreen, buttonText: "1")
                    Text("-").modifier(OrangeModifier())
                }
            .padding()
            
            }
        }
    }
}

struct CalculatorAssignment_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorAssignment(calculatorScreen: "555")
    }
}

struct NumbersButtons: View {
    @Binding var calculatorScreen: String
    var buttonText: String
    var body: some View {
        VStack{
            if buttonText == "C" {
                Text(buttonText).modifier(OtherSignsModifiers())
                    .onTapGesture {
                        self.calculatorScreen = ""
                }
            }else if buttonText == "%" || buttonText == "±"{
                Text(buttonText).modifier(OtherSignsModifiers())
            }else if buttonText == "0"{
                Text(buttonText).modifier(ZeroModifier())
                    .onTapGesture {
                        self.calculatorScreen = self.calculatorScreen + self.buttonText
                }
            }else{
                Text(buttonText).modifier(NumbersModifiers())
                    .onTapGesture {
                        self.calculatorScreen = self.calculatorScreen + self.buttonText
                }
            }
        }
    }
}
