//
//  Product.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 19.03.2022.
//

import Foundation

public struct ProductListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let attributeValueIds: [UUID]?
	public let categoryIds: [UUID]?
	public let discountPercentMax: Double?
	public let discountPercentMin: Double?
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
	public let likeCountMax: Int?
	public let likeCountMin: Int?
	public let name: String?
	public let onHand: Bool?
	public let page: Int?
	public let per: Int?
	public let priceMax: Double?
	public let priceMin: Double?
	public let quantityMax: Double?
	public let quantityMin: Double?
	public let skus: [String]?
	public let sortBy: [String: String]?	 //["name": "asc"]
	public let unit: String?
	public let vendorIds: [UUID]?
	public let warningLimitMax: Double?
	public let warningLimitMin: Double?
	public let weightMax: Double?
	public let weightMin: Double?
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		ids: [UUID]? = nil,
		attributeValueIds: [UUID]? = nil,
		categoryIds: [UUID]? = nil,
		discountPercentMax: Double? = nil,
		discountPercentMin: Double? = nil,
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
		likeCountMax: Int? = nil,
		likeCountMin: Int? = nil,
		name: String? = nil,
		onHand: Bool? = nil,
		page: Int? = nil,
		per: Int? = nil,
		priceMax: Double? = nil,
		priceMin: Double? = nil,
		quantityMax: Double? = nil,
		quantityMin: Double? = nil,
		skus: [String]? = nil,
		sortBy: [String: String]? = nil,	 //["name": "asc"]
		unit: String? = nil,
		vendorIds: [UUID]? = nil,
		warningLimitMax: Double? = nil,
		warningLimitMin: Double? = nil,
		weightMax: Double? = nil,
		weightMin: Double? = nil,
		createdFrom: Date? = nil,
		createdTo: Date? = nil,
		updatedFrom: Date? = nil,
		updatedTo: Date? = nil
	) {
		self.ids = ids
		self.attributeValueIds = attributeValueIds
		self.categoryIds = categoryIds
		self.discountPercentMax = discountPercentMax
		self.discountPercentMin = discountPercentMin
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
		self.likeCountMax = likeCountMax
		self.likeCountMin = likeCountMin
		self.name = name
		self.onHand = onHand
		self.page = page
		self.per = per
		self.priceMax = priceMax
		self.priceMin = priceMin
		self.quantityMax = quantityMax
		self.quantityMin = quantityMin
		self.skus = skus
		self.sortBy = sortBy	 //["name": "asc"]
		self.unit = unit
		self.vendorIds = vendorIds
		self.warningLimitMax = warningLimitMax
		self.warningLimitMin = warningLimitMin
		self.weightMax = weightMax
		self.weightMin = weightMin
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
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
		categoryIds: [UUID]?,
		currencyId: String,
		dimensions: DimensionsDto?,
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
		maxDiscountPercent: Double?,
		medias: [String]?,
		name: String,
		oldPrice: Double?,
		price: Double?,
		privateComment: String?,
		rateOnFrontPage: Int?,
		relatedProducts: [UUID]?,
		seoData: SeoDto?,
		siteColor: String?,
		sku: String?,
		specification: String?,
		subtitle: String?,
		taxes: TaxesDto?,
		unit: String,
		vendorId: UUID?,
		warningMin: Double?,
		weight: Double?,
		wholesalePrices: [String: Double]?
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
		categoryIds: [UUID]?,
		currencyId: String,
		dimensions: DimensionsDto?,
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
		maxDiscountPercent: Double?,
		medias: [String]?,
		name: String,
		oldPrice: Double?,
		price: Double?,
		privateComment: String?,
		rateOnFrontPage: Int?,
		relatedProducts: [UUID]?,
		seoData: SeoDto?,
		siteColor: String?,
		sku: String?,
		specification: String?,
		subtitle: String?,
		taxes: TaxesDto?,
		unit: String,
		vendorId: UUID?,
		warningMin: Double?,
		weight: Double?,
		wholesalePrices: [String: Double]?
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
