//
//  RelativeTime.swift
//  Ribbit
//
//  Created by Liza Bipin on 07/11/20.
//

import Foundation

extension Date{
    
    public static func timeAgoDisplay(postTime: Double) -> String {
        
        let date = Date(timeIntervalSince1970: postTime)
        
        let formatter = RelativeDateTimeFormatter()
        return formatter.localizedString(for: date, relativeTo: Date())
    }
    
}
