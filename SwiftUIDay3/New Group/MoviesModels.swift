//
//  MoviesModels.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/23/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Identifiable {
    var id = UUID()
    
    var title: String
    var characters: [String]
}

let theLittleMermaid = Movie(title: "The Little Mermaid", characters: ["Arial", "Ursula", "Sebastian"])
let theLionKing = Movie(title: "The Lion King", characters: ["Simba", "Mufasa", "Nala"])
let moana = Movie(title: "Moana", characters: ["Moanaa", "Maui", "Tamatoa"]
)

let movies = [theLittleMermaid, theLionKing, moana]



