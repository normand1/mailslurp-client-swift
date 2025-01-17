//
// TrackingPixelProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Tracking pixel data */
@objc public class TrackingPixelProjection: NSObject, Codable, JSONEncodable {

    public var name: String?
    public var _id: UUID
    public var userId: UUID
    public var inboxId: UUID?
    public var sentEmailId: UUID?
    public var createdAt: Date
    public var recipient: String?
    public var seen: Bool
    public var seenAt: Date?

    public init(name: String? = nil, _id: UUID, userId: UUID, inboxId: UUID? = nil, sentEmailId: UUID? = nil, createdAt: Date, recipient: String? = nil, seen: Bool, seenAt: Date? = nil) {
        self.name = name
        self._id = _id
        self.userId = userId
        self.inboxId = inboxId
        self.sentEmailId = sentEmailId
        self.createdAt = createdAt
        self.recipient = recipient
        self.seen = seen
        self.seenAt = seenAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case _id = "id"
        case userId
        case inboxId
        case sentEmailId
        case createdAt
        case recipient
        case seen
        case seenAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encodeIfPresent(inboxId, forKey: .inboxId)
        try container.encodeIfPresent(sentEmailId, forKey: .sentEmailId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(recipient, forKey: .recipient)
        try container.encode(seen, forKey: .seen)
        try container.encodeIfPresent(seenAt, forKey: .seenAt)
    }
}

