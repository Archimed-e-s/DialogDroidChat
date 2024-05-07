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
        print(#function)
    }
    @IBAction private func rolePlayChatButtonDidTap(_ sender: Any) {
        print(#function)
    }
    @IBAction private func plainChatButtonDidTap(_ sender: Any) {
        print(#function)
    }
    // MARK: - Public Methods
    // MARK: - Private Methods
    private func configureNavigationBar() {
        #warning("Localization")
        navigationItem.title = "Main Screen"
//        navigationController?.navigationItem.title = "Main Screen" Navigation Controller не передается во View Controller
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
