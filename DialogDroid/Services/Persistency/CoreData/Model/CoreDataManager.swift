import CoreData
protocol CoreDataManager {
    func getAllChatMessages() throws -> [MessageModel]
    func saveChatMessage(_ model: MessageModel) throws -> Bool
    func deleteAllMessages() throws
}

final class DefaultCoreDataManager: CoreDataManager {
    // MARK: - Private properties
    private let database: CoreDataService
    // MARK: - Initialization
    init(database: CoreDataService) {
        self.database = database
    }
    // MARK: - Public Methods
    func getAllChatMessages() throws -> [MessageModel] {
        let keys = #keyPath(CoreDataChatMessage.timestamp)
        let sortByDate = NSSortDescriptor(key: keys, ascending: false)
        let coreDataChatMessage = try database.fetchObjects(ofType: CoreDataChatMessage.self, sortBy: [sortByDate])
        return coreDataChatMessage.compactMap({ MessageModel(from: $0) })
    }
    func saveChatMessage(_ model: MessageModel) throws -> Bool {
        let coreDataChatMessage = try database.createObject(from: CoreDataChatMessage.self)
        coreDataChatMessage.populate(from: model)
        return try database.saveChanges()
    }
    func deleteAllMessages() throws {
        try database.deleteAllObjects(ofType: CoreDataChatMessage.self)
    }
}
