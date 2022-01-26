//
//  SnowFallEffect+Duration.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import Foundation

/**
 Set duration of snow fall animation
 - infinite: infinite animation
 - custom: set duration of snow fall animation
 */
public enum SnowFallEffectDuration: Equatable {
    case infinite
    case custom(duration: CFTimeInterval? = 0.0)
}
