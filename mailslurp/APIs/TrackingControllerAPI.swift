//
// TrackingControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class TrackingControllerAPI : NSObject {

    /**
     Create tracking pixel
     
     - parameter createTrackingPixelOptions: (body)  
     - returns: Promise<TrackingPixelDto>
     */
    open class func createTrackingPixel( createTrackingPixelOptions: CreateTrackingPixelOptions) -> Promise<TrackingPixelDto> {
        let deferred = Promise<TrackingPixelDto>.pending()
        createTrackingPixelWithRequestBuilder(createTrackingPixelOptions: createTrackingPixelOptions).execute { result in
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
     Create tracking pixel
     - POST /tracking/pixels
     - Create a tracking pixel. A tracking pixel is an image that can be embedded in an email. When the email is viewed and the image is seen MailSlurp will mark the pixel as seen. Use tracking pixels to monitor email open events. You can receive open notifications via webhook or by fetching the pixel.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter createTrackingPixelOptions: (body)  
     - returns: RequestBuilder<TrackingPixelDto> 
     */
    open class func createTrackingPixelWithRequestBuilder(createTrackingPixelOptions: CreateTrackingPixelOptions) -> RequestBuilder<TrackingPixelDto> {
        let localVariablePath = "/tracking/pixels"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createTrackingPixelOptions)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TrackingPixelDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     * enum for parameter sort
     */
    public enum Sort_getAllTrackingPixels: String, CaseIterable {
        case asc = "ASC"
        case desc = "DESC"
    }

    /**
     Get tracking pixels
     
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: Promise<PageTrackingPixelProjection>
     */
    open class func getAllTrackingPixels( page: Int? = nil,  size: Int? = nil,  sort: Sort_getAllTrackingPixels? = nil,  searchFilter: String? = nil,  since: Date? = nil,  before: Date? = nil) -> Promise<PageTrackingPixelProjection> {
        let deferred = Promise<PageTrackingPixelProjection>.pending()
        getAllTrackingPixelsWithRequestBuilder(page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before).execute { result in
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
     Get tracking pixels
     - GET /tracking/pixels
     - List tracking pixels in paginated form
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter page: (query) Optional page index in list pagination (optional, default to 0)
     - parameter size: (query) Optional page size in list pagination (optional, default to 20)
     - parameter sort: (query) Optional createdAt sort direction ASC or DESC (optional, default to .asc)
     - parameter searchFilter: (query) Optional search filter (optional)
     - parameter since: (query) Filter by created at after the given timestamp (optional)
     - parameter before: (query) Filter by created at before the given timestamp (optional)
     - returns: RequestBuilder<PageTrackingPixelProjection> 
     */
    open class func getAllTrackingPixelsWithRequestBuilder(page: Int? = nil, size: Int? = nil, sort: Sort_getAllTrackingPixels? = nil, searchFilter: String? = nil, since: Date? = nil, before: Date? = nil) -> RequestBuilder<PageTrackingPixelProjection> {
        let localVariablePath = "/tracking/pixels"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
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

        let localVariableRequestBuilder: RequestBuilder<PageTrackingPixelProjection>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get pixel
     
     - parameter _id: (path)  
     - returns: Promise<TrackingPixelDto>
     */
    open class func getTrackingPixel( _id: UUID) -> Promise<TrackingPixelDto> {
        let deferred = Promise<TrackingPixelDto>.pending()
        getTrackingPixelWithRequestBuilder(_id: _id).execute { result in
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
     Get pixel
     - GET /tracking/pixels/{id}
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter _id: (path)  
     - returns: RequestBuilder<TrackingPixelDto> 
     */
    open class func getTrackingPixelWithRequestBuilder(_id: UUID) -> RequestBuilder<TrackingPixelDto> {
        var localVariablePath = "/tracking/pixels/{id}"
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

        let localVariableRequestBuilder: RequestBuilder<TrackingPixelDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}