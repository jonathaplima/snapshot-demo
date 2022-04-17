import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?

	func scene(
		_ scene: UIScene,
		willConnectTo session: UISceneSession,
		options connectionOptions: UIScene.ConnectionOptions
	) {
		guard let windowScene = (scene as? UIWindowScene) else { return }
		let navigationController = UINavigationController(rootViewController: HomeViewController())
		navigationController.navigationBar.prefersLargeTitles = true
		
		window = UIWindow(frame: windowScene.coordinateSpace.bounds)
		window?.windowScene = windowScene
		window?.rootViewController = navigationController
		window?.backgroundColor = .white
		window?.makeKeyAndVisible()
	}
}

