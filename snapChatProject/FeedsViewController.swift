//
//  FeedsViewController.swift
//  snapChatProject
//
//  Created by Erik Yang on 3/13/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class FeedsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var testImage: UIImageView!
    //selected image is from past view
    var selectedImage:UIImage? = nil
    @IBOutlet weak var feedsTableView: UITableView!
    @IBOutlet weak var selectedFeedLabel: UILabel!
    var selectedFeed:String? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedsTableView.delegate = self
        feedsTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        testImage.image = selectedImage
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "feedPrototype",
            for: indexPath) as! feedCell
        
        cell.feedLabel.text = threadNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFeed = threadNames[indexPath.row]
        selectedFeedLabel.text = "Posting to feed: " + selectedFeed!
    }
    
    @IBAction func postButtonPressed(_ sender: UIButton) {
        if (selectedFeed==nil){
            return
        }
        else{
            print("Posting image " + String(describing:selectedImage!) + " to feed: " + selectedFeed!)
            //store in model
            threads[selectedFeed!]?.append(ImagePost(postImage: selectedImage!, postDate: NSDate(), postSeen: false, postPoster: "Erik Yang"))
            //print("Threads currently: " + String(describing:threads))
            //alert
            postAlert(msg: "Image successfully posted to feed: " + selectedFeed!)
        }
    }
    
    func postAlert(msg: String){
        let alertController = UIAlertController(title: msg, message:
            nil, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Post Another Image", style: UIAlertActionStyle.default,handler: returnToImagePicker))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func returnToImagePicker(alert: UIAlertAction!){
        performSegue(withIdentifier: "segueToImages", sender: nil)
    }
}
