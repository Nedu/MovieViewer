//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Chinedum Robert-Maduekwe on 1/31/16.
//  Copyright © 2016 nedu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var movie:NSDictionary!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let title = movie["title"] as? String
        titleLabel.text = title
        
        let overview = movie["overview"]
        overviewLabel.text = overview as? String
        
        let baseURL = "http://image.tmdb.org/t/p/w500/"
        
        if let posterPath = movie["poster_path"] as? String {
            let posterURL = NSURL(string: baseURL + posterPath)
            posterImageView.setImageWithURL(posterURL!)
        }
        
        print(movie)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
