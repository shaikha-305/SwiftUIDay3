//
//  CalculatorModifiers.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/25/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
import SwiftUI

struct NumbersModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 50, weight: .light, design: .default))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(42.5)
            
            
    }
}

struct OrangeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.system(size: 50, weight: .light, design: .default))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 0.9917001128, green: 0.621011436, blue: 0.03929300606, alpha: 1)))
            .cornerRadius(42.5)
    }
}

struct ZeroModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.system(size: 50, weight: .light, design: .default))
            .padding(.leading, -55)
        .frame(width: 170, height: 85)
        .background(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
            .cornerRadius(42.5)
    }
}

struct OtherSignsModifiers: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .font(.system(size: 50, weight: .light, design: .default))
            .frame(width: 85, height: 85)
            .background(Color(#colorLiteral(red: 0.5723067522, green: 0.5723067522, blue: 0.5723067522, alpha: 1)))
            .cornerRadius(42.5)
    }
}
