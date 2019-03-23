//
//  ViewSelectMovieController.swift
//  Movies
//
//  Created by Camilo Cabana on 3/11/19.
//  Copyright © 2019 Camilo Cabana. All rights reserved.
//

import UIKit

var favoriteMovie = [String]()

class ViewSelectMovieController: UIViewController {
    
    @IBOutlet weak var moviePhoto: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var favoritesButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieLabel.text = movies[indexMovie]
        moviePhoto.image = UIImage(named: "\(movies[indexMovie])")
        
        if hasFovorites[indexMovie] == false
        {
            favoritesButton.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
            favoritesButton.setTitle("Add To Favorite", for: .normal)
        }
        else
        {
            favoritesButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            favoritesButton.setTitle("Remove From Favorite", for: .normal)
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addFavorite(_ sender: Any) {
        if hasFovorites[indexMovie] == true
        {
            favoritesButton.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
            favoritesButton.setTitle("Add To Favorite", for: .normal)
            hasFovorites[indexMovie] = false
            
            let index = favoriteMovie.firstIndex(of: movies[indexMovie].description)
            favoriteMovie.remove(at: index!)
        }
        else
        {
            favoritesButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            favoritesButton.setTitle("Remove From Favorite", for: .normal)
            favoriteMovie.append(movies[indexMovie])
            hasFovorites[indexMovie] = true
        }
    }

}
