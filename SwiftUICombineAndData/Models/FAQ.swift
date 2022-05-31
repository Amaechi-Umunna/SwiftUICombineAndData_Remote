//
//  FAQ.swift
//  SwiftUICombineAndData
//
//  Created by Amaechi Chukwu on 31/05/2022.
//

import Foundation

struct FAQ: Identifiable, Decodable {
    var id: Int
    var question: String
    var answer: String
}
