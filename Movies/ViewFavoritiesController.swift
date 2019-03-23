//
//  ViewFavoritiesController.swift
//  Movies
//
//  Created by Camilo Cabana on 3/11/19.
//  Copyright © 2019 Camilo Cabana. All rights reserved.
//

import UIKit

class ViewFavoritiesController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteMovie.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Favorite", for: indexPath) as! CollectionViewCell
        cell.favoriteLabel.text = favoriteMovie[indexPath.row]
        cell.favoritePicture.image = UIImage(named: "\(favoriteMovie[indexPath.row])")
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        favoriteCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let indexFavorite = indexPath.row
        let nameFavorite = favoriteMovie[indexFavorite]
        
        for index in 0..<movies.count{
            if nameFavorite == movies[index]{
                indexMovie = index
                print(indexMovie)
                break
            }
        }
        
    }
}
