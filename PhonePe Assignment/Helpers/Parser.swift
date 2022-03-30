//
//  Parser.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import Foundation
import UIKit

public class Parser {
    
    func load(completionHandler: @escaping (Movies?) -> ()) {
        if let fileLocation = Bundle.main.url(forResource:"MoviesData", withExtension: ".json") {
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode(Movies.self, from: data)
                print(dataFromJson)
                completionHandler(dataFromJson)
            }
            catch {
                print("Somthing went Wrong")
                completionHandler(nil)
            }
            
        }
    }
}
