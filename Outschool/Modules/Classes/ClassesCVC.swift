//
//  CollectionViewController.swift
//  Outschool
//
//  Created by Julian Builes on 12/30/21.
//

import UIKit

private let reuseIdentifier = "ClassCell"

class ClassesCVC: UICollectionViewController {
    
    // MARK: - Properties
    internal var popularListings = [PopularListingsQuery.Data.Featured.PopularListing]()
    
    // MARK: - View Controller Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Featured Listings"
        fetchListings()
    }
    
    // MARK: - GraphQL Requests
    internal func resultsFetched() {
        self.collectionView.reloadData()
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        return popularListings.count
    }

    override func collectionView(_ collectionView: UICollectionView,
                                 cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        if let classCell = cell as? ClassCollectionCell {
            return classCell.configureWith(listing: popularListings[indexPath.row])
        }
            
        print("Unable to instantiate a Class Collection cell, so defaulted to returning a blank, plain cell")
        return cell
    }
}
