//
//  Media.swift
//  ProductDto
//
//  Created by Victor Chernykh on 22.03.2022.
//

import Foundation

public struct MediaListDto: Codable {
	// MARK: - Stored properties
	public let productId: UUID
	public let createdFrom: Date?
	public let createdTo: Date?
	public let updatedFrom: Date?
	public let updatedTo: Date?

	// MARK: - Init
	public init(
		productId: UUID,
		createdFrom: Date?,
		createdTo: Date?,
		updatedFrom: Date?,
		updatedTo: Date?
	) {
		self.productId = productId
		self.createdFrom = createdFrom
		self.createdTo = createdTo
		self.updatedFrom = updatedFrom
		self.updatedTo = updatedTo
	}
}

public struct MediaUpdateDto: Codable {
	// MARK: - Stored properties
	public let images: [String]
	public let productId: UUID

	// MARK: - Init
	public init(
		images: [String],
		productId: UUID
	) {
		self.images = images
		self.productId = productId
	}
}
