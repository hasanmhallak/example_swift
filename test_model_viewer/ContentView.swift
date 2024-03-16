//
//  ContentView.swift
//  test_model_viewer
//
//  Created by Hasan M. Hallak on 16/03/2024.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject private var viewModel = WebViewViewModel()
    
    var body: some View {
        VStack {
                   WebView(viewModel: viewModel)
                       .edgesIgnoringSafeArea(.all)
                       
                   
            HStack {
                Button("Chair") {
                    let script = "switchSrc('Chair')";
              
                    viewModel.runJS(script: script)
                }
                Button("Canoe") {
                    let script = "switchSrc('Canoe')";
              
                    viewModel.runJS(script: script)
                }
                Button("GeoPlanter") {
                    let script = "switchSrc('GeoPlanter')";
              
                    viewModel.runJS(script: script)
                }
                Button("Mixer") {
                    let script = "switchSrc('Mixer')";
              
                    viewModel.runJS(script: script)
                }
                Button("ToyTrain") {
                    let script = "switchSrc('ToyTrain')";
              
                    viewModel.runJS(script: script)
                }
            }
               }
    }
}

  
