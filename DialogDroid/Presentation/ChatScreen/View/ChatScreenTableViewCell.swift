import UIKit
import Lottie

final class ChatScreenTableViewCell: UITableViewCell {

    // MARK: - Private properties
    private let backgroundCellView = UIView()
    private let avatarImageView = UIImageView()
    private let dateLabel = UILabel()
    private let messageLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()

    private let animatedAvatarBot = {
        let view = LottieAnimationView()
        view.animation = .named("avatarBot")
        view.loopMode = .loop
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private let animatedAvatarPerson = {
        let view = LottieAnimationView()
        view.animation = .named("avatarPerson")
        view.loopMode = .loop
        view.alpha = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    private lazy var leftSideAvatarConstraint = {
        avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8)
    }()

    private lazy var rightSideAvatarConstraint = {
        avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
    }()
    private lazy var leftSideDateLabelConstraint = {
        dateLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 4)
    }()
    private lazy var rightSideDateLabelConstraint = {
        dateLabel.trailingAnchor.constraint(equalTo: avatarImageView.leadingAnchor, constant: -4)
    }()
    private lazy var leftSideMessageLabelConstrint = {
        messageLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8)
    }()
    private lazy var rightSideMessageLabelConstrint = {
        messageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
    }()
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier )
        setupUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Life Cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        [ leftSideAvatarConstraint,
          rightSideAvatarConstraint,
          leftSideDateLabelConstraint,
          rightSideDateLabelConstraint,
          leftSideMessageLabelConstrint,
          rightSideMessageLabelConstrint ].forEach({ $0.isActive = false })
        messageLabel.text = nil
        dateLabel.text = nil
        animatedAvatarBot.pause()
        animatedAvatarBot.alpha = 0
        animatedAvatarPerson.pause()
        animatedAvatarPerson.alpha = 0
        messageLabel.textAlignment = .left
    }
    // MARK: - Public Methods
    func configure(from model: MessageModel) {
        messageLabel.text = model.message
        messageLabel.textAlignment = model.isFromUser ? .right : .left
        NSLayoutConstraint.activate([
            model.isFromUser ? rightSideDateLabelConstraint : leftSideDateLabelConstraint,
            model.isFromUser ? rightSideAvatarConstraint : leftSideAvatarConstraint,
            model.isFromUser ? rightSideMessageLabelConstrint : leftSideMessageLabelConstrint
        ])

        dateLabel.text = model.timestamp.formatted(date: .omitted, time: .omitted)
        layoutIfNeeded()

        if model.isFromUser {
            animatedAvatarBot.play()
            animatedAvatarBot.alpha = 1
        } else {
            animatedAvatarPerson.play()
            animatedAvatarPerson.alpha = 1
        }
    }

    // MARK: - Private Methods

    private func setupUI() {
        backgroundColor = .clear
        avatarImageView.layer.cornerRadius = 20
        avatarImageView.layer.cornerCurve = .continuous
        avatarImageView.layer.masksToBounds = true

        backgroundCellView.layer.cornerRadius = 8
        backgroundCellView.layer.cornerCurve = .continuous
        backgroundCellView.layer.masksToBounds = true
        backgroundCellView.backgroundColor = .gray.withAlphaComponent(0.1)

        addSubViews()
        setupConstraints()
    }
    private func addSubViews() {
        [
            backgroundCellView,
            avatarImageView,
            animatedAvatarBot,
            animatedAvatarPerson,
            dateLabel,
            messageLabel
        ].forEach({
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        })
    }
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            avatarImageView.widthAnchor.constraint(equalToConstant: 40),
            avatarImageView.heightAnchor.constraint(equalToConstant: 40),

            messageLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 4),
            messageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            messageLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.7),

            dateLabel.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),

            backgroundCellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 4),
            backgroundCellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -4),
            backgroundCellView.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -4),
            backgroundCellView.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 4),

            animatedAvatarBot.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            animatedAvatarBot.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor),
            animatedAvatarBot.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            animatedAvatarBot.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor),

            animatedAvatarPerson.leadingAnchor.constraint(equalTo: avatarImageView.leadingAnchor),
            animatedAvatarPerson.trailingAnchor.constraint(equalTo: avatarImageView.trailingAnchor),
            animatedAvatarPerson.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            animatedAvatarPerson.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor)
            ])
        }
    }
