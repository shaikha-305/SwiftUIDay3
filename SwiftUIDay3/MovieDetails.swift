//
//  MovieDetails.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/23/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    var body: some View {
        ZStack{
            MovieBG(movie: movie)
            VStack(alignment: .center){
                Image(movie.title)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                Text(movie.title)
                    .font(.system(size: 49))
                    .bold()
                Text(movie.characters.joined(separator: " , "))
                    .font(.title)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: -25){
                    ForEach(movie.characters, id: \.self){ (character: String) in
                        Image(character).resizable().scaledToFit().frame(width: 200)
                    }
                }
                }
                Spacer()
            }
            .offset(x: 0, y: -70)
                //            .padding(.vertical)
                .foregroundColor(.white)
//                .shadow(radius: 10)
            
        }
    }}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MovieDetails(movie: movies[0])
        }
        
    }
}

struct MovieBG: View {
    var movie: Movie
    var body: some View {
        Group{
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.4636608715))
                .background(
                    Image(movie.title)
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                        .blur(radius: 40)
            )
        }
        .edgesIgnoringSafeArea(.all)
    }
}
