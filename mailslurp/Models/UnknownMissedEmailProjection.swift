//
// UnknownMissedEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Unknown missed email projection */
@objc public class UnknownMissedEmailProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var from: String?
    public var subject: String?
    public var createdAt: Date
    public var to: [String]?

    public init(_id: UUID, from: String? = nil, subject: String? = nil, createdAt: Date, to: [String]? = nil) {
        self._id = _id
        self.from = from
        self.subject = subject
        self.createdAt = createdAt
        self.to = to
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case subject
        case createdAt
        case to
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(to, forKey: .to)
    }
}

