//
//  AddMovieVC.swift
//  CinemaFavz
//
//  Created by Edward White on 5/29/16.
//  Copyright © 2016 EdwardWhite. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var movieTitle: UITextField!
    @IBOutlet weak var movieURL: UITextField!
    @IBOutlet weak var moviePlot: UITextField!
    @IBOutlet weak var movieDesc: UITextView!
    
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
    }
    @IBAction func addPoster(sender: AnyObject) {
        // Presents the image picker, to add a image object to the database
        presentViewController(imagePicker, animated: true, completion: nil)
    }

   
    @IBAction func addMovie(sender: AnyObject) {
        
        // Add stuff to the database, when pressed and dissmiss the view controller
    }
  

}
