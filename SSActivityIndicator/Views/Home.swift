//
//  Home.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color("bg")
                .ignoresSafeArea()
        }
        .activityIndicator(style: .style4, show: true, color: .white)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
