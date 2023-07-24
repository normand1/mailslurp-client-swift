//
// ExpiredInboxRecordProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Record of inbox expiration */
@objc public class ExpiredInboxRecordProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var userId: UUID
    public var emailAddress: String
    public var createdAt: Date

    public init(_id: UUID, userId: UUID, emailAddress: String, createdAt: Date) {
        self._id = _id
        self.userId = userId
        self.emailAddress = emailAddress
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case emailAddress
        case createdAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(emailAddress, forKey: .emailAddress)
        try container.encode(createdAt, forKey: .createdAt)
    }
}

