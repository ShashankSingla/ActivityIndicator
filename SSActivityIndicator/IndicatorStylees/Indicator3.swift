//
//  Indicator3.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct Indicator3: View {
    @State var animateBlock1: Bool = false
    @State var animateBlock2: Bool = false
    @State var animateBlock3: Bool = false
    @State var time: Int = 1
    var color: Color
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 2) {
                ForEach(0..<3, id: \.self) { index in
                    Circle()
                        .foregroundColor(self.animateBlock1 ? .black: color)
                        .frame(width: 10, height: 10)
                        .scaleEffect(self.animateBlock1 ? 1.1: 0.8)
                        .animation(Animation.easeInOut(duration: 0.5).delay(Double(index) / 10))
                }
            }
            HStack(spacing: 2) {
                ForEach(0..<3, id: \.self) { index in
                    Circle()
                        .foregroundColor(self.animateBlock2 ? .black: color)
                        .frame(width: 10, height: 10)
                        .scaleEffect(self.animateBlock2 ? 1.1: 0.8)
                        .animation(Animation.easeInOut(duration: 0.5).delay(Double(index) / 10))
                }
            }
            HStack(spacing: 2) {
                ForEach(0..<3, id: \.self) { index in
                    Circle()
                        .foregroundColor(self.animateBlock3 ? .black: color)
                        .frame(width: 10, height: 10)
                        .scaleEffect(self.animateBlock3 ? 1.1: 0.8)
                        .animation(Animation.easeInOut(duration: 0.5).delay(Double(index) / 10))
                }
            }
        }
        .onReceive(timer) { input in
            if self.time % 2 == 0 {
                self.animateBlock1 = true
                self.animateBlock2 = false
                self.animateBlock3 = false
            } else if self.time % 3 == 0 {
                self.animateBlock2 = true
                self.animateBlock1 = false
                self.animateBlock3 = false
                self.time = 0
            } else {
                self.animateBlock3 = true
                self.animateBlock2 = false
                self.animateBlock1 = false
         }
            self.time += 1
        }
        .onAppear() {
            
          
        }
    }
}


struct Indicator3_Previews: PreviewProvider {
    static var previews: some View {
        Indicator3(color: .blue)
    }
}
