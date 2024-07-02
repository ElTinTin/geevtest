//
//  ContentView.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//

import SwiftUI

// MARK: - Main ContentView
struct ContentView: View {
    @ObservedObject var contentViewModel = ContentViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(components: contentViewModel.header?.components ?? [])
                BodyView(sections: contentViewModel.body?.sections ?? [])
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct HeaderView: View {
    let components: [HeaderComponent]
    
    var body: some View {
        VStack {
            ForEach(components, id: \.id) { component in
                HeaderComponentView(component: component)
            }
        }
        .padding()
    }
}

// MARK: - BodyView
struct BodyView: View {
    let sections: [Section]
    
    var body: some View {
        ScrollView {
            ForEach(sections, id: \.id) { section in
                SectionView(section: section)
            }
        }
    }
}

// MARK: - SectionView
struct SectionView: View {
    let section: Section
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(section.title)
                .font(.headline)
                .padding(.top)
            ForEach(section.components, id: \.id) { component in
                BodyComponentView(component: component)
            }
        }
        .padding()
    }
}

// MARK: - HeaderComponentView
struct HeaderComponentView: View {
    let component: HeaderComponent
    
    var body: some View {
        Group {
            switch component.type {
            case .logo:
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 100)
                    .padding()
            case .search:
                SearchBarView(text: .constant(""), placeholder: component.placeholder ?? "")
            }
        }
    }
}

// MARK: - BodyComponentView
struct BodyComponentView: View {
    let component: SectionComponent
    
    var body: some View {
        Group {
            switch component.type {
            case .carrousel:
                CarrouselView(articles: ["Article 1", "Article 2", "Article 3", "Article 4", "Article 5"])
            case .news:
                NewsView(text: "News")
            }
        }
    }
}


#Preview {
    ContentView()
}
