//
//  SwAPIManager.swift
//  RandomJoke
//
//  Created by Piyada Suwansa-ard on 9/8/2562 BE.
//  Copyright © 2562 piyadaswsa. All rights reserved.
//

import Foundation
import Alamofire

class TestAPIManager {
//    func getRandomJoke(completion: @escaping (Joke?) -> Void) {
//        guard let url = URL(string: "https://matchilling-chuck-norris-jokes-v1.p.rapidapi.com/jokes/random") else {
//            return
//        }
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("d7cd140d6emsh9d6e2be744bfd51p13f344jsn471a4d8ce9d5", forHTTPHeaderField: "x-rapidapi-key")
//        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
//            if let _ = error {
//                print("error")
//            } else if let data = data, let response = response as? HTTPURLResponse {
//                if response.statusCode == 200 {
//                    do {
//                        let joke = try JSONDecoder().decode(Joke.self, from: data)
//                        print(joke)
//                        completion(joke)
//                    } catch {
//                        print("parse JSON failed")
//                    }
//                }
//            }
//        }
//        task.resume()
//    }
    func getPercentage(fname:String, sname: String, completion: @escaping (LoveCalculate?) -> Void) {
        guard let url = URL(string: "https://love-calculator.p.rapidapi.com/getPercentage?fname=\(fname)&sname=\(sname)") else {
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("aa36473b01msh04ad58444980988p14dcc6jsne3ef71e9875e", forHTTPHeaderField: "x-rapidapi-key")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let _ = error {
                print("error")
            } else if let data = data, let response = response as? HTTPURLResponse {
                if response.statusCode == 200 {
                    do {
                        let per = try JSONDecoder().decode(LoveCalculate.self, from: data)
                        print(per)
                        completion(per)
                    } catch {
                        print("parse JSON failed")
                    }
                }
            }
        }
        task.resume()

    }
}
