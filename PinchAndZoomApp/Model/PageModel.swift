//
//  PageModel.swift
//  PinchAndZoomApp
//
//  Created by stamoulis nikolaos on 26/6/24.
//

import Foundation


struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
