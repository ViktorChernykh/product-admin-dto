//
//  OptionValue.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.09.2022.
//

import Foundation
import ProductDto

public struct OptionValueListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let externalIds: [String]?
    public let optionIds: [UUID]?
    public let page: Int?
    public let per: Int?
    public let value: String?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]?,
        externalIds: [String]?,
        optionIds: [UUID]?,
        page: Int?,
        per: Int?,
        value: String?,
        createdRange: DateRangeDto?,
        updatedRange: DateRangeDto?
    ) {
        self.ids = ids
        self.externalIds = externalIds
        self.optionIds = optionIds
        self.page = page
        self.per = per
        self.value = value
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct OptionValueCreateDto: Codable {
    // MARK: - Stored properties
    public let externalId: String?
    public let image: String?
    public let optionId: UUID
    public let priceModifier: Double?
    public let priceModifierType: PriceModifierType?
    public let value: String

    // MARK: - Init
    public init(
        externalId: String?,
        image: String?,
        optionId: UUID,
        priceModifier: Double?,
        priceModifierType: PriceModifierType?,
        value: String
    ) {
        self.externalId = externalId
        self.image = image
        self.optionId = optionId
        self.priceModifier = priceModifier
        self.priceModifierType = priceModifierType
        self.value = value
    }
}

public struct OptionValueUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let image: String?
    public let optionId: UUID
    public let priceModifier: Double?
    public let priceModifierType: PriceModifierType?
    public let value: String

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String?,
        image: String?,
        optionId: UUID,
        priceModifier: Double?,
        priceModifierType: PriceModifierType?,
        value: String
    ) {
        self.id = id
        self.externalId = externalId
        self.image = image
        self.optionId = optionId
        self.priceModifier = priceModifier
        self.priceModifierType = priceModifierType
        self.value = value
    }
}

public struct OptionValueCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionValueCreateDto]

    // MARK: - Init
    public init(items: [OptionValueCreateDto]) {
        self.items = items
    }
}

public struct OptionValueUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [OptionValueUpdateDto]

    // MARK: - Init
    public init(items: [OptionValueUpdateDto]) {
        self.items = items
    }
}
