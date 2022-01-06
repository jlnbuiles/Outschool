//
//  ClassesCollectionCellTests.swift
//  OutschoolTests
//
//  Created by Julian Builes on 1/5/22.
//

import XCTest
//import ClassCollectionCell
@testable import Outschool

class ClassesCollectionCellTests: XCTestCase {

    // MARK: - Properties
    var sut: ClassCollectionCell!
    
    // MARK: - Test configuration
    override func setUpWithError() throws {
        sut = ClassCollectionCell()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testExample() throws {
        XCTAssertNotNil(sut)
        XCTAssertEqual(sut.starsRatingStringFor(rating: 0.0), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: 0.5), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: 5.5), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: -5.5), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: 55), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: 5555555), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: nil), "")
        XCTAssertEqual(sut.starsRatingStringFor(rating: 5.0), "⭐️⭐️⭐️⭐️⭐️")
    }

}
