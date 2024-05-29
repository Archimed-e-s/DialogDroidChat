import UIKit

final class LaunchScreenViewController: UIViewController {

    // MARK: - Public Properties

    var animationCompletion: (() -> Void)?

    // MARK: - Private properties

    @IBOutlet private weak var animationContainerView: UIView!

    // MARK: - Life Cycle

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(
            withDuration: 0.3,
            delay: 2,
            options: []) {
                self.animationContainerView.backgroundColor = .white
            } completion: { [weak self] _ in
                UIView.animate(
                    withDuration: 1
                ) {
                        self?.view.alpha = 0
                    } completion: { _ in
                        self?.animationCompletion?()
                    }
                self?.animationCompletion?()
            }

    }
}
