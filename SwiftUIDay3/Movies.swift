//
//  Movies.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/23/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct Movies: View {
    var movie: Movie
    var body: some View {
        NavigationView{
            List(movies){ movie in
                NavigationLink(destination: MovieDetails(movie: movie)) {
                    MovieRow(movie: movie)
                }
               
            }.navigationBarTitle("Movies")
                .foregroundColor(.white)
        }.accentColor(.white)
    }
    
}

struct Movies_Previews: PreviewProvider {
    static var previews: some View {
            Movies(movie: movies[0]).previewDisplayName("Movies List")
                .environment(\.colorScheme, .dark)
    }
}

struct MovieRow: View {
    var movie: Movie
    var body: some View {
        HStack(alignment: .center){
            Image(movie.title)
                .resizable()
                .scaledToFit()
            .frame(height: 150)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.title)
                Text(movie.characters.joined(separator: " , "))
            }
        }.padding(.vertical)
    }
}
