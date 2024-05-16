import AVFoundation

protocol MusicPlayer {
    func playAudio(fromURL url: URL)
    func stop()
}

final class DefaultMusicPlayer: MusicPlayer {

    private var audioPLayer: AVAudioPlayer?

    func playAudio(fromURL url: URL) {
        do {
            audioPLayer?.stop()
            audioPLayer = try AVAudioPlayer(contentsOf: url)
            audioPLayer?.numberOfLoops = -1
            audioPLayer?.prepareToPlay()
            audioPLayer?.play()
        } catch {
            print(error)
        }
    }

    func stop() {
        audioPLayer?.stop()
        audioPLayer = nil
    }
}
