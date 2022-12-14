//
//  Product.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 19.03.2022.
//

import Foundation
import ProductDto

public struct ProductListDto: Codable {
    // MARK: - Stored properties
    public let ids: [UUID]?
    public let attributeValueIds: [UUID]?
    public let categoryIds: [UUID]?
    public let discountPercentRange: DoubleRangeDto?
    public let externalIds: [String]?
    public let isAvailableOnOrder: Bool?
    public let isGiftCard: Bool?
    public let isHasOptions: Bool?
    public let isNoDiscounts: Bool?
    public let isPayWhatYouWant: Bool?
    public let isShippingRequired: Bool?
    public let isShowOnFrontPage: Bool?
    public let isUnlimited: Bool?
    public let isUseLikes: Bool?
    public let isVisible: Bool?
    public let lang: String?
    public let likeCount: IntRangeDto?
    public let name: String?
    public let onHand: Bool?
    public let page: Int?
    public let per: Int?
    public let priceRange: DoubleRangeDto?
    public let quantityRange: DoubleRangeDto?
    public let skus: [String]?
    public let sortBy: [String: String]?     //["name": "asc"]
    public let unit: String?
    public let vendorIds: [UUID]?
    public let warningLimitRange: DoubleRangeDto?
    public let weightRange: DoubleRangeDto?
    public let createdRange: DateRangeDto?
    public let updatedRange: DateRangeDto?

    // MARK: - Init
    public init(
        ids: [UUID]? = nil,
        attributeValueIds: [UUID]? = nil,
        categoryIds: [UUID]? = nil,
        discountPercentRange: DoubleRangeDto? = nil,
        externalIds: [String]? = nil,
        isAvailableOnOrder: Bool? = nil,
        isGiftCard: Bool? = nil,
        isHasOptions: Bool? = nil,
        isNoDiscounts: Bool? = nil,
        isPayWhatYouWant: Bool? = nil,
        isShippingRequired: Bool? = nil,
        isShowOnFrontPage: Bool? = nil,
        isUnlimited: Bool? = nil,
        isUseLikes: Bool? = nil,
        isVisible: Bool? = nil,
        lang: String? = nil,
        likeCount: IntRangeDto? = nil,
        name: String? = nil,
        onHand: Bool? = nil,
        page: Int? = nil,
        per: Int? = nil,
        priceRange: DoubleRangeDto? = nil,
        quantityRange: DoubleRangeDto? = nil,
        skus: [String]? = nil,
        sortBy: [String: String]? = nil,     //["name": "asc"]
        unit: String? = nil,
        vendorIds: [UUID]? = nil,
        warningLimitRange: DoubleRangeDto? = nil,
        weightRange: DoubleRangeDto? = nil,
        createdRange: DateRangeDto? = nil,
        updatedRange: DateRangeDto? = nil
    ) {
        self.ids = ids
        self.attributeValueIds = attributeValueIds
        self.categoryIds = categoryIds
        self.discountPercentRange = discountPercentRange
        self.externalIds = externalIds
        self.isAvailableOnOrder = isAvailableOnOrder
        self.isGiftCard = isGiftCard
        self.isHasOptions = isHasOptions
        self.isNoDiscounts = isNoDiscounts
        self.isPayWhatYouWant = isPayWhatYouWant
        self.isShippingRequired = isShippingRequired
        self.isShowOnFrontPage = isShowOnFrontPage
        self.isUnlimited = isUnlimited
        self.isUseLikes = isUseLikes
        self.isVisible = isVisible
        self.lang = lang
        self.likeCount = likeCount
        self.name = name
        self.onHand = onHand
        self.page = page
        self.per = per
        self.priceRange = priceRange
        self.quantityRange = quantityRange
        self.skus = skus
        self.sortBy = sortBy     //["name": "asc"]
        self.unit = unit
        self.vendorIds = vendorIds
        self.warningLimitRange = warningLimitRange
        self.weightRange = weightRange
        self.createdRange = createdRange
        self.updatedRange = updatedRange
    }
}

public struct ProductCreateDto: Codable {
    // MARK: - Stored properties
    public let categoryIds: [UUID]?
    public let currencyId: String
    public let dimensions: DimensionsDto?
    public let externalId: String?
    public let isAvailableOnOrder: Bool
    public let isGiftCard: Bool
    public let isHasOptions: Bool
    public let isNoDiscounts: Bool
    public let isPayWhatYouWant: Bool
    public let isShippingRequired: Bool
    public let isShowOnFrontPage: Bool
    public let isUnlimited: Bool
    public let isUseLikes: Bool
    public let isVisible: Bool
    public let marketCategory: Int
    public let maxDiscountPercent: Double?
    public let medias: [String]?
    public let name: String
    public let oldPrice: Double?
    public let price: Double?
    public let privateComment: String?
    public let rateOnFrontPage: Int?
    public let relatedProducts: [UUID]?
    public let seoData: SeoDto?
    public let siteColor: String?
    public let sku: String?
    public let specification: String?
    public let subtitle: String?
    public let taxes: TaxesDto?
    public let unit: String
    public let vendorId: UUID?
    public let warningMin: Double?
    public let weight: Double?
    public let wholesalePrices: [String: Double]?

    // MARK: - Init
    public init(
        categoryIds: [UUID]? = nil,
        currencyId: String,
        dimensions: DimensionsDto? = nil,
        externalId: String? = nil,
        isAvailableOnOrder: Bool,
        isGiftCard: Bool,
        isHasOptions: Bool,
        isNoDiscounts: Bool,
        isPayWhatYouWant: Bool,
        isShippingRequired: Bool,
        isShowOnFrontPage: Bool,
        isUnlimited: Bool,
        isUseLikes: Bool,
        isVisible: Bool,
        marketCategory: Int,
        maxDiscountPercent: Double? = nil,
        medias: [String]? = nil,
        name: String,
        oldPrice: Double? = nil,
        price: Double? = nil,
        privateComment: String? = nil,
        rateOnFrontPage: Int? = nil,
        relatedProducts: [UUID]? = nil,
        seoData: SeoDto? = nil,
        siteColor: String? = nil,
        sku: String? = nil,
        specification: String? = nil,
        subtitle: String? = nil,
        taxes: TaxesDto? = nil,
        unit: String,
        vendorId: UUID? = nil,
        warningMin: Double? = nil,
        weight: Double? = nil,
        wholesalePrices: [String: Double]? = nil
    ) {
        self.categoryIds = categoryIds
        self.currencyId = currencyId
        self.dimensions = dimensions
        self.externalId = externalId
        self.isAvailableOnOrder = isAvailableOnOrder
        self.isGiftCard = isGiftCard
        self.isHasOptions = isHasOptions
        self.isNoDiscounts = isNoDiscounts
        self.isPayWhatYouWant = isPayWhatYouWant
        self.isShippingRequired = isShippingRequired
        self.isShowOnFrontPage = isShowOnFrontPage
        self.isUnlimited = isUnlimited
        self.isUseLikes = isUseLikes
        self.isVisible = isVisible
        self.marketCategory = marketCategory
        self.maxDiscountPercent = maxDiscountPercent
        self.medias = medias
        self.name = name
        self.oldPrice = oldPrice
        self.price = price
        self.privateComment = privateComment
        self.rateOnFrontPage = rateOnFrontPage
        self.relatedProducts = relatedProducts
        self.seoData = seoData
        self.siteColor = siteColor
        self.sku = sku
        self.specification = specification
        self.subtitle = subtitle
        self.taxes = taxes
        self.unit = unit
        self.vendorId = vendorId
        self.warningMin = warningMin
        self.weight = weight
        self.wholesalePrices = wholesalePrices
    }
}

public struct ProductUpdateDto: Codable {
    // MARK: - Stored properties
    public let id: UUID
    public let categoryIds: [UUID]?
    public let currencyId: String
    public let dimensions: DimensionsDto?
    public let externalId: String?
    public let isAvailableOnOrder: Bool
    public let isGiftCard: Bool
    public let isHasOptions: Bool
    public let isNoDiscounts: Bool
    public let isPayWhatYouWant: Bool
    public let isShippingRequired: Bool
    public let isShowOnFrontPage: Bool
    public let isUnlimited: Bool
    public let isUseLikes: Bool
    public let isVisible: Bool
    public let marketCategory: Int
    public let maxDiscountPercent: Double?
    public let medias: [String]?
    public let name: String
    public let oldPrice: Double?
    public let price: Double?
    public let privateComment: String?
    public let rateOnFrontPage: Int?
    public let relatedProducts: [UUID]?
    public let seoData: SeoDto?
    public let siteColor: String?
    public let sku: String?
    public let specification: String?
    public let subtitle: String?
    public let taxes: TaxesDto?
    public let unit: String
    public let vendorId: UUID?
    public let warningMin: Double?
    public let weight: Double?
    public let wholesalePrices: [String: Double]?

    // MARK: - Init
    public init(
        id: UUID,
        categoryIds: [UUID]? = nil,
        currencyId: String,
        dimensions: DimensionsDto? = nil,
        externalId: String? = nil,
        isAvailableOnOrder: Bool,
        isGiftCard: Bool,
        isHasOptions: Bool,
        isNoDiscounts: Bool,
        isPayWhatYouWant: Bool,
        isShippingRequired: Bool,
        isShowOnFrontPage: Bool,
        isUnlimited: Bool,
        isUseLikes: Bool,
        isVisible: Bool,
        marketCategory: Int,
        maxDiscountPercent: Double? = nil,
        medias: [String]? = nil,
        name: String,
        oldPrice: Double? = nil,
        price: Double? = nil,
        privateComment: String? = nil,
        rateOnFrontPage: Int? = nil,
        relatedProducts: [UUID]? = nil,
        seoData: SeoDto? = nil,
        siteColor: String? = nil,
        sku: String? = nil,
        specification: String? = nil,
        subtitle: String? = nil,
        taxes: TaxesDto? = nil,
        unit: String,
        vendorId: UUID? = nil,
        warningMin: Double? = nil,
        weight: Double? = nil,
        wholesalePrices: [String: Double]? = nil
    ) {
        self.id = id
        self.categoryIds = categoryIds
        self.currencyId = currencyId
        self.dimensions = dimensions
        self.externalId = externalId
        self.isAvailableOnOrder = isAvailableOnOrder
        self.isGiftCard = isGiftCard
        self.isHasOptions = isHasOptions
        self.isNoDiscounts = isNoDiscounts
        self.isPayWhatYouWant = isPayWhatYouWant
        self.isShippingRequired = isShippingRequired
        self.isShowOnFrontPage = isShowOnFrontPage
        self.isUnlimited = isUnlimited
        self.isUseLikes = isUseLikes
        self.isVisible = isVisible
        self.marketCategory = marketCategory
        self.maxDiscountPercent = maxDiscountPercent
        self.medias = medias
        self.name = name
        self.oldPrice = oldPrice
        self.price = price
        self.privateComment = privateComment
        self.rateOnFrontPage = rateOnFrontPage
        self.relatedProducts = relatedProducts
        self.seoData = seoData
        self.siteColor = siteColor
        self.sku = sku
        self.specification = specification
        self.subtitle = subtitle
        self.taxes = taxes
        self.unit = unit
        self.vendorId = vendorId
        self.warningMin = warningMin
        self.weight = weight
        self.wholesalePrices = wholesalePrices
    }
}

public struct ProductCreateListDto: Codable {
    // MARK: - Stored properties
    public let items: [ProductCreateDto]

    // MARK: - Init
    public init(items: [ProductCreateDto]) {
        self.items = items
    }
}

public struct ProductUpdateListDto: Codable {
    // MARK: - Stored properties
    public let items: [ProductUpdateDto]

    // MARK: - Init
    public init(items: [ProductUpdateDto]) {
        self.items = items
    }
}
