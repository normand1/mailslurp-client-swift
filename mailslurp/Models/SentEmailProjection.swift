//
// SentEmailProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Collection of items */
@objc public class SentEmailProjection: NSObject, Codable, JSONEncodable {

    public var _id: UUID
    public var from: String?
    public var subject: String?
    public var userId: UUID
    public var inboxId: UUID
    public var attachments: [String]
    public var createdAt: Date
    public var to: [String]
    public var bcc: [String]
    public var cc: [String]
    public var bodyMD5Hash: String?
    public var virtualSend: Bool

    public init(_id: UUID, from: String? = nil, subject: String? = nil, userId: UUID, inboxId: UUID, attachments: [String], createdAt: Date, to: [String], bcc: [String], cc: [String], bodyMD5Hash: String? = nil, virtualSend: Bool) {
        self._id = _id
        self.from = from
        self.subject = subject
        self.userId = userId
        self.inboxId = inboxId
        self.attachments = attachments
        self.createdAt = createdAt
        self.to = to
        self.bcc = bcc
        self.cc = cc
        self.bodyMD5Hash = bodyMD5Hash
        self.virtualSend = virtualSend
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case from
        case subject
        case userId
        case inboxId
        case attachments
        case createdAt
        case to
        case bcc
        case cc
        case bodyMD5Hash
        case virtualSend
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(subject, forKey: .subject)
        try container.encode(userId, forKey: .userId)
        try container.encode(inboxId, forKey: .inboxId)
        try container.encode(attachments, forKey: .attachments)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(to, forKey: .to)
        try container.encode(bcc, forKey: .bcc)
        try container.encode(cc, forKey: .cc)
        try container.encodeIfPresent(bodyMD5Hash, forKey: .bodyMD5Hash)
        try container.encode(virtualSend, forKey: .virtualSend)
    }
}

