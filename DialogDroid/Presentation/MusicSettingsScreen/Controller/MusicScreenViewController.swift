import UIKit

final class MusicScreenViewController: UIViewController {
    // MARK: - Private proprties
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var enableMusicSwitch: UISwitch!
    @IBOutlet private weak var enableMusicLabel: UILabel!
    private var selectedIndex: IndexPath?
    private let musicModel: [MusicCollection] = MusicCollection.allCases
    private let servicesProvider: ServicesProvider = DefaultServicesProvider.shared
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        configureCollection()
        setupLabels()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configureNavigationBar()
    }
    override func viewIsAppearing(_ animated: Bool) {
        super.viewIsAppearing(animated)
        enableMusicSwitch.setOn(servicesProvider.settingStorage.isMusicOn, animated: animated)
        collectionView.selectItem(
            at: IndexPath(item: servicesProvider.settingStorage.selectedMusicIndex, section: 0),
            animated: animated,
            scrollPosition: .centeredVertically
        )
    }
    // MARK: - Actions
    @IBAction private func switchValueDidChange(_ sender: UISwitch) {
        print(#function)
        servicesProvider.settingStorage.isMusicOn = sender.isOn
    }
    @IBAction private func backButtonDidTap(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    // MARK: - Private Methods
    private func setupLabels() {
        enableMusicLabel.text = R.string.localizable.musicSettingsScreenSwitchLabel()
    }
    private func selectCurrentMusic(_ music: MusicCollection) {
        print(#function)
    }
    private func configureNavigationBar() {
        navigationItem.title = R.string.localizable.musicSettingsScreenTitle()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.backgroundColor = .clear
    }
    private func configureCollection() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(
            UINib(
                nibName: "MusicSettingsCollectionViewCell",
                bundle: nil
            ),
            forCellWithReuseIdentifier: "MusicSettingsCollectionViewCell"
        )
    }
}
    // MARK: - UICollectionViewDataSource
extension MusicScreenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicModel.count
    }
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "MusicSettingsCollectionViewCell",
            for: indexPath
        ) as? MusicSettingsCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.configure(with: musicModel[indexPath.item])
        return cell
    }
}
    // MARK: - UICollectionViewDelegate
extension MusicScreenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if selectedIndex != nil {
            collectionView.deselectItem(at: indexPath, animated: false)
        }
        collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .centeredVertically)
        selectedIndex = indexPath
        selectCurrentMusic(musicModel[indexPath.item])
        servicesProvider.settingStorage.selectedMusicIndex = indexPath.item
    }
}
    // MARK: - UICollectionViewDelegateFlowLayout
extension MusicScreenViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 80)
    }
}
