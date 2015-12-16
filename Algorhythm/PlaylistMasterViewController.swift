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
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aButton.setTitle("Press me", forState: .Normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: UIButton) {
        view.backgroundColor = UIColor.orangeColor()
    }
}

