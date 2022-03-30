//
//  InformationViewController.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var ReleaseDateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var releaseDate = ""
    var popularity_val = 0.0
    var overview_val = ""
    var rating_val = 0.0
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ReleaseDateLabel.text = releaseDate
        popularityLabel.text = String(popularity_val)
        overviewLabel.text = overview_val
        ratingLabel.text = String(rating_val)
        imgView.downloaded(from: "https://image.tmdb.org/t/p/w500" + img)
    }
    
    
    func configCell(result: Result?) {
        guard let result = result else {
            return
        }
        if let releaseValue = result.release_date {
            releaseDate = releaseValue
        }
        if let popularityValue = result.popularity{
            popularity_val = popularityValue
        }
        if let overviewValue = result.overview{
            overview_val = overviewValue
        }
        if let ratingValue = result.vote_average{
            rating_val = ratingValue
        }
        if let image = result.backdrop_path {
            img = image
        }
    }
}
