//
//  ScreenModel.swift
//  geevtest
//
//  Created by Quentin Deschamps on 02/07/2024.
//

import Foundation

// MARK: - ComponentsType
enum HeaderComponentType: String, Codable {
    case logo
    case search
}

enum BodyComponentType: String, Codable {
    case carrousel
    case news
}

// MARK: - ScreenModel
struct ScreenModel: Codable {
    let screen: Screen
}

// MARK: - Screen
struct Screen: Codable {
    let structure: Structure
}

// MARK: - Structure
struct Structure: Codable {
    let header: Header
    let body: Body
}

// MARK: - Header
struct Header: Codable {
    let components: [HeaderComponent]
}

// MARK: - HeaderComponent
struct HeaderComponent: Codable, Hashable {
    let id: String
    let type: HeaderComponentType
    let placeholder: String?
}

// MARK: - Body
struct Body: Codable {
    let sections: [Section]
}

// MARK: - Section
struct Section: Codable {
    let id: String
    let title: String
    let components: [SectionComponent]
}

// MARK: - SectionComponent
struct SectionComponent: Codable {
    let id: String
    let type: BodyComponentType
}

let jsonData = """
{
  "screen": {
    "structure": {
      "header": {
        "components": [
          {
            "id": "logo-geev",
            "type": "logo"
          },
          {
            "id": "search",
            "type": "search",
            "placeholder": "Rechercher un objet"
          }
        ]
      },
      "body": {
        "sections": [
          {
            "id": "news",
            "title": "Les news geev",
            "components": [
              {
                "id": "actualities",
                "type": "news"
              }
            ]
          },
          {
            "id": "exclusivities",
            "title": "Section exclusivités",
            "components": [
              {
                "id": "exclusivities",
                "type": "carrousel"
              },
              {
                "id": "exclusivities-2",
                "type": "carrousel"
              }
            ]
          }
        ]
      }
    }
  }
}
""".data(using: .utf8)!
