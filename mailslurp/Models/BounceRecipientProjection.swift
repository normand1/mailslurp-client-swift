//
// BounceRecipientProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Bounced recipient */
@objc public class BounceRecipientProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID?
    public var status: String?
    public var sentEmailId: UUID?
    public var createdAt: Date
    public var recipient: String
    public var action: String?

    public init(_id: UUID? = nil, status: String? = nil, sentEmailId: UUID? = nil, createdAt: Date, recipient: String, action: String? = nil) {
        self._id = _id
        self.status = status
        self.sentEmailId = sentEmailId
        self.createdAt = createdAt
        self.recipient = recipient
        self.action = action
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case status
        case sentEmailId
        case createdAt
        case recipient
        case action
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(sentEmailId, forKey: .sentEmailId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(recipient, forKey: .recipient)
        try container.encodeIfPresent(action, forKey: .action)
    }
}
