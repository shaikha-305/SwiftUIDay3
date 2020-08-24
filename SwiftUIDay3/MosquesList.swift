//
//  MosquesList.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/24/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct MosquesList: View {
    var mosque: Mosque
    var body: some View {
        NavigationView{
        List(Mosques){ mosque in
            NavigationLink(destination: MosqueDetails(mosque: mosque)) {
                MosqueRow(mosque: mosque)
            }
            }.navigationBarTitle("المساجد")
            .accentColor(.white)
        }
    }
}

struct MosquesList_Previews: PreviewProvider {
    static var previews: some View {
        MosquesList(mosque: Mosques[0])
            .environment(\.colorScheme, .dark)
    }
}

struct MosqueRow: View {
    var mosque: Mosque
    var body: some View {
        HStack{
            Image(mosque.name)
                .resizable()
                .scaledToFill()
                .frame(width: 120,height: 120)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(mosque.name)
                    .font(.title)
                Text(mosque.area)
                    .font(.subheadline)
            }
        }
        .padding(.vertical)
    }
}
