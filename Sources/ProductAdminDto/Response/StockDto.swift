//
//  StockDto.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 18.11.2022.
//

import Foundation

public struct StockDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let description: String?
	public let name: String
	public let createdAt: Date
	public let updatedAt: Date?

	public enum CodingKeys: String, CodingKey {
		case id
		case externalId
		case description = "stockDescription"
		case name = "stockName"
		case createdAt
		case updatedAt
	}

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String? = nil,
		description: String?,
		name: String,
		createdAt: Date,
		updatedAt: Date?
	) {
		self.id = id
		self.externalId = externalId
		self.description = description
		self.name = name
		self.createdAt = createdAt
		self.updatedAt = updatedAt
	}
}
