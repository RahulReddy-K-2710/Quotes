//
//  QuotesViewModel.swift
//  Quotes
//
//  Created by Roja on 01/12/22.
//

import Foundation

struct QuotesViewModel {
    var speaker: SpeakerModel?
    
    func getScreenTitle() -> String {
        if let speaker = speaker {
            return speaker.name
        }
        return ""
    }
    
    func getQuotesCount() -> Int {
        if let speaker = speaker,
            let quotes = speaker.quotes {
            return quotes.count
        }
        return 0
    }
    
    func getQuotesAtIndex(index: Int) -> String {
        if let speaker = speaker,
            let quotes = speaker.quotes {
            return quotes[index]
        }
        return ""
    }
}
