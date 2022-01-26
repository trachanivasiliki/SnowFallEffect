//
//  SnowFallEffectLayer.swift
//  SnowFallEffect
//
//  Created by Vasiliki Trachani on 12/12/21.
//

import UIKit

public final class SnowFallEffectLayer: CAEmitterLayer {
    var snowFallDuration: SnowFallEffectDuration? = .infinite
    var snowFallDirection: SnowFallEffectDirection? = .top
    var snowFallAngle: SnowFallEffetAngleDegrees?
    var snowFallItems: [SnowFallEffectItem]? = []

    public init(snowFallDuration: SnowFallEffectDuration? = .infinite, snowFallDirection: SnowFallEffectDirection? = .top, snowFallAngle: SnowFallEffetAngleDegrees? = SnowFallEffetAngleDegrees.init(), snowFallItems: [SnowFallEffectItem]?) {
        self.snowFallDuration = snowFallDuration
        self.snowFallDirection = snowFallDirection
        self.snowFallAngle = snowFallAngle
        self.snowFallItems = snowFallItems
        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    ///create SnowFallEffectItems 
    func configure(with contents: [SnowFallEffectItem]) -> [CAEmitterCell]? {
        return contents.map { (item) -> CAEmitterCell in
            let emiterCell = CAEmitterCell()
            emiterCell.birthRate = 10
            emiterCell.lifetime = 20.0
            emiterCell.lifetimeRange = 0
            emiterCell.velocity = item.velocity
            emiterCell.velocityRange = 10
            emiterCell.emissionLongitude = .pi
            emiterCell.emissionRange = .pi / 8
            emiterCell.yAcceleration = (snowFallDirection == .top) ? item.speed : (-item.speed)
            emiterCell.scale = item.scale
            emiterCell.scaleRange = item.scale / 3
            emiterCell.contents = item.image?.cgImage
            if let snowFallAngle = snowFallAngle, snowFallAngle.angle != .none {
                emiterCell.xAcceleration = (snowFallAngle.angle == .right) ? snowFallAngle.angleDegrees : (-snowFallAngle.angleDegrees)
            }
            return emiterCell
        }
    }

    ///start snow animation
    ///add snow layer into view hierarchy
    public func addSnowLayer(into view: UIView) {
        let pointy = (snowFallDirection == .top) ? (-5) : (view.bounds.height + 5)
        self.emitterPosition = CGPoint(x: view.bounds.width / 2.0, y: pointy)
        self.emitterSize = CGSize(width: view.bounds.width, height: 0)
        self.emitterShape = .line
        self.beginTime = CACurrentMediaTime()
        if let duration = snowFallDuration {
            switch duration {
            case .custom(duration: let duration):
                self.duration = duration ?? 0
            default:
                break
            }
        }
        self.timeOffset = CFTimeInterval(arc4random_uniform(6) + 5)//CFTimeInterval(1)
        guard let snowFallItems =  snowFallItems else { return }
        self.emitterCells = configure(with: snowFallItems)
        view.layer.addSublayer(self)
    }

    ///remove snow animation
    public func removeFallingLayer(from view: UIView) {
        view.layer.removeFromSuperlayer()
    }
}
