//
//  UserResponseTest.swift
//  GithubUsersTests
//
//  Created by Wanhar on 16/01/23.
//

import XCTest
@testable import GithubUsers

class UserResponseTest: XCTestCase {
    
    var sut: UserResponse!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = UserResponse(login: "test", id: 1, nodeID: "MDQ6VXNlcjE=")
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }
    
    func testUserResponse_WhenDataProvided_ShouldBeCodable() {
        XCTAssertTrue(sut as Any is Decodable)
    }
    
    func testUserResponse_WhenDataProvided_ShouldBeString() {
        XCTAssertTrue(sut?.id == 1)
        XCTAssertTrue(sut?.login ==  "test")
        XCTAssertTrue(sut?.nodeID == "MDQ6VXNlcjE=")
    }
    
}
