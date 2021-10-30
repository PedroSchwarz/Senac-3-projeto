//
//  Message.swift
//  Senac-3-projeto
//
//  Created by Pedro Rodrigues on 30/10/21.
//

import Foundation

struct Message: Identifiable {
    var id = UUID()
    var content: String
    var sender: User
    var receiver: User
    var sentAt: Date
    var status: Status
    
    enum Status: String {
        case sending = "Sending"
        case sent = "Sent"
        case received = "Received"
        case read = "Read"
    }
}
