import Foundation
import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var timeRemaining: Int = 25 * 60 // 25 minutes in seconds
    @Published var isActive = false
    @Published var isWorkTime = true
    
    private var timer: Timer?
    
    func startTimer() {
        isActive = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            self?.updateTimer()
        }
    }
    
    func pauseTimer() {
        isActive = false
        timer?.invalidate()
        timer = nil
    }
    
    func resetTimer() {
        pauseTimer()
        timeRemaining = isWorkTime ? 25 * 60 : 5 * 60
    }
    
    private func updateTimer() {
        if timeRemaining > 0 {
            timeRemaining -= 1
        } else {
            timer?.invalidate()
            timer = nil
            isActive = false
            isWorkTime.toggle()
            timeRemaining = isWorkTime ? 25 * 60 : 5 * 60
        }
    }
    
    var formattedTime: String {
        let minutes = timeRemaining / 60
        let seconds = timeRemaining % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    var timerTitle: String {
        isWorkTime ? "Focus Time" : "Break Time"
    }
} 
