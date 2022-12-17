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
    public let onHand: Bool
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
        images: [String]?,
        isAvailableOnOrder: Bool,
        isDesire: Bool,
        isPayWhatYouWant: Bool,
        likeCount: Int,
        name: String,
        oldPrice: Double?,
		onHand: Bool,
        price: Double?,
        siteColor: String?,
        sku: String?,
        subtitle: String?,
        unit: String,
        vendorId: UUID?,
        vendorName: String?
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
        self.onHand = onHand
        self.price = price
        self.siteColor = siteColor
        self.sku = sku
        self.subtitle = subtitle
        self.unit = unit
        self.vendorId = vendorId
        self.vendorName = vendorName
    }
}
