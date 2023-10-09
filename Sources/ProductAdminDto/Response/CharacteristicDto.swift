//
//  CharacteristicDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 29.11.2022.
//

import Foundation

public struct CharacteristicDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let optionId: UUID?
	public let optionId2: UUID?
	public let optionId3: UUID?
	public let optionId4: UUID?
	public let optionValueId: UUID?
	public let optionValueId2: UUID?
	public let optionValueId3: UUID?
	public let optionValueId4: UUID?
	public let productId: UUID
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		optionId: UUID?,
		optionId2: UUID?,
		optionId3: UUID?,
		optionId4: UUID?,
		optionValueId: UUID?,
		optionValueId2: UUID?,
		optionValueId3: UUID?,
		optionValueId4: UUID?,
		productId: UUID,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionId2 = optionId2
		self.optionId3 = optionId3
		self.optionId4 = optionId4
		self.optionValueId = optionValueId
		self.optionValueId2 = optionValueId2
		self.optionValueId3 = optionValueId3
		self.optionValueId4 = optionValueId4
		self.productId = productId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
