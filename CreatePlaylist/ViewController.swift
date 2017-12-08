//
//  ViewController.swift
//  CreatePlaylist
//
//  Created by Kabir Cahill on 2017-12-07.
//  Copyright © 2017 Kabir Cahill. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myPlaylistQuery = MPMediaQuery.playlists()
        var playlists = myPlaylistQuery.collections
        
        let items = [MPMediaItem]()
        
        var newPlaylist: MPMediaPlaylist
        newPlaylist = MPMediaPlaylist.init(items: items)
        
        if(playlists != nil) {
            //playlists?.append(newPlaylist)
            
            for playlist in playlists! {
                print(playlist.value(forProperty: MPMediaPlaylistPropertyName)!)
                
                let songs = playlist.items
                for song in songs {
                    let songTitle = song.value(forProperty: MPMediaItemPropertyTitle)
                    print("\t\t", songTitle!)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

