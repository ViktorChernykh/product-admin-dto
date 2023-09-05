//
//  OptionCategoryPivotDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 22.12.2022.
//

import Foundation

public struct OptionCategoryPivotDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let categoryId: UUID
	public let optionId: UUID
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		categoryId: UUID,
		optionId: UUID,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.categoryId = categoryId
		self.optionId = optionId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
