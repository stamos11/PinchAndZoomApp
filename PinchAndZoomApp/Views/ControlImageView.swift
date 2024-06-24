//
//  ControlImageView.swift
//  PinchAndZoomApp
//
//  Created by stamoulis nikolaos on 24/6/24.
//

import SwiftUI

struct ControlImageView: View {
    
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
