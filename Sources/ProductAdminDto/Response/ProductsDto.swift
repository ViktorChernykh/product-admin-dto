//
//  ProductsDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 28.03.2022.
//

import Foundation

public struct ProductsDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let currencyId: String
    public let images: [String]?
    public let isAvailableOnOrder: Bool
    public let isDesire: Bool
    public let isPayWhatYouWant: Bool
    public let likeCount: Int
    public let name: String
    public let oldPrice: Double?
    public let inStock: Bool
    public let price: Double?
    public let siteColor: String?
    public let sku: String?
    public let subtitle: String?
    public let unit: String
    public let vendorId: UUID?
    public let vendorName: String?

    // MARK: - Init
    public init(
        id: UUID,
        currencyId: String,
        images: [String]? = nil,
        isAvailableOnOrder: Bool,
        isDesire: Bool,
        isPayWhatYouWant: Bool,
        likeCount: Int,
        name: String,
        oldPrice: Double? = nil,
        inStock: Bool,
        price: Double? = nil,
        siteColor: String? = nil,
        sku: String? = nil,
        subtitle: String? = nil,
        unit: String,
        vendorId: UUID? = nil,
        vendorName: String? = nil
    ) {
        self.id = id
        self.currencyId = currencyId
        self.images = images
        self.isAvailableOnOrder = isAvailableOnOrder
        self.isDesire = isDesire
        self.isPayWhatYouWant = isPayWhatYouWant
        self.likeCount = likeCount
        self.name = name
        self.oldPrice = oldPrice
        self.inStock = inStock
        self.price = price
        self.siteColor = siteColor
        self.sku = sku
        self.subtitle = subtitle
        self.unit = unit
        self.vendorId = vendorId
        self.vendorName = vendorName
    }
}
