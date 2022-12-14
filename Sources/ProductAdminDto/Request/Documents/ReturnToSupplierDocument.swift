//
//  ReturnToSupplierDocument.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 18.11.2022.
//

import Foundation

public struct ReturnToSupplierDocumentDto: Codable {
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

	public let isOnSale: Bool
	public let isOnVat: Bool
	public let onSale: Bool
	public let onVat: Bool

	public let stockId: UUID
	public let userId: UUID
	public let rows: [ReturnToSupplierDocumentRowDto]

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
		isOnSale: Bool,
		isOnVat: Bool,
		onSale: Bool,
		onVat: Bool,
		stockId: UUID,
		userId: UUID,
		rows: [ReturnToSupplierDocumentRowDto]
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
		self.isOnSale = isOnSale
		self.isOnVat = isOnVat
		self.onSale = onSale
		self.onVat = onVat
		self.stockId = stockId
		self.userId = userId
		self.rows = rows
	}
}

public struct ReturnToSupplierDocumentRowDto: Codable {
	// MARK: - Stored properties
	public let id: UUID?
	public let productId: UUID
	public let optionValueId: UUID?
	public let unit: String
	public let сoeff: Double
	public let quantity: Double
	public let price: Double
	public let amount: Double
	public let taxSale: Double
	public let taxVat: Double

	// MARK: - Init
	public init(
		id: UUID? = nil,
		productId: UUID,
		optionValueId: UUID? = nil,
		unit: String,
		сoeff: Double,
		quantity: Double,
		price: Double,
		amount: Double,
		taxSale: Double,
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
		self.taxSale = taxSale
		self.taxVat = taxVat
	}
}
