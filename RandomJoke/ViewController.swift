//
//  ViewController.swift
//  RandomJoke
//
//  Created by Piyada Suwansa-ard on 8/8/2562 BE.
//  Copyright © 2562 piyadaswsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var fnameTextField: UITextField!
    @IBOutlet weak var snameTextFeild: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fnameTextField.placeholder = "your name"
        snameTextFeild.placeholder = "your lover's name"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped() {
//        APIManager().getRandomJoke { [weak self] (joke) in
//            DispatchQueue.main.sync {
//                guard let joke = joke else {
//                    return
//                }
//                self?.jokeLabel.text = joke.value
//            }
//        }
//        TestAPIManager().getQuote { [weak self] (quote) in
//            DispatchQueue.main.sync {
//                guard let quote = quote else {
//                    return
//                }
//                self?.jokeLabel.text = "Success"
//            }
//        }
        guard let fName = fnameTextField.text, let sName = snameTextFeild.text else {
            print("please enter information")
            return
        }
//        !title.isEmpty
        
//        if let fName = fnameTextField.text, let sName = snameTextFeild.text, !fName.isEmpty, !sName.isEmpty {
//            print("please enter information")
//        }

        TestAPIManager().getPercentage(fname: fName, sname: sName) { [weak self] (per) in
            DispatchQueue.main.sync {
                guard let per = per else {
                    return
                }
                self?.percentLabel.text = "chances is \(per.percentage)%"
                self?.resultLabel.text = per.result
            }
        }

    }

}

