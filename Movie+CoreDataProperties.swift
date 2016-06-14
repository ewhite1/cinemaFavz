//
//  Movie+CoreDataProperties.swift
//  CinemaFavz
//
//  Created by Edward White on 5/29/16.
//  Copyright © 2016 EdwardWhite. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var link: String?
    @NSManaged var movieDesc: String?
    @NSManaged var moviePoster: NSData?
    @NSManaged var plot: String?
    @NSManaged var title: String?

}
