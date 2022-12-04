//
//  SpeakerViewModel.swift
//  Quotes
//
//  Created by Roja on 01/12/22.
//

import Foundation

struct SpeakerViewModel {
    var speakers: [SpeakerModel]?
    
    mutating func fetchSpeakers() {
        speakers = SpeakerDataManager.getSpeakerData()
    }
    
    func getScreenTitle() -> String {
        return "Speakers"
    }
    
    mutating func getSpeakerCount() -> Int {
        fetchSpeakers()
        if let speakers = speakers {
            return speakers.count
        }
        return 0
    }
    
    func getSpeakerAt(index: Int) -> SpeakerModel? {
        if let speakers = speakers {
            return speakers[index]
        }
        return nil
    }
}
