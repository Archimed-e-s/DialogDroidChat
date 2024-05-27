import UIKit

class MainScreenViewController: UIViewController {

    // MARK: - Private Properties

    @IBOutlet private weak var animatedViewContainer: UIView!
    @IBOutlet private weak var centerLabel: UILabel!
    private let serviceProvider: ServicesProvider = DefaultServicesProvider.shared

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        checkIfLaunchBefore()
        setupLabels()

        let client = DefaultAIClient(token: ApplicationConstants.key)
        client.sendCompletion(
            with: "Какие данные у тебя есть обо мне",
            model: .gpt35Turbo) { result in
                switch result {
                case .success(let success):
                    print("message = ", success.choices.first?.message )
                case .failure(let failure):
                    print(failure)
                }
            }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
    }

    // MARK: - Actions

    @IBAction private func settingsButtonDidTap(_ sender: Any) {
        print(#function)
        performSegue(withIdentifier: "goToSettings", sender: nil)
    }

    @IBAction private func shareButtonDidTap(_ sender: Any) {
//        print(#function)
        guard let url = URL(string: "https://apple.com") else { return }
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)
        present(activityVC, animated: true)
    }

    @IBAction private func rolePlayChatButtonDidTap(_ sender: Any) {
        print(#function)
    }

    @IBAction private func plainChatButtonDidTap(_ sender: Any) {
//        print(#function)
        performSegue(withIdentifier: "goToPlainChat", sender: nil)
    }

    // MARK: - Private Methods

    private func setupLabels() {
        centerLabel.text = R.string.localizable.mainScreenCenterLabel()
    }
    private func configureNavigationBar() {
        navigationItem.title = R.string.localizable.mainScreenTitle()
    }
    private func checkIfLaunchBefore() {
        if !serviceProvider.applicationStorage.isLaunchingBefore {
            serviceProvider.applicationStorage.isLaunchingBefore = true
        }
    }
}

// MARK: - Segue

extension MainScreenViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToSettings":
            guard let destinationController = segue.destination as? SettingsScreenViewController else { return }
        default:
            super.prepare(for: segue, sender: sender)
        }
    }
}
