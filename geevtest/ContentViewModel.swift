//
//  ContentViewModel.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var header: Header?
    @Published var body: Body?
    
    init() {
        do {
            let screenModel = try JSONDecoder().decode(ScreenModel.self, from: jsonData)
            self.header = screenModel.screen.structure.header
            self.body = screenModel.screen.structure.body
        } catch {
            print("Failed to decode JSON: \(error)")
        }
    }
}
