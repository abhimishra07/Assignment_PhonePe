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
        print(result.title)
        print(result.overview)
    }
    
}
