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
	public let optionName: String?
	public let optionName2: String?
	public let optionName3: String?
	public let optionName4: String?
	public let optionValueId: UUID?
	public let optionValueId2: UUID?
	public let optionValueId3: UUID?
	public let optionValueId4: UUID?
	public let optionValueName: String?
	public let optionValueName2: String?
	public let optionValueName3: String?
	public let optionValueName4: String?
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
		optionName: String?,
		optionName2: String?,
		optionName3: String?,
		optionName4: String?,
		optionValueId: UUID?,
		optionValueId2: UUID?,
		optionValueId3: UUID?,
		optionValueId4: UUID?,
		optionValueName: String?,
		optionValueName2: String?,
		optionValueName3: String?,
		optionValueName4: String?,
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
		self.optionName = optionName
		self.optionName2 = optionName2
		self.optionName3 = optionName3
		self.optionName4 = optionName4
		self.optionValueId = optionValueId
		self.optionValueId2 = optionValueId2
		self.optionValueId3 = optionValueId3
		self.optionValueId4 = optionValueId4
		self.optionValueName = optionValueName
		self.optionValueName2 = optionValueName2
		self.optionValueName3 = optionValueName3
		self.optionValueName4 = optionValueName4
		self.productId = productId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
