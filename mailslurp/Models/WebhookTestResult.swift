//
// WebhookTestResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Results of testing a webhook */
@objc public class WebhookTestResult: NSObject, Codable, JSONEncodable {

    public var message: String?
    public var response: WebhookTestResponse
    public var request: WebhookTestRequest

    public init(message: String? = nil, response: WebhookTestResponse, request: WebhookTestRequest) {
        self.message = message
        self.response = response
        self.request = request
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case response
        case request
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encode(response, forKey: .response)
        try container.encode(request, forKey: .request)
    }
}
