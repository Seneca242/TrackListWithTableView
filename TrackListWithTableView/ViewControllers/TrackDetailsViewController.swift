//
//  TrackDetailsViewController.swift
//  TrackListWithTableView
//
//  Created by Дмитрий Дмитрий on 22.12.2021.
//

import UIKit

class TrackDetailsViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var imageLabel: UILabel!
    
    var trackList: Track!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: trackList.title)
        imageLabel.text = trackList.title
       
    }
}
