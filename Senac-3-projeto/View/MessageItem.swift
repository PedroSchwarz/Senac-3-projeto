//
//  MessageItem.swift
//  Senac-3-projeto
//
//  Created by Pedro Rodrigues on 30/10/21.
//

import SwiftUI

struct MessageItem: View {
    var user: User?
    var content: String
    var sentAt: String
    var status: String
    var isLastOfGroup: Bool
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            if user == nil {
                Spacer(minLength: 50)
            }
            
            if user != nil && isLastOfGroup {
                Image(systemName: "arrowtriangle.left.fill")
                    .foregroundColor(.secondary)
                    .padding(.trailing, -4)
                    .rotation3DEffect(Angle(degrees: -10), axis: (x: 0, y: 0, z: 1))
            }
            
            VStack(alignment: .leading) {
                if let u = user {
                    HStack {
                        Text(u.number)
                            .foregroundColor(.green)
                        
                        Text(u.name)
                            .foregroundColor(.white)
                            .opacity(0.5)
                    }
                    .font(.footnote)
                }
                
                Text(self.content)
                
                HStack {
                    Text(self.sentAt)
                    Text(self.status)
                }
                .padding(.top, 1)
                .font(.footnote)
            }
            .foregroundColor(.white)
            .padding(8)
            .background(self.user == nil ? Color.green : Color.secondary)
            .cornerRadius(10)
            
            if user != nil {
                Spacer(minLength: 50)
            }
            
            if user == nil && isLastOfGroup {
                Image(systemName: "arrowtriangle.right.fill")
                    .foregroundColor(.green)
                    .padding(.leading, -4)
                    .rotation3DEffect(Angle(degrees: 10), axis: (x: 0, y: 0, z: 1))
            }
        }
        .padding(.top, 1)
    }
}

struct MessageItem_Previews: PreviewProvider {
    static let message = MessagesContainer().messages.first!
    
    static var previews: some View {
        MessageItem(user: nil, content: message.content, sentAt: "08:30", status: "Read", isLastOfGroup: true)
    }
}
