import UIKit
import Lottie

final class LaunchScreenViewController: UIViewController {

    // MARK: - Public Properties

    var animationCompletion: (() -> Void)?

    // MARK: - Private properties

    @IBOutlet private weak var animationContainerView: UIView!
    private let animatedLogo = {
        let view = LottieAnimationView()
        view.animation = .named("loadView")
        view.loopMode = .loop
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLogoView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animatedLogo.play()
        UIView.animate(
            withDuration: 1
        ) {
                self.animatedLogo.alpha = 1
            } completion: { [weak self] _ in
                UIView.animate(
                    withDuration: 1,
                    delay: 3
                ) {
                        self?.view.alpha = 0
                    } completion: { _ in
                        self?.animationCompletion?()
                    }
                self?.animationCompletion?()
            }
    }

    // MARK: - Private Methods

    private func setupLogoView() {
        view.addSubview(animatedLogo)
        NSLayoutConstraint.activate([
            animatedLogo.leadingAnchor.constraint(equalTo: animationContainerView.leadingAnchor),
            animatedLogo.trailingAnchor.constraint(equalTo: animationContainerView.trailingAnchor),
            animatedLogo.topAnchor.constraint(equalTo: animationContainerView.topAnchor),
            animatedLogo.bottomAnchor.constraint(equalTo: animationContainerView.bottomAnchor)
        ])
    }
}
