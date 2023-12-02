//
//  Models.swift
//  GPT Art Generator
//
//  Created by JAESOON on 2023/12/02.
//

import Foundation

enum Constants {
    static let imageSize = "256x256"
    static let n = 1
}

struct GenerationInput: Codable {
    var prompt: String
    var n = Constants.n
    var size = Constants.imageSize
    
    var encodedData: Data? {
        try? JSONEncoder().encode(self)
        
    }
}
