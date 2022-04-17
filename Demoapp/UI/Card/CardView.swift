import UIKit

class CardView: UIView {

	private lazy var contentView: UIView = {
		let view = UIView()
		view.backgroundColor = .init(named: "background2")
		view.layer.cornerRadius = 8
		view.layer.shadowColor = UIColor.black.cgColor
		view.layer.shadowOpacity = 0.1
		view.layer.shadowRadius = 5
		view.translatesAutoresizingMaskIntoConstraints = false
		return view
	}()

	private lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.text = "My total balance"
		label.font = .avenir(.medium, sized: 22)
		label.textColor = .init(named: "text")
		return label
	}()

	private lazy var balanceLabel: UILabel = {
		let label = UILabel()
		label.text = "$ 3500"
		label.font = .avenir(.medium, sized: 22)
		label.textColor = .init(named: "text")
		label.textAlignment = .right
		return label
	}()

	private lazy var titlesStack: UIStackView = {
		let stackView = UIStackView()
		stackView.distribution = .fillProportionally
		stackView.translatesAutoresizingMaskIntoConstraints = false
		return stackView
	}()

	private lazy var optionsStack: UIStackView = {
		let stackView = UIStackView()
		stackView.distribution = .equalSpacing
		stackView.alignment = .fill
		stackView.translatesAutoresizingMaskIntoConstraints = false
		return stackView
	}()

	private var options: [CardOption]

	init(options: [CardOption]) {
		self.options = options
		super.init(frame: .zero)
		setupViewCodable()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

extension CardView: ViewCodable {

	func setupSubviews() {
		addSubview(contentView)
		[titlesStack, optionsStack].forEach(contentView.addSubview)
		[titleLabel, balanceLabel].forEach(titlesStack.addArrangedSubview)
		options.forEach { optionsStack.addArrangedSubview(CardOptionView(option: $0)) }
	}

	func setupConstraints() {
		NSLayoutConstraint.activate([
			contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
			contentView.topAnchor.constraint(equalTo: topAnchor),
			contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
			contentView.bottomAnchor.constraint(equalTo: bottomAnchor),

			titlesStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
			titlesStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
			titlesStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
			titlesStack.heightAnchor.constraint(equalToConstant: 44),

			optionsStack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
												  constant: 48),
			optionsStack.topAnchor.constraint(equalTo: titlesStack.bottomAnchor, constant: 20),
			optionsStack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
												   constant: -48),
			optionsStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
		])
	}

}
