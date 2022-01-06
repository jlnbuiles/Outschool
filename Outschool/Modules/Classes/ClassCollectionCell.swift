//
//  ClassesCollectionCell.swift
//  Outschool
//
//  Created by Julian Builes on 1/3/22.
//

import UIKit
import Kingfisher

class ClassCollectionCell: UICollectionViewCell {
 
    // MARK: - Properties
    @IBOutlet var thumbnailIV: UIImageView!
    @IBOutlet var titleLbl: UILabel!
    @IBOutlet var ratingLbl: UILabel!
     
    // MARK: - Convenience methods
    func configureWith(listing: PopularListingsQuery.Data.Featured.PopularListing) -> ClassCollectionCell {
        titleLbl.text = listing.activity.title
        displayThumbnailFor(imgURLString: listing.activity.details.photo)
        ratingLbl.text = starsRatingStringFor(rating: listing.activity.averageStarRating)
        return self
    }
    
    // MARK: - UI Configuration
    internal func starsRatingStringFor(rating: Double?) -> String {
        return rating == 5 ? "⭐️⭐️⭐️⭐️⭐️" : ""
    }
    
    internal func displayThumbnailFor(imgURLString: String?) {
        if let URLString = imgURLString,
           let imageURL =  URL(string: URLString) {
            thumbnailIV.kf.setImage(with: imageURL,
                                    placeholder: Constants.placeholderImage(),
                                    options: nil,
                                    completionHandler: nil)
        }
    }
}
