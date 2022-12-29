//
//  Stock.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 18.11.2022.
//

import Foundation

public struct StockListDto: Codable {
	// MARK: - Stored properties
	public let ids: [UUID]?
	public let externalIds: [String]?
	public let isVisible: Bool?
	public let negativeBalanceAllowed: Bool?
	public let name: String?

	// MARK: - Init
	public init(
		ids: [UUID]?,
		externalIds: [String]?,
		isVisible: Bool?,
		negativeBalanceAllowed: Bool?,
		name: String?
	) {
		self.ids = ids
		self.externalIds = externalIds
		self.isVisible = isVisible
		self.negativeBalanceAllowed = negativeBalanceAllowed
		self.name = name
	}
}

public struct StockCreateDto: Codable {
	// MARK: - Stored properties
	public let externalId: String?
	public let isVisible: Bool
	public let negativeBalanceAllowed: Bool
	public let description: String?
	public let name: String

	// MARK: - Init
	public init(
		externalId: String?,
		isVisible: Bool,
		negativeBalanceAllowed: Bool,
		description: String?,
		name: String
	) {
		self.externalId = externalId
		self.isVisible = isVisible
		self.negativeBalanceAllowed = negativeBalanceAllowed
		self.description = description
		self.name = name
	}
}

public struct StockUpdateDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let externalId: String?
	public let isVisible: Bool
	public let negativeBalanceAllowed: Bool
	public let description: String?
	public let name: String

	// MARK: - Init
	public init(
		id: UUID,
		externalId: String?,
		isVisible: Bool,
		negativeBalanceAllowed: Bool,
		description: String?,
		name: String
	) {
		self.id = id
		self.externalId = externalId
		self.isVisible = isVisible
		self.negativeBalanceAllowed = negativeBalanceAllowed
		self.description = description
		self.name = name
	}
}

public struct StockCreateListDto: Codable {
	// MARK: - Stored properties
	public let items: [StockCreateDto]

	// MARK: - Init
	public init(items: [StockCreateDto]) {
		self.items = items
	}
}

public struct StockUpdateListDto: Codable {
	// MARK: - Stored properties
	public let items: [StockUpdateDto]

	// MARK: - Init
	public init(items: [StockUpdateDto]) {
		self.items = items
	}
}
