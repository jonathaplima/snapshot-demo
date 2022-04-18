import XCTest
import SnapshotTesting
@testable import Demoapp

class CardOptionViewTests: XCTestCase {

	var sut: CardOptionView!

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testActiveBalanceSnapshot() {
		sut = CardOptionView(option: .activeBalance)
		sut.frame = .init(x: 0, y: 0, width: 120, height: 70)

		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .light)),
			named: "LightMode",
			testName: "ActiveBalance"
		)
		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .dark)),
			named: "DarkMode",
			testName: "ActiveBalance"
		)
	}

	func testCardSnapshot() {
		sut = CardOptionView(option: .card)
		sut.frame = .init(x: 0, y: 0, width: 120, height: 70)

		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .light)),
			named: "LightMode",
			testName: "Card"
		)
		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .dark)),
			named: "DarkMode",
			testName: "Card"
		)
	}

	func testSaveItSnapshot() {
		sut = CardOptionView(option: .saveIt)
		sut.frame = .init(x: 0, y: 0, width: 120, height: 70)

		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .light)),
			named: "LightMode",
			testName: "SaveIt"
		)
		assertSnapshot(
			matching: sut,
			as: .image(traits: .init(userInterfaceStyle: .dark)),
			named: "DarkMode",
			testName: "SaveIt"
		)
	}

}
