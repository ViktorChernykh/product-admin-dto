//
//  Desire.swift
//  ProductDto
//
//  Created by Victor Chernykh on 01.05.2022.
//

import Foundation

public struct DesireListDto: Codable {
	// MARK: - Stored properties
	public let lang: String?
	public let page: Int?
	public let per: Int?
	public let createdRange: DateRangeDto?
	public let updatedRange: DateRangeDto?

	// MARK: - Init
	public init(
		lang: String?,
		page: Int?,
		per: Int?,
		createdRange: DateRangeDto?,
		updatedRange: DateRangeDto?
	) {
		self.lang = lang
		self.page = page
		self.per = per
		self.createdRange = createdRange
		self.updatedRange = updatedRange
	}
}
