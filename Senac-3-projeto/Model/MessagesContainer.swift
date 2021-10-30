//
//  MessagesContainer.swift
//  Senac-3-projeto
//
//  Created by Pedro Rodrigues on 30/10/21.
//

import Foundation

struct MessagesContainer {
    let messages = [
        Message(
            content: "Bom dia",
            sender: UsersContainer.users.first!,
            receiver: UsersContainer.users.last!,
            sentAt: Date(),
            status: .read
        ),
        Message(
            content: "E aí",
            sender: UsersContainer.users.last!,
            receiver: UsersContainer.users.first!,
            sentAt: Date().addingTimeInterval(120),
            status: .read
        ),
        Message(
            content: "Vai ter aula hoje?",
            sender: UsersContainer.users.first!,
            receiver: UsersContainer.users.last!,
            sentAt: Date().addingTimeInterval(120 * 2),
            status: .received
        ),
        Message(
            content: "Não sei se vou, não estou me sentindo bem",
            sender: UsersContainer.users.first!,
            receiver: UsersContainer.users.last!,
            sentAt: Date().addingTimeInterval(120 * 3),
            status: .sent
        ),
        Message(
            content: "Consegue apresentar sem mim?",
            sender: UsersContainer.users.first!,
            receiver: UsersContainer.users.last!,
            sentAt: Date().addingTimeInterval(120 * 4),
            status: .sending
        ),
    ]
}
