//
//  DocumentStatus.swift
//  ProductAdminDto
//
//  Created by Victor Chernykh on 10.12.2022.
//

public enum DocumentStatus: String, Codable {
	public static let schema = "document_status"
	case deleted
	case held
	case save
}
