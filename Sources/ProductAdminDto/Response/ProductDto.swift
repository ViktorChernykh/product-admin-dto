//
//  ProductDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 19.03.2022.
//

import Foundation
import ProductDto

public struct ProductDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let attributes: [AttributeForProductDto]
	public let categories: [CategoryForProductDto]
	public let currencyId: String
	public let dimensions: DimensionsDto?
	public let inStock: [ProductInStockDto]
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
	public let likeCount: Int
	public let marketCategory: Int
	public let maxDiscountPercent: Double
	public let medias: [String]?
	public let name: String
	public let oldPrice: Double?
	public let price: Double?
	public let privateComment: String?
	public let rateOnFrontPage: Int?
	public let relatedProducts: [UUID]?
	public let seo: SeoDto?
	public let siteColor: String?
	public let sku: String?
	public let specification: String?
	public let subtitle: String?
	public let taxes: TaxesDto?
	public let unit: String
	public let vendor: VendorForProductDto?
	public let warningMin: Double?
	public let weight: Double?
	public let wholesalePrices: [String: Double]?
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		attributes: [AttributeForProductDto],
		categories: [CategoryForProductDto],
		currencyId: String,
		dimensions: DimensionsDto?,
		inStock: [ProductInStockDto],
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
		likeCount: Int,
		marketCategory: Int,
		maxDiscountPercent: Double,
		medias: [String]?,
		name: String,
		oldPrice: Double?,
		price: Double?,
		privateComment: String?,
		rateOnFrontPage: Int?,
		relatedProducts: [UUID]?,
		seo: SeoDto?,
		siteColor: String?,
		sku: String?,
		specification: String?,
		subtitle: String?,
		taxes: TaxesDto?,
		unit: String,
		vendor: VendorForProductDto?,
		warningMin: Double?,
		weight: Double?,
		wholesalePrices: [String: Double]?,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.attributes = attributes
		self.categories = categories
		self.currencyId = currencyId
		self.dimensions = dimensions
		self.inStock = inStock
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
		self.likeCount = likeCount
		self.marketCategory = marketCategory
		self.maxDiscountPercent = maxDiscountPercent
		self.medias = medias
		self.name = name
		self.oldPrice = oldPrice
		self.price = price
		self.privateComment = privateComment
		self.rateOnFrontPage = rateOnFrontPage
		self.relatedProducts = relatedProducts
		self.seo = seo
		self.siteColor = siteColor
		self.sku = sku
		self.specification = specification
		self.subtitle = subtitle
		self.taxes = taxes
		self.unit = unit
		self.vendor = vendor
		self.warningMin = warningMin
		self.weight = weight
		self.wholesalePrices = wholesalePrices
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
