//
//  ViewController.swift
//  HoudClicker
//
//  Created by Chaymae Mechouahi on 05/09/2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBAction func onClickButton(_ sender: UIButton) {
        print("C'est bien cliqué")
        BackgroundMusicPlayer.shared.playMusic(filename: "BackgroundMusic")
    }
    
    @IBOutlet weak var conteur: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}


