//
//  ScrollViewTesting.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/24/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct ScrollViewTesting: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack(spacing: 0){
                Image("The Little Mermaid").resizable().scaledToFit()
                Image("The Lion King").resizable().scaledToFit()
                Image("Moana").resizable().scaledToFit()
            }
        }.edgesIgnoringSafeArea(.all)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct ScrollViewTesting_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTesting()
    }
}
