//
//  AllIndicatorDesignView.swift
//  SSActivityIndicator
//
//  Created by shashank on 06/03/21.
//

import SwiftUI

struct AllIndicatorDesignView: View {
    var body: some View {
        VStack(spacing: 50) {
            HStack(spacing: 50) {
                Indicator1()
                    .foregroundColor(.white)
                Indicator2()
                    .foregroundColor(.white)
                Indicator3(color: .white)
                Indicator4(color: .white)
                
            }
        }
        .padding()
    }
}

struct AllIndicatorDesignView_Previews: PreviewProvider {
    static var previews: some View {
        AllIndicatorDesignView()
    }
}
