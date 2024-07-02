//
//  NewsView.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//

import SwiftUI

struct NewsView: View {
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(.white)
                .font(.headline)
            Text(text)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(.white)
                .font(.headline)
            Text(text)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.gray.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .foregroundStyle(.white)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    NewsView(text: "This a text demo.")
}
