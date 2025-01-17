//
// UploadAttachmentBytesRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Byte array request body */
@objc public class UploadAttachmentBytesRequest: NSObject, Codable, JSONEncodable {

    public var short: Int?
    public var shortNum: NSNumber? {
        get {
            return short as NSNumber?
        }
    }
    public var char: String?
    public var int: Int?
    public var intNum: NSNumber? {
        get {
            return int as NSNumber?
        }
    }
    public var long: Int64?
    public var longNum: NSNumber? {
        get {
            return long as NSNumber?
        }
    }
    public var float: Float?
    public var floatNum: NSNumber? {
        get {
            return float as NSNumber?
        }
    }
    public var double: Double?
    public var doubleNum: NSNumber? {
        get {
            return double as NSNumber?
        }
    }
    public var direct: Bool?
    public var directNum: NSNumber? {
        get {
            return direct as NSNumber?
        }
    }
    public var readOnly: Bool?
    public var readOnlyNum: NSNumber? {
        get {
            return readOnly as NSNumber?
        }
    }

    public init(short: Int? = nil, char: String? = nil, int: Int? = nil, long: Int64? = nil, float: Float? = nil, double: Double? = nil, direct: Bool? = nil, readOnly: Bool? = nil) {
        self.short = short
        self.char = char
        self.int = int
        self.long = long
        self.float = float
        self.double = double
        self.direct = direct
        self.readOnly = readOnly
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case short
        case char
        case int
        case long
        case float
        case double
        case direct
        case readOnly
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(short, forKey: .short)
        try container.encodeIfPresent(char, forKey: .char)
        try container.encodeIfPresent(int, forKey: .int)
        try container.encodeIfPresent(long, forKey: .long)
        try container.encodeIfPresent(float, forKey: .float)
        try container.encodeIfPresent(double, forKey: .double)
        try container.encodeIfPresent(direct, forKey: .direct)
        try container.encodeIfPresent(readOnly, forKey: .readOnly)
    }
}

