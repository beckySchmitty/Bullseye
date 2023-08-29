//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Becky Schmitthenner on 7/13/23.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
  var game: Game!
  
  override func setUpWithError() throws {
    game = Game()
  }
  
  override func tearDownWithError() throws {
    game = nil
  }
  
  func testScorePostive() {
    var guess = game.target + 5
    var score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    var guess = game.target - 5
    var score = game.points(sliderValue: guess)
    
    XCTAssertEqual(score, 95)
  }
  
  
}
