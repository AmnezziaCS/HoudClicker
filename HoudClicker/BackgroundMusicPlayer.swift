import AVFoundation

class BackgroundMusicPlayer {
    static let shared = BackgroundMusicPlayer()
    
    var audioPlayer: AVAudioPlayer?
    
    func playMusic(filename: String, fileType: String = "mp3") {
        if let url = Bundle.main.url(forResource: filename, withExtension: fileType) {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.numberOfLoops = -1
                audioPlayer?.prepareToPlay()
                audioPlayer?.play()
            } catch {
                print("Erreur lors de la lecture de la musique : \(error.localizedDescription)")
            }
        }
    }
    
    func stopMusic() {
        audioPlayer?.stop()
    }
}
