//
//  TopViewCell.swift
//  TableViewAsScrollView
//
//  Created by ahmed hussien on 03/07/2024.
//

import UIKit

class TopViewCell: UITableViewCell {

    @IBOutlet weak var HorizontalCollectionView: UICollectionView!
    var timer : Timer?
    var currentSlideIndex = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        HorizontalCollectionView.dataSource = self
        HorizontalCollectionView.delegate = self
        HorizontalCollectionView.register(UINib(nibName: "CollectionViewItemCell", bundle: .main), forCellWithReuseIdentifier: "CollectionViewItemCell")
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension TopViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewItemCell", for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.bounds.size
    }
    
}
