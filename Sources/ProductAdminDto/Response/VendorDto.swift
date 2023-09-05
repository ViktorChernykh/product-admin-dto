//
//  VendorDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 21.03.2022.
//

import Foundation

public struct VendorDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let image: String?
	public let name: String
	public let description: String?
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case externalId
		case image = "vendorImage"
		case name = "vendorName"
		case description = "vendorDescription"
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		image: String?,
		name: String,
		description: String?,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.image = image
		self.name = name
		self.description = description
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
