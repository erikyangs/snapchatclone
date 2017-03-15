//
//  imageFeed.swift
//  snapChatProject
//
//  Created by Akilesh Bapu on 2/27/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import Foundation
import UIKit

// This is the only line of code you should be modifying
var threads: [String: [ImagePost]] = ["Memes": [], "Dog Spots": [], "Random": []]
//

let threadNames = ["Memes", "Dog Spots", "Random"]
var allImages: [UIImage] = [#imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "berkAtNight"), #imageLiteral(resourceName: "dankMeme4"), #imageLiteral(resourceName: "Campanile"), #imageLiteral(resourceName: "dankMeme1"), #imageLiteral(resourceName: "dankMeme2"), #imageLiteral(resourceName: "amazingCutePuppy"), #imageLiteral(resourceName: "cutePuppy"), #imageLiteral(resourceName: "dirks"), #imageLiteral(resourceName: "dankMeme3")]

class ImagePost{
    let image:UIImage
    let date:NSDate
    let seen:Bool
    let poster:String
    init(postImage: UIImage, postDate: NSDate, postSeen: Bool, postPoster: String) {
        self.image = postImage
        self.date = postDate
        self.seen = postSeen
        self.poster = postPoster
    }
}
