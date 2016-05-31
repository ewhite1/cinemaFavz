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
     func configureCell(movie: Movie) {
        movieTitle.text = movie.title
        moviePoster.image = movie.getMovieImg()
        movieDesc.text = movie.movieDesc
        movieURL.text = movie.link
    }



}
