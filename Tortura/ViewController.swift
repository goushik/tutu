//
//  ViewController.swift
//  Tortura
//
//  Created by Goushik Kumar on 31/01/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let soundFileURL = ""
            let recordSettings =
               [AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue,
                        AVEncoderBitRateKey: 16,
                        AVNumberOfChannelsKey: 2,
                        AVSampleRateKey: 44100.0] as [String : Any]

            let audioSession = AVAudioSession.sharedInstance()
            do {
                    try audioSession.setCategory(
                        AVAudioSession.Category.playAndRecord)
            } catch let error as NSError {
                print("audioSession error: \(error.localizedDescription)")
            }
//            do {
//                try audioRecorder = AVAudioRecorder(url: soundFileURL,
//                    settings: recordSettings as [String : AnyObject])
//                audioRecorder?.prepareToRecord()
//                audioRecorder?.record()
//            } catch let error as NSError {
//                print("audioSession error: \(error.localizedDescription)")
//            }
    }


}

