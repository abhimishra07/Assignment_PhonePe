//
//  ViewModel.swift
//  PhonePe Assignment
//
//  Created by Admin on 29/03/22.
//

import Foundation

class ViewModel {
    let parseData = Parser()
    var moviesData : Movies?
    
    func getMovieData(completionHandler: @escaping () -> ()) {
        parseData.load {  [weak self] (movies) in
            guard let self = self else { return }
            self.moviesData = movies
            completionHandler()
        }
    }
}
