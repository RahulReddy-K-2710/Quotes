//
//  SpeakerDataManager.swift
//  Quotes
//
//  Created by Roja on 02/12/22.
//

import Foundation

struct SpeakerDataManager  {
    static func getSpeakerData() -> [SpeakerModel] {
        let speaker1 = SpeakerModel(name: "Warren Buffett",
                               image: "buffet",
                               quotes: ["Only when the tide goes out do you discover who's been swimming naked.",
                                                   "Chains of habit are too light to be felt until they are too heavy to be broken.",
                                                   "It's far better to buy a wonderful company at a fair price than a fair company at a wonderful price.",
                                                   "Rule No.1: Never lose money. Rule No.2: Never forget rule No.1."])
        
        let speaker2 = SpeakerModel(name: "Bear Bryant",
                               image: "bear",
                               quotes: ["Show class, have pride, and display character. If you do, winning takes care of itself.",
                                                             "There's a lot of blood, sweat, and guts between dreams and success.",
                                                             "Winning isn't everything, but it sure beats anything that comes in second."])
        
        let speaker3 = SpeakerModel(name: "Plato",
                               image: "plato",
                               quotes: ["Thinking: the talking of the soul with itself.",
                                                       "Opinion is the medium between knowledge and ignorance.",
                                                       "Love is a serious mental disease.",
                                                       "A good decision is based on knowledge and not on numbers."])
        
        let speakers = [speaker1, speaker2, speaker3]
        return speakers
    }
}
