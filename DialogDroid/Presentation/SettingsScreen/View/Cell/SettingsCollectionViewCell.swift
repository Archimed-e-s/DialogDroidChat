import UIKit

class SettingsCollectionViewCell: UICollectionViewCell {

    // MARK: - Private properties
    @IBOutlet private weak var cellBackgroundView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    // MARK: - Life cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBackgroundView.layer.cornerRadius = 8
        cellBackgroundView.layer.masksToBounds = true
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
    }
    // MARK: - Public Methods
    func configure(from model: SetttingsScreenCollectionModel) {
        titleLabel.text = model.title
    }
    // MARK: - Actions
    @IBAction func nextButtonDidTap(_ sender: Any) {
    }
}
