//
//  WebServer.swift
//  test_model_viewer
//
//  Created by Hasan M. Hallak on 16/03/2024.
//

import GCDWebServer

class WebServerManager: ObservableObject {
    private var webServer = GCDWebServer()

    func startServer() {
        let webServer = GCDWebServer()

        
        do {
            let subdir = Bundle.main.resourceURL!.appendingPathComponent("assets").path
            webServer.addGETHandler(forBasePath: "/", directoryPath: subdir, indexFilename: "index.html", cacheAge: 3600, allowRangeRequests: true)
            

            try webServer.start(options: ["Port": 8080, "BindToLocalhost": true])
            
        } catch {
            print("Error starting server: \(error)")
        }
    }
}

