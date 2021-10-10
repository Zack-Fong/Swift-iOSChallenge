//
//  ImageViewer.swift
//  MindFi iOS Challenge
//
//  Created by Zi Hao Fong on 10/10/21.
//

import Foundation
import SwiftUI

struct ImageViewer: View {
    @StateObject private var loader: ImageLoader
    private var width: CGFloat?
    private var height: CGFloat?

    init(url: URL, width: CGFloat?, height: CGFloat?) {
        _loader = StateObject(wrappedValue: ImageLoader(url: url))
        
        self.width = width
        self.height = height
    }

    var body: some View {
        content
            .onAppear(perform: loader.load)
    }

    private var content: some View {
        Group {
            if loader.image != nil {
                Image(uiImage: loader.image!)
                    .resizable()
                    .frame(width: width == nil ? 50.0 : width, height: height == nil ? 50.0: height)
            } else {
                Image("default profile")
                    .resizable()
                    .frame(width: width == nil ? 50.0 : width, height: height == nil ? 50.0: height)
            }
        }
    }
}
