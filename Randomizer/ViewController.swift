//
//  ViewController.swift
//  Randomizer
//
//  Created by Игорь Чумиков on 31.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNumber: UILabel!
    

    
    @IBAction func getRandomNumber() {
        
    }
    
    func randomNumberGenerate() {
        randomNumber.text = String(Int.random(in: 1...100))
    }
    
}

