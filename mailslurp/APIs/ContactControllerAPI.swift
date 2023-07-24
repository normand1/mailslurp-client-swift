//
// ContactControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class ContactControllerAPI : NSObject {

    /**
     Create a contact
     
     - parameter createContactOptions: (body)  
     - returns: Promise<ContactDto>
     */
    open class func createContact( createContactOptions: CreateContactOptions) -> Promise<ContactDto> {
        let deferred = Promise<ContactDto>.pending()
        createContactWithRequestBuilder(createContactOptions: createContactOptions).execute { result in
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
     Create a contact
     - POST /contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createContactOptions: (body)  
     - returns: RequestBuilder<ContactDto> 
     */
    open class func createContactWithRequestBuilder(createContactOptions: CreateContactOptions) -> RequestBuilder<ContactDto> {
        let localVariablePath = "/contacts"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createContactOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContactDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete contact
     
     - parameter contactId: (path)  
     - returns: Promise<Void>
     */
    open class func deleteContact( contactId: UUID) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteContactWithRequestBuilder(contactId: contactId).execute { result in
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
     Delete contact
     - DELETE /contacts/{contactId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contactId: (path)  
     - returns: RequestBuilder<Void> 
     */
    open class func deleteContactWithRequestBuilder(contactId: UUID) -> RequestBuilder<Void> {
        var localVariablePath = "/contacts/{contactId}"
        let contactIdPreEscape = "\(APIHelper.mapValueToPathItem(contactId))"
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
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
     * enum for parameter sort
     */
    public enum Sort_getAllContacts: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get all contacts
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: Promise<PageContactProjection>
     */
    open class func getAllContacts( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllContacts? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageContactProjection> {
        let deferred = Promise<PageContactProjection>.pending()
        getAllContactsWithRequestBuilder(page: page, size: size, sort: sort, since: since, before: before).execute { result in
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
     Get all contacts
     - GET /contacts/paginated
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageContactProjection> 
     */
    open class func getAllContactsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllContacts? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageContactProjection> {
        let localVariablePath = "/contacts/paginated"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page": (wrappedValue: page?.encodeToJSON(), isExplode: true),
            "size": (wrappedValue: size?.encodeToJSON(), isExplode: true),
            "sort": (wrappedValue: sort?.encodeToJSON(), isExplode: true),
            "since": (wrappedValue: since?.encodeToJSON(), isExplode: true),
            "before": (wrappedValue: before?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PageContactProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get contact
     
     - parameter contactId: (path)  
     - returns: Promise<ContactDto>
     */
    open class func getContact( contactId: UUID) -> Promise<ContactDto> {
        let deferred = Promise<ContactDto>.pending()
        getContactWithRequestBuilder(contactId: contactId).execute { result in
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
     Get contact
     - GET /contacts/{contactId}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contactId: (path)  
     - returns: RequestBuilder<ContactDto> 
     */
    open class func getContactWithRequestBuilder(contactId: UUID) -> RequestBuilder<ContactDto> {
        var localVariablePath = "/contacts/{contactId}"
        let contactIdPreEscape = "\(APIHelper.mapValueToPathItem(contactId))"
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ContactDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get contact vCard vcf file
     
     - parameter contactId: (path)  
     - returns: Promise<[Data]>
     */
    open class func getContactVCard( contactId: UUID) -> Promise<[Data]> {
        let deferred = Promise<[Data]>.pending()
        getContactVCardWithRequestBuilder(contactId: contactId).execute { result in
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
     Get contact vCard vcf file
     - GET /contacts/{contactId}/download
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter contactId: (path)  
     - returns: RequestBuilder<[Data]> 
     */
    open class func getContactVCardWithRequestBuilder(contactId: UUID) -> RequestBuilder<[Data]> {
        var localVariablePath = "/contacts/{contactId}/download"
        let contactIdPreEscape = "\(APIHelper.mapValueToPathItem(contactId))"
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Data]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get all contacts
     
     - returns: Promise<[ContactProjection]>
     */
    open class func getContacts() -> Promise<[ContactProjection]> {
        let deferred = Promise<[ContactProjection]>.pending()
        getContactsWithRequestBuilder().execute { result in
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
     Get all contacts
     - GET /contacts
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<[ContactProjection]> 
     */
    open class func getContactsWithRequestBuilder() -> RequestBuilder<[ContactProjection]> {
        let localVariablePath = "/contacts"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ContactProjection]>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}