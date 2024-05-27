import Foundation

/// модель бота
enum AIClientModelType {
    case gpt35Turbo

    var modelName: String {
        switch self {
        case .gpt35Turbo:
            return "gpt-3.5-turbo-0613"
        }
    }
}
