//
//  ClassesCVC+Requests.swift
//  Outschool
//
//  Created by Julian Builes on 1/5/22.
//

import Foundation

extension ClassesCVC {
    
    internal func fetchListings() {
        ApolloOutSchoolClient.shared.apollo.fetch(query: PopularListingsQuery()) { [weak self] result in
            
            guard let self = self else { return }
            defer { self.resultsFetched() }
            
            switch result {
                case .success(let graphQLResult):
                    if let featuredListings = graphQLResult.data?.featured,
                       let popListings = featuredListings.popularListings {
                        
                        self.popularListings.append(contentsOf: popListings.compactMap { $0 })
                    }
                                
                    // note: it is possible that we may get errors even while obtaining some results. Hence we do this check.
                    // source: https://www.apollographql.com/docs/ios/tutorial/tutorial-query-ui/#:~:text=GraphQLResult%20has%20both,from%20the%20server)
                    if let errors = graphQLResult.errors {
                      let message = errors
                            .map { $0.localizedDescription }
                            .joined(separator: "\n")
                        self.handleServerError(withMessage: message)
                    }
                
                case .failure(let error):
                    self.handleServerError(withMessage: error.localizedDescription)
            }
        }
    }
    
}
