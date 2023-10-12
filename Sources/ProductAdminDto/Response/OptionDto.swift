//
//  OptionDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 27.11.2022.
//

import Foundation
import ProductDto

public struct OptionDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let name: String
	public let isRequired: Bool
	public let optionType: OptionType
	public let order: Int
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		name: String,
		isRequired: Bool,
		optionType: OptionType,
		order: Int,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.name = name
		self.isRequired = isRequired
		self.optionType = optionType
		self.order = order
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
