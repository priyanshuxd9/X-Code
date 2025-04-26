import SwiftUI

struct ContentView: View {
    @StateObject private var timerViewModel = TimerViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text(timerViewModel.timerTitle)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                TimerView(timerViewModel: timerViewModel)
                    .frame(width: 300, height: 300)
                
                HStack(spacing: 30) {
                    Button(action: {
                        timerViewModel.resetTimer()
                    }) {
                        Image(systemName: "arrow.clockwise")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    Button(action: {
                        if timerViewModel.isActive {
                            timerViewModel.pauseTimer()
                        } else {
                            timerViewModel.startTimer()
                        }
                    }) {
                        Image(systemName: timerViewModel.isActive ? "pause.fill" : "play.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
        }
    }
} 
