//
//  OptionTranslate.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 31.08.2022.
//

import Foundation
import ProductDto

public struct OptionTranslateListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let langs: [String]?
    public let optionIds: [UUID]?
    public let page: Int?
    public let per: Int?
    public let translatedName: String?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]?,
        langs: [String]?,
        optionIds: [UUID]?,
        page: Int?,
        per: Int?,
        translatedName: String?,
        createdRange: DateRangeDto?,
        updatedRange: DateRangeDto?
    ) {
        self.ids = ids
        self.langs = langs
        self.optionIds = optionIds
        self.page = page
        self.per = per
        self.translatedName = translatedName
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct OptionTranslateCreateDto: Codable {
    // MARK: - Stored properties
    public let lang: String
    public let translatedName: String
    public let optionId: UUID

    // MARK: - Init
    public init(
        lang: String,
        translatedName: String,
        optionId: UUID
    ) {
        self.lang = lang
        self.translatedName = translatedName
        self.optionId = optionId
    }
}

public struct OptionTranslateUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let lang: String
    public let translatedName: String
    public let optionId: UUID

    // MARK: - Init
    public init(
        id: UUID,
        lang: String,
        translatedName: String,
        optionId: UUID
    ) {
        self.id = id
        self.lang = lang
        self.translatedName = translatedName
        self.optionId = optionId
    }
}

public struct OptionTranslateCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionTranslateCreateDto]

    // MARK: - Init
    public init(items: [OptionTranslateCreateDto]) {
        self.items = items
    }
}

public struct OptionTranslateUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionTranslateUpdateDto]

    // MARK: - Init
    public init(items: [OptionTranslateUpdateDto]) {
        self.items = items
    }
}
