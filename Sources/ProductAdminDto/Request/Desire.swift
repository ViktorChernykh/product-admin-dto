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
	public let createdFrom: Date?
	public let createdTo: Date?

	// MARK: - Init
	public init(
		lang: String?,
		page: Int?,
		per: Int?,
		createdFrom: Date?,
		createdTo: Date?
	) {
		self.lang = lang
		self.page = page
		self.per = per
		self.createdFrom = createdFrom
		self.createdTo = createdTo
	}
}
