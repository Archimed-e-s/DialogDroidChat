import UIKit

final class SettingsScreenViewController: UIViewController {

    // MARK: - Private properties

    @IBOutlet private weak var collectionView: UICollectionView!
    private let screenModel = SetttingsScreenCollectionModel.allCases
    private let serviceProvider: ServicesProvider = DefaultServicesProvider.shared

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
    }

    @IBAction private func backButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Private Methods

    private func configureNavigationBar() {
        navigationItem.title = R.string.localizable.settingsScreenTitle()
    }
    private func configureCollection() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(
            UINib(
                nibName: "SettingsCollectionViewCell",
                bundle: nil
            ),
            forCellWithReuseIdentifier: "SettingsCollectionViewCell"
        )
    }
    private func presentDeleteAllMessages(deleteHandler: @escaping () -> Void) {
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { _ in deleteHandler() }
        let actions = [cancelAction, deleteAction]
        let alertController = UIAlertController(
            title: "Delete All Messages?",
            message: "Do you really want to delete all messages? This action cannot be undone!",
            preferredStyle: .alert
        )
        actions.forEach({ alertController.addAction($0) })
        present(alertController, animated: true)
    }
    private func presentAboutAlert() {
        let alertController = UIAlertController(
            title: "About the application",
            message: "DialogDroid\nCreated by Archimedes in 2024",
            preferredStyle: .alert
        )
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alertController, animated: true)
    }
}

    // MARK: - UICollectionViewDataSource

extension SettingsScreenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return screenModel.count
    }
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "SettingsCollectionViewCell",
            for: indexPath
        ) as? SettingsCollectionViewCell else {
            return UICollectionViewCell.init()
        }
        cell.configure(from: screenModel[indexPath.item])
        return cell
    }
}

    // MARK: - UICollectionViewDelegate

extension SettingsScreenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("didSelectItemAt ", screenModel[indexPath.item])
        switch screenModel[indexPath.item] {
        case .music:
            performSegue(withIdentifier: "goToMusicSettings", sender: nil)
        case .deleteChatHistory:
            presentDeleteAllMessages { [weak self] in
                do {
                    try self?.serviceProvider.coreDataManager.deleteAllMessages()
                    guard let result = try self? .serviceProvider.coreDataManager.getAllChatMessages() else { return }
                    print(result)
                } catch {
                    print(error)
                }
            }
        case .about:
            presentAboutAlert()
        }
    }
}

    // MARK: - UICollectionViewDelegateFlowLayout

extension SettingsScreenViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        let width = collectionView.frame.width
        return CGSize(width: width, height: 80)
    }
}
