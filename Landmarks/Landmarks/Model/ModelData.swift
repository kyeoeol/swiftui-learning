//
//  ModelData.swift
//  Landmarks
//
//  Created by kyeoeol on 2022/06/29.
//

import Foundation

// MARK: - Data

var landmarks: [Landmark] = load("landmarkData.json")




// MARK: - Data Load

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // filename으로 file url 구하기
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    // file을 data로 변환
    do {
        data = try Data(contentsOf: file)
    }
    catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    // data decoding & return
    do {
        return try JSONDecoder().decode(T.self, from: data)
    }
    catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
