//
//  Joke.swift
//  RandomJoke
//
//  Created by Piyada Suwansa-ard on 8/8/2562 BE.
//  Copyright © 2562 piyadaswsa. All rights reserved.
//

import Foundation

struct Joke: Codable { // Codable = Encodable + Decodable
    let id: String
    let value: String
    let iconURL: String
    let url: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case value
        case url
        case iconURL = "icon_url"
    }
}
