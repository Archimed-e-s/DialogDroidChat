import Foundation

enum SetttingsScreenCollectionModel: CaseIterable {
    case music
    case deleteChatHistory
    case about
    var title: String {
        #warning("Localization")
        switch self {
        case .music:
            return "Music"
        case .deleteChatHistory:
            return "Delete all chat history"
        case .about:
            return "About appplication"
        }
    }
}
