import XCTest
@testable import SectionedList

final class SectionedListTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SectionedList().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
