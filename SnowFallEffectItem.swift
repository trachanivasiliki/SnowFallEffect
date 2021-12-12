//
//  FallingEmitterCell.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import UIKit

class SnowFallEffectItem {
    var image: UIImage
    var speed: CGFloat
    var scale: CGFloat
    var color: UIColor
    
    init(particleImage: UIImage = UIImage(),speed: CGFloat = 1.0, scale: CGFloat = 1.0, color: UIColor = .white) {
        self.image = particleImage
        self.speed = speed
        self.scale = scale
        self.color = color
    }
}
