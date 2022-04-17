import UIKit

enum CardOption: CaseIterable {
	case activeBalance
	case card
	case saveIt

	var iconImage: UIImage? {
		switch self {
		case .activeBalance: return UIImage(named: "money")
		case .card: return UIImage(named: "credit_card")
		case .saveIt: return UIImage(named: "savings")
		}
	}

	var title: String {
		switch self {
		case .activeBalance: return "Active"
		case .card: return "Card"
		case .saveIt: return "Save It"
		}
	}
}

class CardOptionView: UIView {

	private lazy var imageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = option.iconImage
		imageView.contentMode = .scaleAspectFill
		imageView.tintColor = .init(named: "primary")
		imageView.translatesAutoresizingMaskIntoConstraints = false
		return imageView
	}()

	private lazy var label: UILabel = {
		let label = UILabel()
		label.text = option.title
		label.font = .avenir(.medium, sized: 18)
		label.textColor = .init(named: "text")
		return label
	}()

	private lazy var balanceLabel: UILabel = {
		let label = UILabel()
		label.text = "$ 1000"
		label.font = .avenir(.regular, sized: 18)
		label.textColor = .init(named: "secondaryText")
		return label
	}()

	private lazy var contentStack: UIStackView = {
		let stackView = UIStackView()
		stackView.axis = .vertical
		stackView.spacing = 14
		stackView.alignment = .center
		stackView.distribution = .fill
		stackView.translatesAutoresizingMaskIntoConstraints = false
		return stackView
	}()

	private let option: CardOption

	init(option: CardOption) {
		self.option = option
		super.init(frame: .zero)
		setupViewCodable()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

extension CardOptionView: ViewCodable {

	func setupSubviews() {
		addSubview(contentStack)
		[imageView, label, balanceLabel].forEach(contentStack.addArrangedSubview)
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			contentStack.leadingAnchor.constraint(equalTo: leadingAnchor),
			contentStack.topAnchor.constraint(equalTo: topAnchor),
			contentStack.trailingAnchor.constraint(equalTo: trailingAnchor),
			contentStack.bottomAnchor.constraint(equalTo: bottomAnchor),

			imageView.heightAnchor.constraint(equalToConstant: 30),
			imageView.widthAnchor.constraint(equalToConstant: 30),
		])

		contentStack.setCustomSpacing(4, after: label)
	}

}
