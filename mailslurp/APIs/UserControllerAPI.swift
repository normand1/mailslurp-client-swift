//
// UserControllerAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import PromiseKit
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc open class UserControllerAPI : NSObject {

    /**

     - parameter property: (query) JSON property name or dot separated path selector such as `a.b.c` 
     - parameter body: (body)  
     - returns: Promise<String>
     */
    open class func getJsonPropertyAsString( property: String,  body: AnyCodable) -> Promise<String> {
        let deferred = Promise<String>.pending()
        getJsonPropertyAsStringWithRequestBuilder(property: property, body: body).execute { result in
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
     - POST /user/json/pluck
     - Utility function to extract properties from JSON objects in language where this is cumbersome.
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - parameter property: (query) JSON property name or dot separated path selector such as `a.b.c` 
     - parameter body: (body)  
     - returns: RequestBuilder<String> 
     */
    open class func getJsonPropertyAsStringWithRequestBuilder(property: String, body: AnyCodable) -> RequestBuilder<String> {
        let localVariablePath = "/user/json/pluck"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "property": (wrappedValue: property.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<String>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**

     - returns: Promise<UserInfoDto>
     */
    open class func getUserInfo() -> Promise<UserInfoDto> {
        let deferred = Promise<UserInfoDto>.pending()
        getUserInfoWithRequestBuilder().execute { result in
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
     - GET /user/info
     - Get account information for your user
     - API Key:
       - type: apiKey x-api-key 
       - name: API_KEY
     - returns: RequestBuilder<UserInfoDto> 
     */
    open class func getUserInfoWithRequestBuilder() -> RequestBuilder<UserInfoDto> {
        let localVariablePath = "/user/info"
        let localVariableURLString = mailslurpAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserInfoDto>.Type = mailslurpAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
