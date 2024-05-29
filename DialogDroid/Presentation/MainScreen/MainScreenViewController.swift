import UIKit
import Lottie

class MainScreenViewController: UIViewController {

    // MARK: - Private Properties

    @IBOutlet private weak var animatedViewContainer: UIView!
    @IBOutlet private weak var centerLabel: UILabel!
    @IBOutlet weak var goToChatView: CornerView!
    @IBOutlet weak var goToChatLabel: UILabel!
    private let serviceProvider: ServicesProvider = DefaultServicesProvider.shared
    private var isNeedShowSplashScreen: Bool = true

    private let animatedMainScreen = {
        let view = LottieAnimationView()
        view.animation = .named("mainScreen")
        view.loopMode = .loop
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfLaunchBefore()
        setupLabels()
        setupLogoView()
        setupGestures()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
        showSplashScreen()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animatedMainScreen.play()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        animatedMainScreen.pause()
    }

    // MARK: - Actions

    @IBAction private func settingsButtonDidTap(_ sender: Any) {
        performSegue(withIdentifier: "goToSettings", sender: nil)
    }

    @IBAction private func shareButtonDidTap(_ sender: Any) {
        guard let url = URL(string: "https://apple.com") else { return }
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        present(activityVC, animated: true)
    }

    @objc private func chatButtonDidTap() {
        UIView.animate(withDuration: 0.1) { [self] in
            goToChatLabel.transform = goToChatLabel.transform.scaledBy(x: 0.9, y: 0.9)
        } completion: { _ in
            self.goToChatLabel.transform = .identity
            self.performSegue(withIdentifier: "goToPlainChat", sender: nil)
        }
    }

    // MARK: - Private Methods

    private func setupGestures() {
        goToChatView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(chatButtonDidTap)))
    }

    private func setupLabels() {
        centerLabel.text = R.string.localizable.mainScreenCenterLabel()
        goToChatLabel.text = R.string.localizable.mainScreenGoToChatLabel()
    }

    private func configureNavigationBar() {
        navigationItem.title = R.string.localizable.mainScreenTitle()
    }

    private func checkIfLaunchBefore() {
        if !serviceProvider.applicationStorage.isLaunchingBefore {
            serviceProvider.applicationStorage.isLaunchingBefore = true
        }
    }

    private func showSplashScreen() {
        guard isNeedShowSplashScreen  else { return }
        isNeedShowSplashScreen = false
        let storyboard = UIStoryboard(name: R.storyboard.main.name, bundle: nil)
        guard let splashScreenViewController = storyboard.instantiateViewController(
            withIdentifier: "splashVC"
        ) as? LaunchScreenViewController
        else { return }
        splashScreenViewController.animationCompletion = { [weak self] in
            self?.dismiss(animated: false)
        }
        splashScreenViewController.modalPresentationStyle = .fullScreen
        present(splashScreenViewController, animated: false)
    }

    private func setupLogoView() {
        view.addSubview(animatedMainScreen)
        NSLayoutConstraint.activate([
            animatedMainScreen.leadingAnchor.constraint(equalTo: animatedViewContainer.leadingAnchor),
            animatedMainScreen.trailingAnchor.constraint(equalTo: animatedViewContainer.trailingAnchor),
            animatedMainScreen.topAnchor.constraint(equalTo: animatedViewContainer.topAnchor),
            animatedMainScreen.bottomAnchor.constraint(equalTo: animatedViewContainer.bottomAnchor)
        ])
    }

}
