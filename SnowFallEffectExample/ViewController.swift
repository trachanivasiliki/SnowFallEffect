//
//  ViewController.swift
//  SnowFallEffectExample
//
//  Created by Vasiliki Trachani on 8/12/21.
//

import UIKit
import SnowFallEffect

class ViewController: UIViewController {
    var snowLayer: SnowFallEffectLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setUpWithDifferentSnowFallItems()
        setUpWithDefaultValues()
        //setUpWithAngleAndDuration()
    }

    fileprivate func setUpWithDifferentSnowFallItems() {
        let snowFallItems = [SnowFallEffectItem(image: UIImage(named: "snowFlake")!, speed: 20, scale: 0.05, velocity: 20), SnowFallEffectItem(image: UIImage(named: "snowFlake")!, speed: 10, scale: 0.05)]
        
        snowLayer = SnowFallEffectLayer(snowFallItems: snowFallItems)
        snowLayer?.addSnowLayer(into: self.view)
    }
    
    fileprivate func setUpWithDefaultValues() {
        let snowFallItems = [SnowFallEffectItem(image: UIImage(named: "snowFlake")!)]
        
        snowLayer = SnowFallEffectLayer(snowFallItems: snowFallItems)
        snowLayer?.addSnowLayer(into: self.view)
    }
    
    fileprivate func setUpWithAngleAndDuration() {
        let snowFallItems = [SnowFallEffectItem(image: UIImage(named: "snowFlake")!, speed: 20, scale: 0.05, velocity: 20)]
        
        snowLayer = SnowFallEffectLayer(snowFallDuration:.custom(duration: 20), snowFallAngle: SnowFallEffetAngleDegrees(angle: .right, angleDegrees: 10), snowFallItems: snowFallItems)
        snowLayer?.addSnowLayer(into: self.view)
    }
    
    @IBAction func stopSnowFalEffectAction(_ sender: Any) {
        snowLayer?.removeFallingLayer(from: self.view)
    }
}
