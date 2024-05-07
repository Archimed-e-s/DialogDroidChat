import Foundation

enum SetttingsScreenCollectionModel: CaseIterable {
    case music
    case deleteChatHistory
    case about
    var title: String {
        switch self {
        case .music:
            return R.string.localizable.settingsMusicItem()
        case .deleteChatHistory:
            return R.string.localizable.settingsDeleteChatItem()
        case .about:
            return R.string.localizable.settingsAboutItem()
        }
    }
}
