//
//  RemoteImage.swift
//  PixelCouch
//
//  Created by Marian Nasturica on 13.04.2024.
//

import SwiftUI
import Kingfisher

struct RemoteImageView: View {

    var url: URL?
    var contentMode: SwiftUI.ContentMode = .fill

    private var resource: Resource? {
        guard let url = url else { return nil }
        return KF.ImageResource(downloadURL: url, cacheKey: url.absoluteString)
    }

    var body: some View {
        GeometryReader { proxy in
            if let resource = resource {
                KFImage(source: .network(resource))
                    .resizable()
                    .aspectRatio(contentMode: contentMode)
                    .frame(width: proxy.size.width, height: proxy.size.height)
                    .contentShape(Rectangle())
            }
        }
    }

}
