//
//  ViewController.swift
//  Randomizer
//
//  Created by Игорь Чумиков on 31.10.2023.
//
// https://www.youtube.com/watch?v=fGn0DwMTlV0

import UIKit

enum UserActivityType: String {
    case generateNumberRandom = "com.ForTests.Randomizer.generateNumberRandom"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var randomNumber: UILabel!
    

    
    @IBAction func getRandomNumber() {
        randomNumberGenerate()
        
        createUserActivityType()
    }
    
    func randomNumberGenerate() {
        randomNumber.text = String(Int.random(in: 1...100))
    }
    
    private func createUserActivityType() {
        
        let activity = NSUserActivity(activityType: UserActivityType.generateNumberRandom.rawValue)
        activity.title = "Generate Number Random"
        activity.isEligibleForSearch = true
        activity.isEligibleForPrediction = true
        
        self.userActivity = activity
        self.userActivity?.becomeCurrent()
    }
}

