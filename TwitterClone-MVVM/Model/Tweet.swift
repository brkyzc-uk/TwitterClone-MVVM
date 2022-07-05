//
//  Tweet.swift
//  TwitterClone-MVVM
//
//  Created by Burak YAZICI on 30/06/2022.
//

import Foundation

struct Tweet {
    
    let tweetID: String
    let caption: String
    let uid: String
    let likes: Int
    let retweetCount: Int
    var timestamp: Date!
    let user: User
    
    init(user: User, tweetID: String, dictionary: [String: Any]) {
        
        self.tweetID = tweetID
        self.user = user
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCount = dictionary["retweets"] as? Int ?? 0
        
        if let timestamp = dictionary["timestamp"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
}


