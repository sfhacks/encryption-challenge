//
//  ViewController.swift
//  RedisDemo
//
//  Created by Arnav Gudibande on 9/14/16.
//  Copyright © 2016 Arnav Gudibande. All rights reserved.
//

import UIKit
import Alamofire

extension String {
    
    subscript (i: Int) -> Character {
        return self[self.index(startIndex, offsetBy: i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    subscript (r: Range<Int>) -> String {
        let start = self.index(startIndex, offsetBy: r.lowerBound)
        let end = self.index(startIndex, offsetBy: (r.upperBound-r.lowerBound))
        return self[Range(start ..< end)]
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let password = "sfhacks"
        // **************************************************************************//
        
        
        var decryptedWord = "" // This is where you will store your answer to
        
        let name = "YOUR NAME HERE" // Your first name here!
        
        // Solve the problem
        
        let cipher = "qwertyuiopasdfghiklzxcvbnm"
        var encrypted = "ztlzofu"
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        decryptedWord = "Final Answer!" // your final answer!
        
        // **************************************************************************//
        
        let parameters: Parameters = [
            "key": name,
            "value": decryptedWord,
            "password": password
        ]
        
        Alamofire.request("http://results.sfhacks.club", method: .post, parameters: parameters)
    }
    
    
}

