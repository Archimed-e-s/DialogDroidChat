import Foundation

enum AIClientEndPoint {
    case completions

    var path: String {
        switch self {
        case .completions:
            return "/v1/chat/completions"
        }
    }

    var method: String {
        switch self {
        case .completions:
            return "POST"
        }
    }

    var baseURL: String {
        switch self {
        case .completions:
            return "https://api.proxyapi.ru/openai"
        }
    }
}
