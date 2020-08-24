//
//  MosquesModels.swift
//  SwiftUIDay3
//
//  Created by shaikha aljenaidel on 8/24/20.
//  Copyright © 2020 shaikha aljenaidel. All rights reserved.
//

import Foundation
import SwiftUI

struct Mosque: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var shuyoukh: [String]
    var area: String
}

let sabeekaAldukhan = Mosque(name: "الدخان", shuyoukh: [
    "فهد الكندري",
                  "عثمان الخميس",
                  "نبيل العوضي"
], area: "الشهداء")
let sulaimanAlsatlan = Mosque(name: "الستلان", shuyoukh: [
    "فهد الكندري",
                  "عثمان الخميس",
                  "نبيل العوضي"
], area: "الشهداء")
let mansourAlkhulaifi = Mosque(name: "الخليفي", shuyoukh: [
    "فهد الكندري",
                  "عثمان الخميس",
                  "نبيل العوضي"
], area: "الشهداء")

let Mosques = [sabeekaAldukhan, sulaimanAlsatlan, mansourAlkhulaifi]

var AyahSounds = [
    "فهد الكندري",
                  "عثمان الخميس",
                  "نبيل العوضي"
]
