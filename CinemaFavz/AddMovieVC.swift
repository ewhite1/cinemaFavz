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
    @IBOutlet weak var moviePoster: UIImageView!
    
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
        
        if let title = movieTitle.text where title != "" {
         
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            movie.title = title
            movie.link = movieURL.text
            movie.movieDesc = movieDesc.text
            movie.plot = moviePlot.text
            movie.setMovieImage(moviePoster.image!)
            
            // attempt to save the movie into the coreData Database
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Error saving movie!")
                let alert = UIAlertController(title: "Oh No!", message: "Could not Save movie! Please try again.", preferredStyle: .Alert)
                alert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
                self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
  
 }
}
