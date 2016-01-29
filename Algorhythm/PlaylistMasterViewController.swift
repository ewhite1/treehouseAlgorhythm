//
//  ViewController.swift
//  Algorhythm
//
//  Created by Edward White on 12/15/15.
//  Copyright © 2015 PositiveCapitalism. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    var playlistsArray: [UIImageView] = []
    @IBOutlet weak var playlistImageView0: UIImageView! //I know this isn't named well
    @IBOutlet weak var playlistImageView1: UIImageView!
    @IBOutlet weak var playlistImageView2: UIImageView!
    @IBOutlet weak var playlistImageView3: UIImageView!
    @IBOutlet weak var playlistImageView4: UIImageView!
    @IBOutlet weak var playlistImageView5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistsArray += [playlistImageView0, playlistImageView1, playlistImageView2, playlistImageView3, playlistImageView4, playlistImageView5]
        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
        }
        
        
        let playlist = Playlist(index: 0)
        playlistImageView0.image = playlist.icon
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let playlistImageView = sender!.view as! UIImageView
        if let index = playlistsArray.indexOf(playlistImageView) {
            let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
            playlistDetailController.playlist = Playlist(index: index)
        }
    
}

    @IBAction func showPlaylistDetail(sender: AnyObject) {
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
    
}

