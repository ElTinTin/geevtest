//
//  CarrouselView.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//

import SwiftUI

struct CarrouselView: View {
    var articles: [String]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(articles, id: \.self) { article in
                    Text(article)
                        .frame(width: 100, height: 100)
                        .background(.gray.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
        }
        .padding()
    }
}

#Preview {
    CarrouselView(articles: ["Article 1", "Article 2"])
}
