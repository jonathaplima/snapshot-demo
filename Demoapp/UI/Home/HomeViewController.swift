import UIKit

class HomeViewController: UIViewController {

	private lazy var cardView: CardView = {
		let cardView = CardView(options: CardOption.allCases)
		cardView.translatesAutoresizingMaskIntoConstraints = false
		return cardView
	}()

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .init(named: "background")
		title = "Hello Sword"

		view.addSubview(cardView)
		NSLayoutConstraint.activate([
			cardView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 18),
			cardView.widthAnchor.constraint(equalToConstant: 350),
			cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
		])
	}

}

