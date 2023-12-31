//
//  APIService.swift
//  GPT Art Generator
//
//  Created by JAESOON on 2023/12/02.
//

import Foundation

class APIService {
    let baseURL = "https://api.openai.com/v1/images/"
    let apikey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func fetchImages(with data:Data) async throws {
        guard let apiKey = apikey else { fatalError("Could not get APIKey")}
        guard let url = URL(string: baseURL + "generations") else {
            fatalError("Error: Invalid URL")
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = data
        let (data, response) = try await URLSession.shared.data(for: request)
        guard (response as? HTTPURLResponse) != nil else {
            fatalError("Error: Data Request error")
        }
        print(String(decoding: data, as: UTF8.self))
    }
}


