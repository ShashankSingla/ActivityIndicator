//
//  AllIndicatorDesignView.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct AllIndicatorDesignView: View {
    var body: some View {
        VStack {
            HStack(spacing: 50) {
                Indicator1()
                    .foregroundColor(.blue)
                Indicator2()
                    .foregroundColor(.blue)
                Indicator3(color: .blue)
            }
            Spacer()
        }
        .padding()
    }
}

struct AllIndicatorDesignView_Previews: PreviewProvider {
    static var previews: some View {
        AllIndicatorDesignView()
    }
}
