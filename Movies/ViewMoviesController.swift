//
//  ViewController.swift
//  Movies
//
//  Created by Camilo Cabana on 3/6/19.
//  Copyright © 2019 Camilo Cabana. All rights reserved.
//

import UIKit

var indexMovie = 0

var movies = ["24","Grey's Anatomy","Breaking Bad","CSI","Dead Wood","Dexter","Doctor Who","Family Guy","Friends","Fringe","Futurama","Game of Thrones","Heros","House","Lost","Mad Man","Modern Family","Prison Break","South Park","The Big Bang Theory","The Simpsons","The Sopranos","The Wolking Dead","The X Files"]

var hasFovorites = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]

class ViewMoviesController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Movies", for: indexPath) as! CollectionViewCell
        cell.movieLabel.text = movies[indexPath.row]
        cell.moviePicture.image = UIImage(named: "\(movies[indexPath.row])")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        indexMovie = indexPath.row
    }
    
    
}

