//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player: AVAudioPlayer?
    let url1 = Bundle.main.url(forResource: "note1", withExtension: "wav")!
    let url2 = Bundle.main.url(forResource: "note2", withExtension: "wav")!
    let url3 = Bundle.main.url(forResource: "note3", withExtension: "wav")!
    let url4 = Bundle.main.url(forResource: "note4", withExtension: "wav")!
    let url5 = Bundle.main.url(forResource: "note5", withExtension: "wav")!
    let url6 = Bundle.main.url(forResource: "note6", withExtension: "wav")!
    let url7 = Bundle.main.url(forResource: "note7", withExtension: "wav")!

    @IBAction func notePressed(_ sender: UIButton) {
        let arr = [url1,url2,url3,url4,url5,url6,url7]
        do{
            player = try AVAudioPlayer(contentsOf: arr[sender.tag-1])
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

