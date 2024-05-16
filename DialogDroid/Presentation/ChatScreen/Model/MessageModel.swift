import UIKit
struct MessageModel {

    // MARK: - Public properties

    /// Идентификатор сообщения

    let identifier: UUID

    /// Флаг  что сообщение от пользователя

    let isFromUser: Bool

    /// Текст сообщения

    let message: String

    /// Временная метка сохранения сообщения в БД

    let timestamp: Date

    // MARK: - Initialization

    /// Стандартный инициализатор

    init(identifier: UUID = UUID(), isFromUser: Bool, message: String, timestamp: Date) {
        self.identifier = identifier
        self.isFromUser = isFromUser
        self.message = message
        self.timestamp = timestamp
    }

    /// Инициализатор из 'CoreDataChatMessage'

    init?(from model: CoreDataChatMessage) {
        identifier = model.identifier
        isFromUser = model.isFromUser
        message = model.message
        timestamp = model.timestamp
    }
}
