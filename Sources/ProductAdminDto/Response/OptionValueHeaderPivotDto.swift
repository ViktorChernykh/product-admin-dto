//
//  OptionValueHeaderPivotDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 29.11.2022.
//

import Foundation

public struct OptionValueHeaderPivotDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let optionId: UUID
	public let optionValueId: UUID
	public let productId: UUID
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		optionId: UUID,
		optionValueId: UUID,
		productId: UUID,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.optionId = optionId
		self.optionValueId = optionValueId
		self.productId = productId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
