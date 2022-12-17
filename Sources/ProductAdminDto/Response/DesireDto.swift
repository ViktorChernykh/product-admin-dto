//
//  DesireDto.swift
//  ProductDto
//
//  Created by Victor Chernykh on 01.05.2022.
//

import Foundation

public struct DesireDto: Codable {
	// MARK: - Stored properties
	public let id: UUID
	public let image: String?
	public let name: String
	public let oldPrice: Double?
	public let price: Double?
	public let productId: UUID
	public let subtitle: String
	public let createdUt: Date

	// MARK: - Init
	public init(
		id: UUID,
		image: String?,
		name: String,
		oldPrice: Double?,
		price: Double?,
		productId: UUID,
		subtitle: String,
		createdUt: Date
	) {
		self.id = id
		self.image = image
		self.name = name
		self.oldPrice = oldPrice
		self.price = price
		self.productId = productId
		self.subtitle = subtitle
		self.createdUt = createdUt
	}
}
