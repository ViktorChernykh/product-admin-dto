//
//  AttributeGroupPivotDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 23.12.2022.
//

import Foundation

public struct AttributeGroupPivotDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let attributeId: UUID
	public let groupId: UUID
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case externalId
		case attributeId
		case groupId
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		attributeId: UUID,
		groupId: UUID,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.attributeId = attributeId
		self.groupId = groupId
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
