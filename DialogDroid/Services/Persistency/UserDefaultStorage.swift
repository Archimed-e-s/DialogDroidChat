import Foundation
final class UserDefaultStorage {
    static let shared = UserDefaultStorage()
    private let userDefaults = UserDefaults.standard
    private init() {
        if !isLaunchingBefore {
            registeredDefaultSettings()
        }
    }
    private func registeredDefaultSettings() {
        let values: [String: Any] = [
            ApplicationSettingsKeys.isMusicOn: true,
            ApplicationSettingsKeys.selectedMusicIndex: 3
        ]
        values.forEach({
            userDefaults.set($0.value, forKey: $0.key)
        })
    }
}

// MARK: - ApplicationStorage

extension UserDefaultStorage: ApplicationStorage {
    private enum ApplicationStorageKeys {
        static let isLaunchedBefore = Bundle.mainBundleIdentifier + ".isLaunchedBefore"
    }
    var isLaunchingBefore: Bool {
        get { userDefaults.bool(forKey: ApplicationStorageKeys.isLaunchedBefore) }
        set { userDefaults.set(newValue, forKey: ApplicationStorageKeys.isLaunchedBefore) }
    }
}

// MARK: - ApplicationStorage

extension UserDefaultStorage: ApplicationSettings {
    private enum ApplicationSettingsKeys {
        static let isMusicOn = Bundle.mainBundleIdentifier + ".isMusicOn"
        static let selectedMusicIndex = Bundle.mainBundleIdentifier + ".selectedMusicIndex"
    }
    var isMusicOn: Bool {
        get { userDefaults.bool(forKey: ApplicationSettingsKeys.isMusicOn) }
        set { userDefaults.set(newValue, forKey: ApplicationSettingsKeys.isMusicOn) }
    }
    var selectedMusicIndex: Int {
        get { userDefaults.integer(forKey: ApplicationSettingsKeys.selectedMusicIndex) }
        set { userDefaults.set(newValue, forKey: ApplicationSettingsKeys.selectedMusicIndex) }
    }
}
