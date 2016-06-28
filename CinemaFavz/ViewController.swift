//
//  ViewController.swift
//  CinemaFavz
//
//  Created by Edward White on 4/6/16.
//  Copyright © 2016 EdwardWhite. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    var movies = [Movie]()
    // var fetchedResultsController: NSFetchedResultsController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //graident background stuff
     //   let background = CAGradientLayer().turquoiseColor()
       // background.frame = self.view.bounds
        // self.view.layer.insertSublayer(background, atIndex: 0)
        //tableview stuff
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidAppear(animated: Bool) {
        fetchAndSetResults()
        tableView.reloadData()
    }
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Movie")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            self.movies = results as! [Movie]
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCellWithIdentifier("addedMovies") as? MovieCell {
            let movie = movies[indexPath.row]
            cell.configureCell(movie)
            
            return cell
        } else {
            return MovieCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    // create the segue to show the movie cell. This is crap currently!
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "MovieVC" {
        if let selectedCell = sender as? MovieCell {
            let indexPath = tableView.indexPathForCell(selectedCell)!
            let selectedMovie = objectAtIndexPath(indexPath) as! Movie
     }
     
     }

 
    }
 */
        }


