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
                    print(Bundle.main.infoDictionary?["API_KEY"] as? String)
                }
        }
    }
}

