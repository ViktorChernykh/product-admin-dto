//
//  Vendor.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 21.03.2022.
//

import Foundation
import ProductDto

public struct VendorListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let externalIds: [String]?
    public let name: String?
    public let page: Int?
    public let per: Int?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]? = nil,
        externalIds: [String]? = nil,
        name: String? = nil,
        page: Int? = nil,
        per: Int? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.ids = ids
        self.externalIds = externalIds
        self.name = name
        self.page = page
        self.per = per
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct VendorCreateDto: Codable {
    // MARK: - Stored properties
    public let externalId: String?
    public let image: String?
    public let name: String
    public let description: String?

    // MARK: - Init
    public init(
        externalId: String? = nil,
        image: String? = nil,
        name: String,
        description: String? = nil
    ) {
        self.externalId = externalId
        self.image = image
        self.name = name
        self.description = description
    }
}

public struct VendorUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let externalId: String?
    public let image: String?
    public let name: String
    public let description: String?

    // MARK: - Init
    public init(
        id: UUID,
        externalId: String? = nil,
        image: String? = nil,
        name: String,
        description: String? = nil
    ) {
        self.id = id
        self.externalId = externalId
        self.image = image
        self.name = name
        self.description = description
    }
}

public struct VendorCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [VendorCreateDto]

    // MARK: - Init
    public init(items: [VendorCreateDto]) {
        self.items = items
    }
}

public struct VendorUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [VendorUpdateDto]

    // MARK: - Init
    public init(items: [VendorUpdateDto]) {
        self.items = items
    }
}
