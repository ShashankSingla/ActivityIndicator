//
//  IndicatorStyle4.swift
//  SSActivityIndicator
//
//  Created by shashank on 07/03/21.
//

import SwiftUI

struct Indicator4: View {
    @State var startAnimation: Bool = false
    var color: Color
    @State var angle: Double = 0
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack {
            ForEach(0..<5) { index in
                Circle()
                 .fill(color)
                    .opacity(1 - Double(index) / 5)
                 .frame(width: 10, height: 10)
                 .offset(y: -20)
                 .rotationEffect(.degrees(self.startAnimation ? 360: 0))
                    .animation(Animation.easeIn(duration: 1).repeatForever(autoreverses: false).delay(Double(index) / 10))
            }
        }
        .rotationEffect(.degrees(angle))
        .animation(Animation.easeInOut(duration: 0.5))
        .frame(width: 50, height: 50)
        //.background(Color.red)
        .onReceive(timer) { input in
            self.angle += 30
        }
        .onAppear() {
            self.startAnimation = true
          
        }
    }
}


struct Indicator4_Previews: PreviewProvider {
    static var previews: some View {
        Indicator4(color: .blue)
    }
}
