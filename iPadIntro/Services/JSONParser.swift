//
//  JSONParser.swift
//  Fellows
//
//  Created by Alex Paul on 1/5/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import Foundation

class JSONParser {
    static func parseJSONFile(filename: String, type: String) -> [Fellow] {
        var fellows = [Fellow]()
        if let pathname = Bundle.main.path(forResource: filename, ofType: type) {
            guard let jsonData = FileManager.default.contents(atPath: pathname) else { fatalError("couldn't find json file") }
            do {
                let decoder = JSONDecoder()
                fellows = try decoder.decode([Fellow].self, from: jsonData)
            } catch {
                print("read json error: \(error)")
            }
        }
        return fellows.sorted{$0.name < $1.name}
    }
}
