# Snapchat Clone Project - Built for UC Berkeley's iOS Decal #
**More information at [iosdecal.com](http://www.iosdecal.com)**

# Part 1: The Feed #
## Description ##
Users should be able to take a picture, post to a feed, and then be able to view all the posts in a feed in the "Snap" style of clicking on an image, viewing it, and not being able to see it again.

![alt text](/README-images/previewSnap.001.jpeg)



## Project Structure ##
* ImageFeed.swift - The local model for storing images, essentially adding them to a given array for a feed. 
* ImagePickerController.swift - Our placeholder for the camera you're going to implement in part 2.
* TabBarController.swift - Class to customize the appearance of the tab bar
* PostNavigationController - Class to customize the appearance of the navigation bar

## Features ##

###  Image Posting ###
##### Screen Elements #####
* UITableView of feeds to post to
* UIbutton to post snap to feed
* Status indicator that displays what feed you have selected to post to
* Some indicator that you have posted the snap

##### Flow #####
* User selects feed to post to (Cannot select multiple!)
* User sees the feed he's posting to and clicks the post button
* User is alerted that snap has been posted and is taken back to the image picker screen

### Image Feed ###
##### Screen Elements #####
* UITableView split into sections based on feed
* Each section should have a UITableViewCell with the poster's name, how long ago it was posted, and a status indicator image (read/unread)
* Tapping on a UITableViewCell should open the image full screen, don't worry too much about aspect ratio
* The image should just appear, there should be no animations

##### Flow #####
* User selects a snap to view by tapping on it
* The entire screen should only have the image on it
* Tapping the image should dismiss the image
* Image should be marked as read with the "read" image
* Image should not be viewable again
