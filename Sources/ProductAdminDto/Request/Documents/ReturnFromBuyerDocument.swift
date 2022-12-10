//
//  ReturnFromBuyerDocument.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 18.11.2022.
//

import Foundation

public struct ReturnFromBuyerDocumentDto: Codable {
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
	public let rows: [ReturnFromBuyerDocumentRowDto]

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
		rows: [ReturnFromBuyerDocumentRowDto]
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

public struct ReturnFromBuyerDocumentRowDto: Codable {
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
	public let costPrice: Double
	public let costVat: Double

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
		taxSale: Double,
		taxVat: Double,
		costPrice: Double,
		costVat: Double
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
		self.costPrice = costPrice
		self.costVat = costVat
	}
}
