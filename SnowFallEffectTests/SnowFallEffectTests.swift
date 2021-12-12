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
        snowFallEffect = SnowFallEffectLayer()
    }

    func testSnowFallEffectItem() throws {
        let fallingItem = SnowFallEffectItem(particleImage: UIImage(), speed: 20, scale: 1, color: .white)
        
        XCTAssertEqual(fallingItem.color, .white)
        XCTAssertEqual(fallingItem.image, UIImage())
        XCTAssertEqual(fallingItem.speed, 20)
        XCTAssertEqual(fallingItem.scale, 1)
    }

    func testSnowFallEffectItem_GivenDefaultValued() throws {
        let fallingItem = SnowFallEffectItem()
        
        XCTAssertEqual(fallingItem.color, .white)
        XCTAssertEqual(fallingItem.image, UIImage())
        XCTAssertEqual(fallingItem.speed, 1)
        XCTAssertEqual(fallingItem.scale, 1)
    }
    
    func testConfigureSnowFallLayer() throws {
        let emitterCells = snowFallEffect.configure(with: [SnowFallEffectItem(particleImage: UIImage(), speed: 20, scale: 1, color: .white)])!
        XCTAssertEqual(emitterCells.count, 1)
    }
    
    func testCongifureSnowLayer_GivenDefaultValues() throws {
        let _ = snowFallEffect.configure(with: [SnowFallEffectItem()])!
        XCTAssertEqual(snowFallEffect.snowFallDuration, SnowFallEffectDuration.infinitive)
        XCTAssertEqual(snowFallEffect.snowFallDirection, SnowFallEffectDirection.top)
        XCTAssertEqual(snowFallEffect.snowFallShape, SnowFallShape.line)
    }
}
