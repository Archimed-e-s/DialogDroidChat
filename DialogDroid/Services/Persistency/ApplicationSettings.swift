import Foundation

protocol ApplicationSettings: AnyObject {
    var isMusicOn: Bool { get set }
    var selectedMusicIndex: Int { get set }
    var selectedRoleIndex: Int { get set }
}
