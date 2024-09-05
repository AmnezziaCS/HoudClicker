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

    var counter = 0 {
        didSet {
            conteur.text = "\(counter)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        BackgroundMusicPlayer.shared.playMusic(filename: "BackgroundMusic")
    }

    @IBAction func onClickButton(_ sender: UIButton) {
        counter += 1
        let alert = UIAlertController(title: "Attention", message: "Frappe plus!", preferredStyle: .alert)
        
        self.present(alert, animated: true) {
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { _ in
                alert.dismiss(animated: true, completion: nil)
            }
        }
    }
}
