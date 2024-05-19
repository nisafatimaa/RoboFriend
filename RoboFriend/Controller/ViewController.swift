//
//  ViewController.swift
//  RoboFriend
//
//  Created by Macbook Pro on 02/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dressButton: UIButton!
    @IBOutlet var foodButton: UIButton!
    @IBOutlet var hobbyButton: UIButton!
    
    var choices = RoboFriendBrain()
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        switch sender {
        case dressButton :
            //forced unwrapping,$0 refers to first index,map takes ann input and return transformed value of it.
            navigateToResultsVC(choices.dresses.map{ $0! }, "This dress will look amazing😍.")
        case foodButton :
            navigateToResultsVC(choices.food.map{ $0! }, "Looks Yummy😋.")
        case hobbyButton :
            navigateToResultsVC(choices.hobbies.map{ $0! }, "Yay! It will be fun🥳.")
        default :
            print("error")
        }
    }
    
    //navigate to choicesViewController and takes images array as input to show
    func navigateToResultsVC(_ imageArray : [UIImage], _ label : String){
        let vc = storyboard?.instantiateViewController(identifier: "choice") as! ChoicesViewController
        vc.imagesArray = imageArray
        vc.labelString = label
        present(vc, animated: true, completion: nil)
    }
}
