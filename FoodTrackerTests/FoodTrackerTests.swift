//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by takuya on 2015/11/08.
//  Copyright © 2015年 Takuya OHASHI. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        let potentialItem = Meal(name: "NewestMeal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        // Failure Case
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNotNil(badRating)
    }
}
