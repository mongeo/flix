//
//  GridDetailsViewController.swift
//  flix
//
//  Created by geoff on 2/11/19.
//  Copyright © 2019 geoffmontague. All rights reserved.
//

import UIKit

class GridDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(movie["title"])
        // Do any additional setup after loading the view.
        
        print(movie["title"])
        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as! String
        titleLabel.sizeToFit()
        
        detailsLabel.text = movie["overview"] as! String
        detailsLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterImageView.af_setImage(withURL: posterUrl!)
        
        let backDropPath = movie["poster_path"] as! String
        let backDropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backDropPath)
        
        backgroundImageView.af_setImage(withURL: backDropUrl!)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
