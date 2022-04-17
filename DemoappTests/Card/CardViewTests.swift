import XCTest
import SnapshotTesting
@testable import Demoapp

class CardViewTests: XCTestCase {

	var sut: CardView!
	var darkTrait: UITraitCollection!
	var lightTrait: UITraitCollection!

	override func setUp() {
		super.setUp()
		darkTrait = .init(userInterfaceStyle: .dark)
		lightTrait = .init(userInterfaceStyle: .light)
	}

	override func tearDown() {
		sut = nil
		lightTrait = nil
		darkTrait = nil
		super.tearDown()
	}

	func testOneOptionSnapshot() {
		sut = CardView(options: [.activeBalance])
		sut.frame = .init(x: 0, y: 0, width: 350, height: 190)
		assertSnapshot(matching: sut, as: .image(traits: lightTrait), named: "DarkMode")
		assertSnapshot(matching: sut, as: .image(traits: darkTrait), named: "LightMode")
	}

	func testTwoOptionSnapshot() {
		sut = CardView(options: [.activeBalance, .card])
		sut.frame = .init(x: 0, y: 0, width: 350, height: 190)
		assertSnapshot(matching: sut, as: .image(traits: lightTrait), named: "DarkMode")
		assertSnapshot(matching: sut, as: .image(traits: darkTrait), named: "LightMode")
	}

	func testThreeOptionSnapshot() {
		sut = CardView(options: [.activeBalance, .card, .saveIt])
		sut.frame = .init(x: 0, y: 0, width: 350, height: 190)
		assertSnapshot(matching: sut, as: .image(traits: lightTrait), named: "DarkMode")
		assertSnapshot(matching: sut, as: .image(traits: darkTrait), named: "LightMode")
	}

}
