//
// PhoneNumberProjection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Phone number projection */
@objc public class PhoneNumberProjection: NSObject, Codable, JSONEncodable {

    public enum PhoneCountry: String, Codable, CaseIterable {
        case us = "US"
        case gb = "GB"
        case au = "AU"
    }
    public var _id: UUID
    public var userId: UUID
    public var createdAt: Date
    public var phoneNumber: String
    public var phoneCountry: PhoneCountry

    public init(_id: UUID, userId: UUID, createdAt: Date, phoneNumber: String, phoneCountry: PhoneCountry) {
        self._id = _id
        self.userId = userId
        self.createdAt = createdAt
        self.phoneNumber = phoneNumber
        self.phoneCountry = phoneCountry
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case _id = "id"
        case userId
        case createdAt
        case phoneNumber
        case phoneCountry
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: ._id)
        try container.encode(userId, forKey: .userId)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(phoneNumber, forKey: .phoneNumber)
        try container.encode(phoneCountry, forKey: .phoneCountry)
    }
}

