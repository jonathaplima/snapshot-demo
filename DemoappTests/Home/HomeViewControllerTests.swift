import XCTest
import SnapshotTesting
@testable import Demoapp

class HomeViewControllerTests: XCTestCase {

	var sut: HomeViewController!

	override func setUp() {
		super.setUp()
		sut = HomeViewController()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSnapshot() {
		assertSnapshot(
			matching: sut,
			as: .image(on: .iPhoneX, traits: .init(userInterfaceStyle: .light)),
			named: "LightMode_Portrait"
		)

		assertSnapshot(
			matching: sut,
			as: .image(on: .iPhoneX, traits: .init(userInterfaceStyle: .dark)),
			named: "DarkMode_Portrait"
		)

		assertSnapshot(
			matching: sut,
			as: .image(on: .iPhoneX(.landscape), traits: .init(userInterfaceStyle: .light)),
			named: "LightMode_Landscape"
		)

		assertSnapshot(
			matching: sut,
			as: .image(on: .iPhoneX(.landscape), traits: .init(userInterfaceStyle: .dark)),
			named: "DarkMode_Landscape"
		)
	}

}
