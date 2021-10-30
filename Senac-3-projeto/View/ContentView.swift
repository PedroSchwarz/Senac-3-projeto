//
//  ContentView.swift
//  Senac-3-projeto
//
//  Created by Pedro Rodrigues on 30/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var messages = MessagesContainer().messages
    
    var body: some View {
        VStack {
            Spacer()
            
            ForEach(messages) { message in
                MessageItem(
                    user: message.sender.name.contains("Pedro") ? nil : message.sender,
                    content: message.content,
                    sentAt: dateToString(date: message.sentAt),
                    status: message.status.rawValue,
                    isLastOfGroup: isLastOfGroup(message: message)
                )
                    .padding(.bottom, isLastOfGroup(message: message) ? 20 : 0)
            }
        }
        .padding()
    }
    
    func isLastOfGroup(message: Message) -> Bool {
        let index = messages.firstIndex { $0.id == message.id }
        if let i = index {
            if i == messages.count - 1 {
                return true
            }
            
            let nextMessage = messages[i + 1]
            if nextMessage.sender.name == message.sender.name {
                return false
            } else {
                return true
            }
        } else {
            return false
        }
    }
    
    func dateToString(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh mm a"
        return formatter.string(from: date)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
