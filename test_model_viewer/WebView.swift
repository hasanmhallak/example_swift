//
//  WebView.swift
//  test_model_viewer
//
//  Created by Hasan M. Hallak on 16/03/2024.
//

import WebKit
import SwiftUI

class WebViewViewModel: ObservableObject {
    var webView: WKWebView?

    func runJS(script: String) {
        self.webView?.evaluateJavaScript(script)
    }
}


struct WebView: UIViewRepresentable {
   
    @ObservedObject var viewModel: WebViewViewModel
    @StateObject private var serverManager = WebServerManager()

    func makeUIView(context: Context) -> WKWebView {
        viewModel.webView = WKWebView()
              return viewModel.webView!
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: URL(string: "http://localhost:8080")!)
        serverManager.startServer()
        uiView.load(request)
    }
    
   
    
    
}
