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
		sut.frame = .init(x: 0, y: 0, width: 320, height: 70)
		assertSnapshot(matching: sut, as: .image)
	}

	func testCardSnapshot() {
		sut = CardOptionView(option: .card)
		sut.frame = .init(x: 0, y: 0, width: 320, height: 70)
		assertSnapshot(matching: sut, as: .image)
	}

	func testSaveItSnapshot() {
		sut = CardOptionView(option: .saveIt)
		sut.frame = .init(x: 0, y: 0, width: 320, height: 70)
		assertSnapshot(matching: sut, as: .image)
	}

}
