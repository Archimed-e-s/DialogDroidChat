import Foundation
import CoreData

@objc(CoreDataChatMessage)
public class CoreDataChatMessage: NSManagedObject {

    /// Заполнить свойства значениями из MessageModel

    func populate(from model: MessageModel) {
        identifier = model.identifier
        isFromUser = model.isFromUser
        timestamp = model.timestamp
        message = model.message
    }
}
