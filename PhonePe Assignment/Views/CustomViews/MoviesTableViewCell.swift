//
//  MoviesTableViewCell.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configCell(result: Result?) {
        guard let result = result else {
            return
        }
        if let title = result.title {
            titleLabel.text = title
        }
        if let description = result.overview {
            descriptionLabel.text = description
        }
        if let image = result.backdrop_path {
            moviePosterImageView.downloaded(from:"https://image.tmdb.org/t/p/w500" + image  )
        }
      
    }
    
}
