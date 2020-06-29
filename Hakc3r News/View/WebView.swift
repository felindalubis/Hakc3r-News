//
//  WebView.swift
//  Hakc3r News
//
//  Created by Felinda Gracia Lubis on 6/29/20.
//  Copyright © 2020 Felinda Lubis. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView : UIViewRepresentable {
    
    let urlString : String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
