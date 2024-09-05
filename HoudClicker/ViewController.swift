//
//  ViewController.swift
//  HoudClicker
//
//  Created by Chaymae Mechouahi on 05/09/2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var conteur: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

    @IBAction func onClickButton(_ sender: UIButton) {
        BackgroundMusicPlayer.shared.playMusic(filename: "BackgroundMusic")
        let alert = UIAlertController(title: "Attention", message: "Frappe plus!", preferredStyle: .alert)
        
        self.present(alert, animated: true) {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { _ in
                alert.dismiss(animated: true, completion: nil)
            }
        }
    }
}
