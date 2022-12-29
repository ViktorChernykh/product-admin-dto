//
//  ProductOnHand.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 26.12.2022.
//

import Foundation

public struct ProductOnHandChangeDto: Codable {
	// MARK: - Stored properties
	public let optionValueHeaderPivotId: UUID?
	public let productId: UUID
	public let quantity: Double

	// MARK: - Init
	public init(
		optionValueHeaderPivotId: UUID?,
		productId: UUID,
		quantity: Double
	) {
		self.optionValueHeaderPivotId = optionValueHeaderPivotId
		self.productId = productId
		self.quantity = quantity
	}
}

public struct ProductOnHandChangeListDto: Codable {
	// MARK: - Stored properties
	public let documentId: UUID
	public let isPlus: Bool
	public let items: [ProductOnHandChangeDto]
	public let stockId: UUID

	// MARK: - Init
	public init(
		documentId: UUID,
		isPlus: Bool,
		items: [ProductOnHandChangeDto],
		stockId: UUID
	) {
		self.documentId = documentId
		self.isPlus = isPlus
		self.items = items
		self.stockId = stockId
	}
}
