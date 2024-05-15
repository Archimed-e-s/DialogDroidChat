import Foundation

protocol MusicPlayerManager {
    func changePlaying(isMusicOn: Bool)
    func changeMusic(to musicItem: MusicCollection)
}
final class DefaultMusicPlayerManager: MusicPlayerManager {
    
    
    private let settingsStorage: ApplicationSettings
    private let musicPlayer: MusicPlayer
    
    init(settingsStorage: ApplicationSettings, musicPlayer: MusicPlayer) {
        self.settingsStorage = settingsStorage
        self.musicPlayer = musicPlayer
        configureMusic()
    }
    
    func changePlaying(isMusicOn: Bool) {
        if isMusicOn {
            settingsStorage.isMusicOn = true
            configureMusic()
        } else {
            musicPlayer.stop()
        }
    }
    func changeMusic(to musicItem: MusicCollection) {
        settingsStorage.selectedMusicIndex = musicItem.rawValue
        musicPlayer.stop()
        configureMusic()
    }
    
    private func configureMusic() {
        guard settingsStorage.isMusicOn,
              let musicItem = MusicCollection(rawValue: settingsStorage.selectedMusicIndex),
              let url = musicItem.fileUrl
        else { return }
        musicPlayer.playAudio(fromURL: url)
    }
    
}
