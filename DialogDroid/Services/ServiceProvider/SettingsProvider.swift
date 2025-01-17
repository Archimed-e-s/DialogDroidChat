import Foundation

protocol ServicesProvider {
    /// Хранилище параметров приложения
    var applicationStorage: ApplicationStorage { get }
    /// Хранилище настроек
    var settingStorage: ApplicationSettings { get }
    /// Менеджер работы с БД
    var coreDataManager: CoreDataManager { get }

    var musicPlayerManager: MusicPlayerManager { get }

    var aiManager: AIManager { get }
}

final class DefaultServicesProvider: ServicesProvider {

    var applicationStorage: ApplicationStorage
    var settingStorage: ApplicationSettings
    var coreDataManager: CoreDataManager
    var musicPlayerManager: MusicPlayerManager
    var aiManager: AIManager

    static let shared = DefaultServicesProvider()
    private let userDefaultStorage = UserDefaultStorage.shared
    private let coreDataService: CoreDataService
    private init() {
        coreDataService = CoreDataService(model: "DataModel")
        coreDataManager = DefaultCoreDataManager(database: coreDataService)
        applicationStorage = userDefaultStorage
        settingStorage = userDefaultStorage
        musicPlayerManager = DefaultMusicPlayerManager(
            settingsStorage: userDefaultStorage,
            musicPlayer: DefaultMusicPlayer()
        )
        aiManager = DefaultAIManager(client: DefaultAIClient(token: ApplicationConstants.key))
    }
}
