//
//  ClassesCVC+Layout.swift
//  Outschool
//
//  Created by Julian Builes on 1/3/22.
//

import UIKit


private struct LayoutConstants {
    static let horizontalPadding = 20.0
    static let verticalPadding = 50.0
    static let itemsVisiblePerRow: CGFloat = 2
    static let sectionInsets = UIEdgeInsets(top: LayoutConstants.verticalPadding,
                                            left: LayoutConstants.horizontalPadding,
                                            bottom: LayoutConstants.verticalPadding,
                                            right: LayoutConstants.horizontalPadding)
}

// MARK: - Collection View Flow Layout Delegate
extension ClassesCVC: UICollectionViewDelegateFlowLayout {
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = LayoutConstants.sectionInsets.left * (LayoutConstants.itemsVisiblePerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / LayoutConstants.itemsVisiblePerRow
        return CGSize(width: widthPerItem, height: widthPerItem * 1.1)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        return LayoutConstants.sectionInsets
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        return LayoutConstants.sectionInsets.left
    }
    
}
