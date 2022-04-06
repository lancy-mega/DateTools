
import XCTest
@testable import DateToolsObjc

class DateToolsObjcTests: XCTestCase {

    func testTestMethod() {
        let string = NSDate().timeAgoSinceNow()
        XCTAssertEqual("Just now", string)
    }
}
