//
//  ReceiptDocument.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 09.12.2022.
//

import Foundation

public struct ReceiptDocumentDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let author: String
	public let date: Date
	public let documentId: UUID
	public let externalId: UUID?
	public let status: DocumentStatus
	// currency
	public let currency: String
	public let rate: Double
	public let multiplicity: Double

	public let stockId: UUID
	public let userId: UUID
	public let rows: [ReceiptDocumentRowDto]

	// MARK: - Init
	public init(
		id: UUID? = nil,
		author: String,
		date: Date,
		documentId: UUID,
		externalId: UUID?,
		status: DocumentStatus,
		currency: String,
		rate: Double,
		multiplicity: Double,
		stockId: UUID,
		userId: UUID,
		rows: [ReceiptDocumentRowDto]
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
		self.userId = userId
		self.rows = rows
	}
}

public struct ReceiptDocumentRowDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let productId: UUID
	public let optionValueId: UUID?
	public let unit: String
	public let сoeff: Double
	public let quantity: Double
	public let price: Double
	public let amount: Double
	public let taxSales: Double
	public let taxVat: Double

	// MARK: - Init
	public init(
		id: UUID? = nil,
		productId: UUID,
		optionValueId: UUID?,
		unit: String,
		сoeff: Double,
		quantity: Double,
		price: Double,
		amount: Double,
		taxSales: Double,
		taxVat: Double
	) {
		self.id = id
		self.productId = productId
		self.optionValueId = optionValueId
		self.unit = unit
		self.сoeff = сoeff
		self.quantity = quantity
		self.price = price
		self.amount = amount
		self.taxSales = taxSales
		self.taxVat = taxVat
	}
}
