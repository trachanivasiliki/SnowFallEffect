//
//  SnowFallEffectTests.swift
//  SnowFallEffectTests
//
//  Created by Vasiliki Trachani on 8/12/21.
//

import XCTest
@testable import SnowFallEffect

class SnowFallEffectTests: XCTestCase {

    var snowFallEffect: SnowFallEffectLayer!
    
    override func setUp() {
        snowFallEffect = SnowFallEffectLayer(snowFallItems: [])
    }

    func testSnowFallEffectItem() throws {
        let fallingItem = SnowFallEffectItem(particleImage: UIImage(), speed: 20, scale: 1, velocity: 10)
        
        XCTAssertEqual(fallingItem.image, UIImage())
        XCTAssertEqual(fallingItem.speed, 20)
        XCTAssertEqual(fallingItem.scale, 1)
        XCTAssertEqual(fallingItem.velocity, 10)
    }

    func testSnowFallEffectItem_GivenDefaultValued() throws {
        let fallingItem = SnowFallEffectItem(velocity: 5)
        
        XCTAssertEqual(fallingItem.image, UIImage())
        XCTAssertEqual(fallingItem.speed, 1)
        XCTAssertEqual(fallingItem.scale, 1)
        XCTAssertEqual(fallingItem.velocity, 5)
    }
    
    func testConfigureSnowFallLayer() throws {
        let emitterCells = snowFallEffect.configure(with: [SnowFallEffectItem(particleImage: UIImage(), speed: 20, scale: 1, velocity: 10)])!
        XCTAssertEqual(emitterCells.count, 1)
    }
    
    func testCongifureSnowLayer_GivenDefaultValues() throws {
        let _ = snowFallEffect.configure(with: [SnowFallEffectItem(velocity: 5)])!
        XCTAssertEqual(snowFallEffect.snowFallDuration, SnowFallEffectDuration.infinite)
        XCTAssertEqual(snowFallEffect.snowFallDirection, SnowFallEffectDirection.top)
    }
}
