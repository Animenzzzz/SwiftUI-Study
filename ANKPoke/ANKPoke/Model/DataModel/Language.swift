//
//  Language.swift
//  ANKPoke
//
//  Created by Animenzzz on 2019/11/20.
//  Copyright © 2019 Animenzzz. All rights reserved.
//

import Foundation

struct Language: Codable {
    let name: String
    let url: URL

    var isCN: Bool { name == "zh-Hans" }
    var isEN: Bool { name == "en" }
}

protocol LanguageTextEntry {
    var language: Language { get }
    var text: String { get }
}

extension Array where Element: LanguageTextEntry {
    var CN: String { first { $0.language.isCN }?.text ?? EN }
    var EN: String { first { $0.language.isEN }?.text ?? "Unknown" }
}
