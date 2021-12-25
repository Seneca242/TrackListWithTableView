//
//  TrackDetailsViewController.swift
//  TrackListWithTableView
//
//  Created by Дмитрий Дмитрий on 22.12.2021.
//

import UIKit

class TrackDetailsViewController: UIViewController {

    var trackList: TrackList!
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: trackList.title)
        imageLabel.text = trackList.title
       
    }
    

}
