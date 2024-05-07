import Foundation

extension Bundle {
    static var mainBundleIdentifier: String {
        return main.bundleIdentifier ?? "DialogDroid"
    }
}
