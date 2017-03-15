//
//  PostsViewController.swift
//  snapChatProject
//
//  Created by Erik Yang on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

class PostsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postsTableView.delegate = self
        postsTableView.dataSource = self
        postsTableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        postsTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return threadNames[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threads[threadNames[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postProto",
                                                 for: indexPath) as! postCell
        let currPost = threads[threadNames[indexPath.section]]?[indexPath.row]
        
        if(currPost?.seen)!{
            cell.seenImage.image = UIImage(named: "read")
        }
        else{
            cell.seenImage.image = UIImage(named: "unread")
        }
        
        cell.posterLabel.text = currPost?.poster
        
        let seconds = NSDate().timeIntervalSince(currPost?.date as! Date)
        let minutes = round(seconds/60)
        cell.timeLabel.text = String(minutes) + " minutes ago"
        
        return cell
    }
    
    var tappedImage:UIImage = UIImage()
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currPost = threads[threadNames[indexPath.section]]?[indexPath.row]
        if (currPost?.seen == false){
            currPost?.seen = true
            tappedImage = (currPost?.image)!
            performSegue(withIdentifier: "segueToImage", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? ImageViewController {
            destinationVC.chosenImage = tappedImage
        }
    }
}

