import Foundation

final class AIClientCommand: Encodable {
    private var model: String
    private var messages: [AIClientCommandMessage]

    init(model: String, message: String) {
        self.model = model
        self.messages = [AIClientCommandMessage(role: "user", content: message)]
    }
}

struct AIClientCommandMessage: Encodable {
    var role: String
    var content: String
}
