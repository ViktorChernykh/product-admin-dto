//
//  OptionValueDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 12.09.2022.
//

import Foundation
import ProductDto

public struct OptionValueDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let image: String?
	public let optionId: UUID
	public let priceModifier: Double
	public let priceModifierType: PriceModifierType
	public let value: String
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		image: String?,
		optionId: UUID,
		priceModifier: Double,
		priceModifierType: PriceModifierType,
		value: String,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.image = image
		self.optionId = optionId
		self.priceModifier = priceModifier
		self.priceModifierType = priceModifierType
		self.value = value
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
