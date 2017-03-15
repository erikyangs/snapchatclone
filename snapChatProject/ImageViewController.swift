//
//  ImageViewController.swift
//  snapChatProject
//
//  Created by Erik Yang on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class ImageViewController: UIViewController{
    var chosenImage: UIImage = UIImage()
    @IBOutlet weak var fullScreenImage: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenImage.setImage(chosenImage, for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        fullScreenImage.setImage(chosenImage, for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clickOnPicture(_ sender: UIButton) {
        performSegue(withIdentifier: "segueBackToPosts", sender: nil)
    }
}


