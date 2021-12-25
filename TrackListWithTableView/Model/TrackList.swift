//
//  TrackModel.swift
//  TrackListWithTableView
//
//  Created by Дмитрий Дмитрий on 22.12.2021.
//

struct TrackList {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
    
    static func getTrackList() -> [TrackList] {
        [
            TrackList(artist: "Alberto Ruiz", song: "7 Elements (Original Mix)"),
            TrackList(artist: "Dave Wincent", song: "Red Eye (Original Mix)"),
            TrackList(artist: "E-Spectro", song: "End Station (Original Mix)"),
            TrackList(artist: "Edna Ann", song: "Phasma (Konstantin Yoodza Remix)"),
            TrackList(artist: "Ilija Djokovic", song: "Delusion (Original Mix)"),
            TrackList(artist: "John Baptiste", song: "Mycelium (Original Mix)"),
            TrackList(artist: "Lane 8", song: "Fingerprint (Original Mix)"),
            TrackList(artist: "Mac Vaughn", song: "Pink Is My Favorite Color (Alex Stein Remix)"),
            TrackList(artist: "Metodi Hristov, Gallya", song: "Badmash (Original Mix)"),
            TrackList(artist: "Veerus, Maxie Devine", song: "Nightmare (Original Mix)")
        ]
    }
}
