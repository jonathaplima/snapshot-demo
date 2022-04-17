import UIKit

protocol ViewCodable where Self: UIView {

	func setupViewCodable()
	func setupSubviews()
	func setupConstraints()
	func setupViewLayout()

}

extension ViewCodable {

	func setupViewCodable() {
		setupSubviews()
		setupConstraints()
		setupViewLayout()
	}

	func setupViewLayout() {}

}
