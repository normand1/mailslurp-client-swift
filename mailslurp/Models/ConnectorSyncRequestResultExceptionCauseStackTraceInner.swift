//
// ConnectorSyncRequestResultExceptionCauseStackTraceInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class ConnectorSyncRequestResultExceptionCauseStackTraceInner: NSObject, Codable, JSONEncodable {

    public var classLoaderName: String?
    public var moduleName: String?
    public var moduleVersion: String?
    public var methodName: String?
    public var fileName: String?
    public var lineNumber: Int?
    public var lineNumberNum: NSNumber? {
        get {
            return lineNumber as NSNumber?
        }
    }
    public var nativeMethod: Bool?
    public var nativeMethodNum: NSNumber? {
        get {
            return nativeMethod as NSNumber?
        }
    }
    public var _className: String?

    public init(classLoaderName: String? = nil, moduleName: String? = nil, moduleVersion: String? = nil, methodName: String? = nil, fileName: String? = nil, lineNumber: Int? = nil, nativeMethod: Bool? = nil, _className: String? = nil) {
        self.classLoaderName = classLoaderName
        self.moduleName = moduleName
        self.moduleVersion = moduleVersion
        self.methodName = methodName
        self.fileName = fileName
        self.lineNumber = lineNumber
        self.nativeMethod = nativeMethod
        self._className = _className
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case classLoaderName
        case moduleName
        case moduleVersion
        case methodName
        case fileName
        case lineNumber
        case nativeMethod
        case _className = "className"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(classLoaderName, forKey: .classLoaderName)
        try container.encodeIfPresent(moduleName, forKey: .moduleName)
        try container.encodeIfPresent(moduleVersion, forKey: .moduleVersion)
        try container.encodeIfPresent(methodName, forKey: .methodName)
        try container.encodeIfPresent(fileName, forKey: .fileName)
        try container.encodeIfPresent(lineNumber, forKey: .lineNumber)
        try container.encodeIfPresent(nativeMethod, forKey: .nativeMethod)
        try container.encodeIfPresent(_className, forKey: ._className)
    }
}
