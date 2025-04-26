import SwiftUI

struct TimerView: View {
    @ObservedObject var timerViewModel: TimerViewModel
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .opacity(0.3)
                .foregroundColor(.white)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(timerViewModel.timeRemaining) / CGFloat(timerViewModel.isWorkTime ? 25 * 60 : 5 * 60))
                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear, value: timerViewModel.timeRemaining)
            
            VStack {
                Text(timerViewModel.formattedTime)
                    .font(.system(size: 60, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                
                Text(timerViewModel.isActive ? "Running" : "Paused")
                    .font(.title3)
                    .foregroundColor(.white)
            }
        }
    }
} 
