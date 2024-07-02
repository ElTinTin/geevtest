//
//  SearchBarView.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    var placeholder: String

    var body: some View {
        HStack {

            TextField(placeholder, text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)

            Button(action: {
                // TODO
            }) {
                Text("Search")
            }
            .padding(.horizontal, 16)
            .transition(.move(edge: .trailing))
        }
    }
}
#Preview {
    SearchBarView(text: .constant(""), placeholder: "Search")
}
