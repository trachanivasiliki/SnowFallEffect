//
//  FallingEmitterCell.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import UIKit

/**
 Set SnowFallEffectItem - parts of snow fall animation
 - image: image of snow fall item
 - speed: speed of snow fall item - Default value 10.0
 - scale: scale of snow fall item  - Default value 1
 - velocity: velociyy of snow fall item  - Default value 30.0
 */
public class SnowFallEffectItem {
    var image: UIImage
    var speed: CGFloat
    var scale: CGFloat
    var velocity: CGFloat
    
    public init(
        image: UIImage = UIImage(),speed: CGFloat = 10.0, scale: CGFloat = 1.0, velocity: CGFloat = 30) {
        self.image = image
        self.speed = speed
        self.scale = scale
        self.velocity = velocity
    }
}
