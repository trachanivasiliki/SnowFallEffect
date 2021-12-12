//
//  SnowFallEffectLayer.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import UIKit

final class SnowFallEffectLayer: CAEmitterLayer {
    var snowFallDuration: SnowFallEffectDuration? = .infinitive
    var snowFallDirection: SnowFallEffectDirection? = .top
    var snowFallShape: SnowFallShape = .line
    var snowFallItems: [SnowFallEffectItem]?
    
    func configure(with contents: [SnowFallEffectItem]) -> [CAEmitterCell]? {
        return contents.map { (item) -> CAEmitterCell in
            let emiterCell = CAEmitterCell()
            emiterCell.birthRate = 10
            emiterCell.lifetime = 20.0
            emiterCell.lifetimeRange = 0
            emiterCell.velocity = 1
            emiterCell.velocityRange = -10
            emiterCell.emissionLongitude = .pi
            emiterCell.emissionRange = .pi / 8
            emiterCell.yAcceleration = item.speed
            emiterCell.scale = item.scale
            emiterCell.scaleRange = item.scale / 3
            emiterCell.color = item.color.cgColor
            emiterCell.contents = item.image.cgImage
            return emiterCell
        }
    }

    ///start animation
    func injectSnowLayer(into view: UIView) {
        let pointy = (snowFallDirection == .top) ? (-5) : (view.bounds.height + 5)
        self.emitterPosition = CGPoint(x: view.bounds.width / 2.0, y: pointy)
        self.emitterSize = bounds.size
        self.emitterShape = (snowFallShape == .line) ? .line : .rectangle
        self.beginTime = CACurrentMediaTime()
        if let duration = snowFallDuration {
            switch duration {
            case .custom(duration: let duration):
                self.duration = duration ?? 0
            default:
                break
            }
        }
        self.timeOffset = CFTimeInterval(1)
        guard let snowFallItems =  snowFallItems else { return }
        self.emitterCells = configure(with: snowFallItems)
        view.layer.addSublayer(self)
    }

    func removeFallingLayer(from view: UIView) {
        view.layer.removeFromSuperlayer()
    }
}
