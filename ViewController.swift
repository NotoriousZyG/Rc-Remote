//
//  ViewController.swift
//  RoBoRemote
//
//  Created by Notorious MAC on 2/25/16.
//  Copyright © 2016 NotoriousMAC. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var soundPlayer1:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer2:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer3:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer4:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer5:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer6:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer7:AVAudioPlayer = AVAudioPlayer()
    var soundPlayer8:AVAudioPlayer = AVAudioPlayer()
    
    
    
    @IBOutlet weak var label: UITextView!
        
    @IBAction func powerBtn(sender: AnyObject) {
        label.text = " Power On"
        soundPlayer1.play()
    }
    
    @IBAction func CamUPBtn(sender: AnyObject) {
        label.text = label.text! + " Camera Turns Up"
        soundPlayer2.play()
    }
    
    
    @IBAction func CamDwnBtn(sender: AnyObject) {
        label.text = label.text! + " Camera down "
        soundPlayer3.play()
    }
    
    @IBAction func CamLeftBtn(sender: AnyObject) {
        label.text = label.text! + " Cam to Left"
        soundPlayer4.play()
    }
    
    @IBAction func CamRtBtn(sender: AnyObject) {
        label.text = label.text! + " cam to Right"
        soundPlayer5.play()
    }
    
    
    @IBAction func LightOnOffBtn(sender: AnyObject) {
        label.text = label.text! + " Light on/ Off "
        soundPlayer6.play()
    }
    
    @IBAction func RecBtn(sender: AnyObject) {
        label.text = label.text! + " Stars Recording "
        soundPlayer7.play()
    }
    
    @IBAction func RoboForwardBtn(sender: AnyObject) {
        label.text = label.text! + " RoboSpy moves Front"
        soundPlayer8.play()
    }
    
    @IBAction func RoboBackBtn(sender: AnyObject) {
        label.text = label.text! + " RoboSpy moves Back"
        soundPlayer1.play()
        soundPlayer2.play()
    }
    
    @IBAction func RoboLeftBtn(sender: AnyObject) {
        label.text = label.text! + " RoboSpy moves Left"
        soundPlayer1.play()
        soundPlayer3.play()
    }
    
    @IBAction func RoboRtBtn(sender: AnyObject) {
        label.text = label.text! + " RoboSpy moves Right"
        soundPlayer1.play()
        soundPlayer4.play()
    }
    
    @IBAction func SpeakListenBtn(sender: AnyObject) {
        label.text = label.text! + " Speak to victim "
        soundPlayer1.play()
        soundPlayer5.play()
    }
    
    @IBAction func PairBtn(sender: AnyObject) {
        label.text = label.text! + " Pairing with RoboSpy..."
        label.text = label.text! + ".."
        label.text = label.text! + "...."
        soundPlayer1.play()
        soundPlayer6.play()
        
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fileLocation1 = NSBundle.mainBundle().pathForResource("drum1", ofType: ".wav")
        let fileLocation2 = NSBundle.mainBundle().pathForResource("drum2", ofType: ".wav")
        let fileLocation3 = NSBundle.mainBundle().pathForResource("drum3", ofType: ".wav")
        let fileLocation4 = NSBundle.mainBundle().pathForResource("drum4", ofType: ".wav")
        let fileLocation5 = NSBundle.mainBundle().pathForResource("drum5", ofType: ".wav")
        let fileLocation6 = NSBundle.mainBundle().pathForResource("symbol1", ofType: ".wav")
        let fileLocation7 = NSBundle.mainBundle().pathForResource("symbol2", ofType: ".wav")
        let fileLocation8 = NSBundle.mainBundle().pathForResource("symbol3", ofType: ".wav")
        
        
        
        
        do {
            soundPlayer1 = try AVAudioPlayer(contentsOfURL:NSURL(fileURLWithPath: fileLocation1!))
            soundPlayer2 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation2!))
            soundPlayer3 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation3!))
            soundPlayer4 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation4!))
            soundPlayer5 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation5!))
            soundPlayer6 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation6!))
            soundPlayer7 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation7!))
            soundPlayer8 = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation8!))
            
            
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
        }
            
        catch {
            print (error)
            
        }

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

