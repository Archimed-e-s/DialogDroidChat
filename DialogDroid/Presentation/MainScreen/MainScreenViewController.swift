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
        test()
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
    // MARK: - Public Methods
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

    // MARK: - TEST

    func test() {
        let text1 = """
 kjjjhvfjhakbsflkjasgfiu as gf klashfkjda fhkuq whlf;kqwhoifrhwlirfhqwoirh qwlihrfioqwhro piqwhrpoiqhwr ioqhworihqw iorhqwoi rqowi rhowoiqrh owqhrioh qwiorh ioqwhrioqwh rlqhwrlkqhwlprkhq wiorh qwqiowhroqwirhqwoirh oiwerh e7t ie5tw5pty5 euqt o5eutw859htoi eltlwekt lwketlwetwe t8w e8t uweoptw e8twyo8tyewtwtyweto8wetyow8etyeow 8tyw eop8tyweoyt8pow ei th woeithop8 wetyowehtw 8ehto8pweht o8wetuwe8tuw e8tyw8etypwoetyowet 8eyo wet weyt8o wyeto8wyeto8wyeo8tyw eopt8we tpoeyt 8eytow8e yotw8yoptweytw eihtaoihseroithgspoerhgte rhoguhsoiughsgroiugherugh
 """
        let text2 = "Hello world"
        let db = serviceProvider.coreDataManager
        try? db.saveChatMessage(
            MessageModel(
                isFromUser: true,
                message: text1,
                timestamp: Date()
            )
        )
        try? db.saveChatMessage(
            MessageModel(
                isFromUser: true,
                message: text2,
                timestamp: Date()
            )
        )
        try? db.saveChatMessage(
            MessageModel(
                isFromUser: false,
                message: text1,
                timestamp: Date()
            )
        )
        try? db.saveChatMessage(
            MessageModel(
                isFromUser: false,
                message: text2,
                timestamp: Date()
            )
        )
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
