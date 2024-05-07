import UIKit

final class SettingsScreenViewController: UIViewController {
// MARK: - Private properties
    @IBOutlet private weak var collectionView: UICollectionView!
    private let screenModel = SetttingsScreenCollectionModel.allCases
// MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollection()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
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
    @IBAction private func backButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    // MARK: - Private Methods
    private func configureNavigationBar() {
        #warning("Localization")
        navigationItem.title = "Main Screen"
//        navigationController?.navigationItem.title = "Main Screen" Navigation Controller не передается во View Controller

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
            break
        case .about:
            break
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