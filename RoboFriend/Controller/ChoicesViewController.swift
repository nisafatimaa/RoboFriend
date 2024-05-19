//
//  ChoicesViewController.swift
//  RoboFriend
//
//  Created by Macbook Pro on 02/03/2024.
//

import UIKit

class ChoicesViewController: UIViewController {

    @IBOutlet var label : UILabel!
    @IBOutlet var imageChoices: UIImageView!
    @IBOutlet var askButton: UIButton!
    
    var labelString : String = ""
    var imagesArray : [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askButton.layer.borderColor = UIColor.black.cgColor
        askButton.layer.borderWidth = 2
        askButton.layer.cornerRadius = 15
        askButton.clipsToBounds = true
        
        imageChoices.image = imagesArray[0]
        label.text = labelString

    }
    
    @IBAction func askButtonClicked(_ sender: UIButton) {
        imageChoices.image = imagesArray.randomElement()
    }
}
