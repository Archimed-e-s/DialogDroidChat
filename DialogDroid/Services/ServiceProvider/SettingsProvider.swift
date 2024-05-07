import Foundation

protocol ServicesProvider {
    /// Хранилище параметров приложения
    var applicationStorage: ApplicationStorage { get }
    /// Хранилище настроек
    var settingStorage: ApplicationSettings { get }
}

final class DefaultServicesProvider: ServicesProvider {
    var applicationStorage: ApplicationStorage
    var settingStorage: ApplicationSettings
    static let shared = DefaultServicesProvider()
    private let userDefaultStorage = UserDefaultStorage.shared
    private init() {
        self.applicationStorage = userDefaultStorage
        self.settingStorage = userDefaultStorage
    }
}
