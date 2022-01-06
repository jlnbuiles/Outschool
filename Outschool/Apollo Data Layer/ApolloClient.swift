//
//  ApolloClient.swift
//  Outschool
//
//  Created by Julian Builes on 12/30/21.
//

import Foundation
import Apollo

class ApolloOutSchoolClient {
    private let serverURL = "https://outschool.com/graphql"
    static let shared = ApolloOutSchoolClient()
    private(set) lazy var apollo = ApolloClient(url: URL(string: serverURL)!)
}
