//
//  LoveCalculate.swift
//  RandomJoke
//
//  Created by Piyada Suwansa-ard on 9/8/2562 BE.
//  Copyright © 2562 piyadaswsa. All rights reserved.
//

import Foundation
struct LoveCalculate: Codable { // Codable = Encodable + Decodable
    let fname: String
    let sname: String
    let percentage: String
    let result: String
    
    private enum CodingKeys: String, CodingKey {
        case fname
        case sname
        case percentage
        case result
    }
}
