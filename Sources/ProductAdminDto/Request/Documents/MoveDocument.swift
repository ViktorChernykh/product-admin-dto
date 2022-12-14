//
//  MoveDocument.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 18.11.2022.
//

import Foundation

public struct MoveDocumentDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let author: String
	public let date: Date
	public let documentId: String
	public let externalId: String?
	public let status: DocumentStatus
	
	public let fromStockId: UUID
	public let toStockId: UUID
	public let rows: [MoveDocumentRowDto]

	// MARK: - Init
	public init(
		id: UUID? = nil,
		author: String,
		date: Date,
		documentId: String,
		externalId: String? = nil,
		status: DocumentStatus,
		fromStockId: UUID,
		toStockId: UUID,
		rows: [MoveDocumentRowDto]
	) {
		self.id = id
		self.author = author
		self.date = date
		self.documentId = documentId
		self.externalId = externalId
		self.status = status
		self.fromStockId = fromStockId
		self.toStockId = toStockId
		self.rows = rows
	}
}

public struct MoveDocumentRowDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let productId: UUID
	public let optionValueId: UUID?
	public let unit: String
	public let сoeff: Double
	public let quantity: Double

	// MARK: - Init
	public init(
		id: UUID? = nil,
		productId: UUID,
		optionValueId: UUID? = nil,
		unit: String,
		сoeff: Double,
		quantity: Double
	) {
		self.id = id
		self.productId = productId
		self.optionValueId = optionValueId
		self.unit = unit
		self.сoeff = сoeff
		self.quantity = quantity
	}
}
