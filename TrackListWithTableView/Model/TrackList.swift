//
//  TrackModel.swift
//  TrackListWithTableView
//
//  Created by Дмитрий Дмитрий on 22.12.2021.
//

struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
    
    static func getTrackList() -> [Track] {
        [
            Track(artist: "Alberto Ruiz", song: "7 Elements (Original Mix)"),
            Track(artist: "Dave Wincent", song: "Red Eye (Original Mix)"),
            Track(artist: "E-Spectro", song: "End Station (Original Mix)"),
            Track(artist: "Edna Ann", song: "Phasma (Konstantin Yoodza Remix)"),
            Track(artist: "Ilija Djokovic", song: "Delusion (Original Mix)"),
            Track(artist: "John Baptiste", song: "Mycelium (Original Mix)"),
            Track(artist: "Lane 8", song: "Fingerprint (Original Mix)"),
            Track(artist: "Mac Vaughn", song: "Pink Is My Favorite Color (Alex Stein Remix)"),
            Track(artist: "Metodi Hristov, Gallya", song: "Badmash (Original Mix)"),
            Track(artist: "Veerus, Maxie Devine", song: "Nightmare (Original Mix)")
        ]
    }
}






/*
Alberto Ruiz 7 Elements (Original Mix)
Dave Wincent Red Eye (Original Mix)
E-Spectro End Station (Original Mix)
Edna Ann Phasma (Konstantin Yoodza Remix)
Ilija Djokovic Delusion (Original Mix)
John Baptiste Mycelium (Original Mix)
Lane 8 Fingerprint (Original Mix)
Mac Vaughn Pink Is My Favorite Color (Alex Stein Remix)
Metodi Hristov, Gallya Badmash (Original Mix)
Veerus, Maxie Devine Nightmare (Original Mix)
*/

