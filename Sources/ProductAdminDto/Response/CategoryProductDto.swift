//
//  CategoryProductDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 13.04.2022.
//

import Foundation

public struct CategoryProductDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let categoryId: UUID
	public let productId: UUID
	public let createdAt: Date
	public let updatedAt: Date?

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		categoryId: UUID,
		productId: UUID,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.categoryId = categoryId
		self.productId = productId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
