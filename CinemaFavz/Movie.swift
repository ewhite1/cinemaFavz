//
//  Movie.swift
//  CinemaFavz
//
//  Created by Edward White on 5/29/16.
//  Copyright © 2016 EdwardWhite. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class Movie: NSManagedObject {

    func setMovieImage(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.moviePoster = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.moviePoster!)!
        return img
    }
}
