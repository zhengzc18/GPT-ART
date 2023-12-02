//
//  GPT_Art_GeneratorApp.swift
//  GPT Art Generator
//
//  Created by JAESOON on 2023/12/02.
//

import SwiftUI

@main
struct APPEntry: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    Task {
                        let sample = GenerationInput(prompt: "Man in a rowboat in the ocean in a storm similar to work by Van Gogh")
                        if let data = sample.encodedData {
                            try await APIService().fetchImages(with: data)                        }
                    }
                }
        }
    }
}

