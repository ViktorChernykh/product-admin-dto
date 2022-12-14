//
//  PostingDocument.swift
//  ProductDto
//
//  Created by Victor Chernykh on 09.12.2022.
//

import Foundation

public struct PostingDocumentDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let author: String
	public let date: Date
	public let documentId: String
	public let externalId: String?
	public let status: DocumentStatus
	// currency
	public let currency: String
	public let rate: Double
	public let multiplicity: Double

	public let stockId: UUID
	public let rows: [PostingDocumentRowDto]

	// MARK: - Init
	public init(
		id: UUID? = nil,
		author: String,
		date: Date,
		documentId: String,
		externalId: String? = nil,
		status: DocumentStatus,
		currency: String,
		rate: Double,
		multiplicity: Double,
		stockId: UUID,
		rows: [PostingDocumentRowDto]
	) {
		self.id = id
		self.author = author
		self.date = date
		self.documentId = documentId
		self.externalId = externalId
		self.status = status
		self.currency = currency
		self.rate = rate
		self.multiplicity = multiplicity
		self.stockId = stockId
		self.rows = rows
	}
}

public struct PostingDocumentRowDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let productId: UUID
	public let optionValueId: UUID?
	public let unit: String
	public let сoeff: Double
	public let quantity: Double
	public let price: Double
	public let amount: Double

	// MARK: - Init
	public init(
		id: UUID? = nil,
		productId: UUID,
		optionValueId: UUID? = nil,
		unit: String,
		сoeff: Double,
		quantity: Double,
		price: Double,
		amount: Double
	) {
		self.id = id
		self.productId = productId
		self.optionValueId = optionValueId
		self.unit = unit
		self.сoeff = сoeff
		self.quantity = quantity
		self.price = price
		self.amount = amount
	}
}
