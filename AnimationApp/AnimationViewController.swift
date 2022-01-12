//
//  ViewController.swift
//  AnimationApp
//
//  Created by Елисей Мищенко on 12.01.2022.
//

import Spring

class AnimationViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var AnimationTextView: SpringTextView!
    @IBOutlet weak var AnimationButton: SpringButton!
    
    //MARK: - properties
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AnimationButton.layer.cornerRadius = 10
        AnimationTextView.layer.cornerRadius = 10
        
    }
    
    //MARK: - IBActions
    @IBAction func AnimationButton(_ sender: SpringButton) {
        AnimationButton.setTitle(animation.animation, for: .normal)
        AnimationTextView.text = """
Preset:  \(animation.animation)
Curve: \(animation.сurve)
Force: \(String (format: "%.2f", animation.numberOfForce))
Duration: \(String (format: "%.2f", animation.numberOfDuration))
Deley: \(String (format: "%.2f", animation.numberOfDeley))
"""
        AnimationTextView.animation = animation.animation
        AnimationTextView.curve = animation.сurve
        AnimationTextView.force = CGFloat(animation.numberOfForce)
        AnimationTextView.duration = CGFloat(animation.numberOfDuration)
        AnimationTextView.delay = CGFloat(animation.numberOfDeley)
        
        AnimationTextView.animate()
        animation = Animation.getAnimation()
        AnimationButton.setTitle(animation.animation, for: .normal)
    }
}

