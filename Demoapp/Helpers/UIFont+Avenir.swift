import UIKit

extension UIFont {

	enum AvenirType {
		case regular, medium, bold
	}

	static func avenir(_ type: AvenirType, sized size: CGFloat) -> UIFont? {
		switch type {
		case .regular:
			return .init(name: "Avenir-Book", size: size)
		case .medium:
			return .init(name: "Avenir-Medium", size: size)
		case .bold:
			return .init(name: "Avenir-Heavy", size: size)
		}
	}

}
