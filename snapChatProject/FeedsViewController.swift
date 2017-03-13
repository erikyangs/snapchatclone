//
//  FeedsViewController.swift
//  snapChatProject
//
//  Created by Erik Yang on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class FeedsViewController: UIViewController{ //UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var testImage: UIImageView!
    var selectedImage:UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        testImage.image = selectedImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
