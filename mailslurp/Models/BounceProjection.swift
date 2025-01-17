//
// BounceProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Bounced email event */
@objc public class BounceProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID?
    public var sender: String
    public var subject: String?
    public var createdAt: Date
    public var bounceType: String?
    public var bounceMta: String?

    public init(_id: UUID? = nil, sender: String, subject: String? = nil, createdAt: Date, bounceType: String? = nil, bounceMta: String? = nil) {
        self._id = _id
        self.sender = sender
        self.subject = subject
        self.createdAt = createdAt
        self.bounceType = bounceType
        self.bounceMta = bounceMta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case sender
        case subject
        case createdAt
        case bounceType
        case bounceMta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(_id, forKey: ._id)
        try container.encode(sender, forKey: .sender)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(bounceType, forKey: .bounceType)
        try container.encodeIfPresent(bounceMta, forKey: .bounceMta)
    }
}

