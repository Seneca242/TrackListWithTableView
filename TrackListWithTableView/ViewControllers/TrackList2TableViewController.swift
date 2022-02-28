//
//  TrackList2TableViewController.swift
//  TrackListWithTableView
//
//  Created by Дмитрий Дмитрий on 26.02.2022.
//

import UIKit

class TrackList2TableViewController: UITableViewController {

    private var trackList = Track.getTrackList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
        tableView.rowHeight = 80
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        trackList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackName", for: indexPath)
        let trackList = trackList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = trackList.song
        content.secondaryText = trackList.artist
        content.image = UIImage(named: trackList.title)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
   
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTrack = trackList.remove(at: sourceIndexPath.row)
        trackList.insert(currentTrack, at: destinationIndexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let trackDetailsVC = segue.destination as? TrackDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let trackList = trackList[indexPath.row]
        trackDetailsVC.trackList = trackList
    }
    

}
