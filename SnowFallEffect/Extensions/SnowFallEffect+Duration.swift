//
//  SnowFallEffect+Duration.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import Foundation

public enum SnowFallEffectDuration: Equatable {
    case infinitive
    case custom(duration: CFTimeInterval? = 0.0)
}
