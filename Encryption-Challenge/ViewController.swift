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
        
<<<<<<< HEAD
        let name = "sfhacks" // Your first name here!
=======
        let name = "Your Name!" // Your first name here!
>>>>>>> origin/master
        
        // Solve the problem
        
        let cipher = "qwertyuiopasdfghiklzxcvbnm"
        var encrypted = "ztlzofu"
        let alphabet = "abcdefghijklmnopqrstuvwxyz"

        for (_, element1) in encrypted.characters.enumerated() {
            for(index, element) in cipher.characters.enumerated() {
                if(element1==element) {
                    decryptedWord += alphabet[index]
                }
            }
        }
        
        print(decryptedWord)

        // decryptedWord should have your final answer here!
        
        // **************************************************************************//
        
        let parameters: Parameters = [
            "name": name,
            "answer": decryptedWord,
            "password": password
        ]
        
        Alamofire.request("http://results.sfhacks.club", method: .post, parameters: parameters)
    }
    
    
}

