import XCTest
@testable import Demoapp
import SnapshotTesting

class DemoappTests: XCTestCase {

	var sut: UIViewController!

	override func setUp() {
		super.setUp()
		sut = HomeViewController()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

    func testExample() throws {
		assertSnapshot(matching: sut, as: .image)
    }

}
