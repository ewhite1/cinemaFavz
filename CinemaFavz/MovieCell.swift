//
//  MovieCell.swift
//  CinemaFavz
//
//  Created by Edward White on 5/29/16.
//  Copyright © 2016 EdwardWhite. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieTitle : UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieDesc: UILabel!
    @IBOutlet weak var movieURL: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    // reconfigure this! This is what causing the problem. The data is sent as optional(?), and its not being
    // Shown because the data cannot be accessed this way.
     func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        moviePoster.image = movie.getMovieImg()
        movieDesc.text = movie.movieDesc
        movieURL.text = movie.link
    }



}
