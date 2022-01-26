//
//  SnowFallAngleDegrees.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 25/1/22.
//

import UIKit

/**
 Set the degrees of slope in x-axis
 - angleDegrees
 - angle: angle of snow fall animation -right, left, none
 */
public class SnowFallEffetAngleDegrees {
    var angleDegrees: CGFloat = 0
    var angle: SnowFallEffectAngle = .none
    
    public init(angle: SnowFallEffectAngle = .none, angleDegrees: CGFloat = 0) {
        self.angle = angle
        self.angleDegrees = angleDegrees
    }
}
