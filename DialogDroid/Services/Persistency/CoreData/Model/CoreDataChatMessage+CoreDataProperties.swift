import Foundation
import CoreData


extension CoreDataChatMessage {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<CoreDataChatMessage> {
        return NSFetchRequest<CoreDataChatMessage>(entityName: "CoreDataChatMessage")
    }
    /// Идентификатор сообщения
    @NSManaged public var identifier: UUID
    /// Флаг  что сообщение от пользователя
    @NSManaged public var isFromUser: Bool
    /// Текст сообщения
    @NSManaged public var message: String
    /// Временная метка сохранения сообщения в БД
    @NSManaged public var timestamp: Date

}
