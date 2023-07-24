//
// InboxRulesetControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class InboxRulesetControllerAPI : NSObject {

    /**
     Create an inbox ruleset
     
     - parameter createInboxRulesetOptions: (body)  
     - parameter inboxId: (query) Inbox id to attach ruleset to (optional)
     - returns: Promise<InboxRulesetDto>
     */
    open class func createNewInboxRuleset( createInboxRulesetOptions: CreateInboxRulesetOptions,  inboxId: UUID? = nil) -> Promise<InboxRulesetDto> {
        let deferred = Promise<InboxRulesetDto>.pending()
        createNewInboxRulesetWithRequestBuilder(createInboxRulesetOptions: createInboxRulesetOptions, inboxId: inboxId).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Create an inbox ruleset
     - POST /rulesets
     - Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createInboxRulesetOptions: (body)  
     - parameter inboxId: (query) Inbox id to attach ruleset to (optional)
     - returns: RequestBuilder<InboxRulesetDto> 
     */
    open class func createNewInboxRulesetWithRequestBuilder(createInboxRulesetOptions: CreateInboxRulesetOptions, inboxId: UUID? = nil) -> RequestBuilder<InboxRulesetDto> {
        let localVariablePath = "/rulesets"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createInboxRulesetOptions)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxRulesetDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete an inbox ruleset
     
     - parameter _id: (path) ID of inbox ruleset 
     - returns: Promise<Void>
     */
    open class func deleteInboxRuleset( _id: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteInboxRulesetWithRequestBuilder(_id: _id).execute { result in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Delete an inbox ruleset
     - DELETE /rulesets/{id}
     - Delete inbox ruleset
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path) ID of inbox ruleset 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteInboxRulesetWithRequestBuilder(_id: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/rulesets/{id}"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete inbox rulesets
     
     - parameter inboxId: (query) Optional inbox id to attach ruleset to (optional)
     - returns: Promise<Void>
     */
    open class func deleteInboxRulesets( inboxId: UUID? = nil) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteInboxRulesetsWithRequestBuilder(inboxId: inboxId).execute { result in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Delete inbox rulesets
     - DELETE /rulesets
     - Delete inbox rulesets. Accepts optional inboxId filter.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inbox id to attach ruleset to (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteInboxRulesetsWithRequestBuilder(inboxId: UUID? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/rulesets"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = mailslurpAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get an inbox ruleset
     
     - parameter _id: (path) ID of inbox ruleset 
     - returns: Promise<InboxRulesetDto>
     */
    open class func getInboxRuleset( _id: UUID) -> Promise<InboxRulesetDto> {
        let deferred = Promise<InboxRulesetDto>.pending()
        getInboxRulesetWithRequestBuilder(_id: _id).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Get an inbox ruleset
     - GET /rulesets/{id}
     - Get inbox ruleset
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path) ID of inbox ruleset 
     - returns: RequestBuilder<InboxRulesetDto> 
     */
    open class func getInboxRulesetWithRequestBuilder(_id: UUID) -> RequestBuilder<InboxRulesetDto> {
        var localVariablePath = "/rulesets/{id}"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxRulesetDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getInboxRulesets: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     List inbox rulesets
     
     - parameter inboxId: (query) Optional inbox id to get rulesets from (optional)
     - parameter page: (query) Optional page index in inbox ruleset list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox ruleset list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: Promise<PageInboxRulesetDto>
     */
    open class func getInboxRulesets( inboxId: UUID? = nil,  page: Int? = nil,  size: Int? = nil,  sort: Sort_getInboxRulesets? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageInboxRulesetDto> {
        let deferred = Promise<PageInboxRulesetDto>.pending()
        getInboxRulesetsWithRequestBuilder(inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     List inbox rulesets
     - GET /rulesets
     - List all rulesets attached to an inbox
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) Optional inbox id to get rulesets from (optional)
     - parameter page: (query) Optional page index in inbox ruleset list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in inbox ruleset list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageInboxRulesetDto> 
     */
    open class func getInboxRulesetsWithRequestBuilder(inboxId: UUID? = nil, page: Int? = nil, size: Int? = nil, sort: Sort_getInboxRulesets? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageInboxRulesetDto> {
        let localVariablePath = "/rulesets"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId?.encodeToJSON(), isExplode: true),
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "searchFilter": (wrappedValue: searchFilter?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageInboxRulesetDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Test an inbox ruleset
     
     - parameter _id: (path) ID of inbox ruleset 
     - parameter inboxRulesetTestOptions: (body)  
     - returns: Promise<InboxRulesetTestResult>
     */
    open class func testInboxRuleset( _id: UUID,  inboxRulesetTestOptions: InboxRulesetTestOptions) -> Promise<InboxRulesetTestResult> {
        let deferred = Promise<InboxRulesetTestResult>.pending()
        testInboxRulesetWithRequestBuilder(_id: _id, inboxRulesetTestOptions: inboxRulesetTestOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Test an inbox ruleset
     - POST /rulesets/{id}/test
     - Test an inbox ruleset
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path) ID of inbox ruleset 
     - parameter inboxRulesetTestOptions: (body)  
     - returns: RequestBuilder<InboxRulesetTestResult> 
     */
    open class func testInboxRulesetWithRequestBuilder(_id: UUID, inboxRulesetTestOptions: InboxRulesetTestOptions) -> RequestBuilder<InboxRulesetTestResult> {
        var localVariablePath = "/rulesets/{id}/test"
        let _idPreEscape = "\(APIHelper.mapValueToPathItem(_id))"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inboxRulesetTestOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxRulesetTestResult>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Test inbox rulesets for inbox
     
     - parameter inboxId: (query) ID of inbox 
     - parameter inboxRulesetTestOptions: (body)  
     - returns: Promise<InboxRulesetTestResult>
     */
    open class func testInboxRulesetsForInbox( inboxId: UUID,  inboxRulesetTestOptions: InboxRulesetTestOptions) -> Promise<InboxRulesetTestResult> {
        let deferred = Promise<InboxRulesetTestResult>.pending()
        testInboxRulesetsForInboxWithRequestBuilder(inboxId: inboxId, inboxRulesetTestOptions: inboxRulesetTestOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Test inbox rulesets for inbox
     - PUT /rulesets
     - Test inbox rulesets for inbox
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter inboxId: (query) ID of inbox 
     - parameter inboxRulesetTestOptions: (body)  
     - returns: RequestBuilder<InboxRulesetTestResult> 
     */
    open class func testInboxRulesetsForInboxWithRequestBuilder(inboxId: UUID, inboxRulesetTestOptions: InboxRulesetTestOptions) -> RequestBuilder<InboxRulesetTestResult> {
        let localVariablePath = "/rulesets"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: inboxRulesetTestOptions)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "inboxId": (wrappedValue: inboxId.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxRulesetTestResult>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Test new inbox ruleset
     
     - parameter testNewInboxRulesetOptions: (body)  
     - returns: Promise<InboxRulesetTestResult>
     */
    open class func testNewInboxRuleset( testNewInboxRulesetOptions: TestNewInboxRulesetOptions) -> Promise<InboxRulesetTestResult> {
        let deferred = Promise<InboxRulesetTestResult>.pending()
        testNewInboxRulesetWithRequestBuilder(testNewInboxRulesetOptions: testNewInboxRulesetOptions).execute { result in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Test new inbox ruleset
     - PATCH /rulesets
     - Test new inbox ruleset
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter testNewInboxRulesetOptions: (body)  
     - returns: RequestBuilder<InboxRulesetTestResult> 
     */
    open class func testNewInboxRulesetWithRequestBuilder(testNewInboxRulesetOptions: TestNewInboxRulesetOptions) -> RequestBuilder<InboxRulesetTestResult> {
        let localVariablePath = "/rulesets"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: testNewInboxRulesetOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<InboxRulesetTestResult>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}