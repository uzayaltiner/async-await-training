//
//  Manager.swift
//  training
//
//  Created by Uzay Altıner on 13.05.2023.
//

import Foundation

final class Manager: ObservableObject {
    func fetchData() async -> [String] {
        return ["One", "Two", "Three", "Four", "Five"]
    }

    func upperCaseData(data: [String]) async -> [String] {
        var convertedData = [String]()
        data.forEach { str in
            convertedData.append(str.uppercased())
        }
        return convertedData
    }
    
    func sortData(data: [String]) async -> [String] {
        return data.sorted(by: <)
    }
    
    func reverseData(data: [String]) async -> [String] {
        data.reversed()
    }
}
