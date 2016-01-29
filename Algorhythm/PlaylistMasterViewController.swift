//
//  ViewController.swift
//  Algorhythm
//
//  Created by Edward White on 12/15/15.
//  Copyright © 2015 PositiveCapitalism. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var playlistImageView0: UIImageView! //I know this is bad! sorry
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aButton.setTitle("Press me", forState: .Normal)
        
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetail" {
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            
            playlistDetailController.playlist = Playlist(index: 0)
            
        }
    }
    
    
}

