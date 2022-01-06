// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class PopularListingsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query PopularListings {
      featured {
        __typename
        popularListings {
          __typename
          leader {
            __typename
            uid
            name
            photo
            leader_link
          }
          activity {
            __typename
            uid
            user_uid
            slug_id
            title
            summary
            details {
              __typename
              photo
            }
            averageStarRating
            price_cents
          }
        }
      }
    }
    """

  public let operationName: String = "PopularListings"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("featured", type: .nonNull(.object(Featured.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(featured: Featured) {
      self.init(unsafeResultMap: ["__typename": "Query", "featured": featured.resultMap])
    }

    public var featured: Featured {
      get {
        return Featured(unsafeResultMap: resultMap["featured"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "featured")
      }
    }

    public struct Featured: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Featured"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("popularListings", type: .list(.nonNull(.object(PopularListing.selections)))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(popularListings: [PopularListing]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Featured", "popularListings": popularListings.flatMap { (value: [PopularListing]) -> [ResultMap] in value.map { (value: PopularListing) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var popularListings: [PopularListing]? {
        get {
          return (resultMap["popularListings"] as? [ResultMap]).flatMap { (value: [ResultMap]) -> [PopularListing] in value.map { (value: ResultMap) -> PopularListing in PopularListing(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [PopularListing]) -> [ResultMap] in value.map { (value: PopularListing) -> ResultMap in value.resultMap } }, forKey: "popularListings")
        }
      }

      public struct PopularListing: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Listing"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("leader", type: .nonNull(.object(Leader.selections))),
            GraphQLField("activity", type: .nonNull(.object(Activity.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(leader: Leader, activity: Activity) {
          self.init(unsafeResultMap: ["__typename": "Listing", "leader": leader.resultMap, "activity": activity.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var leader: Leader {
          get {
            return Leader(unsafeResultMap: resultMap["leader"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "leader")
          }
        }

        public var activity: Activity {
          get {
            return Activity(unsafeResultMap: resultMap["activity"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "activity")
          }
        }

        public struct Leader: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Leader"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("photo", type: .scalar(String.self)),
              GraphQLField("leader_link", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(uid: GraphQLID, name: String? = nil, photo: String? = nil, leaderLink: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Leader", "uid": uid, "name": name, "photo": photo, "leader_link": leaderLink])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var uid: GraphQLID {
            get {
              return resultMap["uid"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "uid")
            }
          }

          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          public var photo: String? {
            get {
              return resultMap["photo"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "photo")
            }
          }

          public var leaderLink: String? {
            get {
              return resultMap["leader_link"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "leader_link")
            }
          }
        }

        public struct Activity: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Activity"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("uid", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("user_uid", type: .nonNull(.scalar(String.self))),
              GraphQLField("slug_id", type: .nonNull(.scalar(String.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("summary", type: .scalar(String.self)),
              GraphQLField("details", type: .nonNull(.object(Detail.selections))),
              GraphQLField("averageStarRating", type: .scalar(Double.self)),
              GraphQLField("price_cents", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(uid: GraphQLID, userUid: String, slugId: String, title: String, summary: String? = nil, details: Detail, averageStarRating: Double? = nil, priceCents: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Activity", "uid": uid, "user_uid": userUid, "slug_id": slugId, "title": title, "summary": summary, "details": details.resultMap, "averageStarRating": averageStarRating, "price_cents": priceCents])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var uid: GraphQLID {
            get {
              return resultMap["uid"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "uid")
            }
          }

          public var userUid: String {
            get {
              return resultMap["user_uid"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "user_uid")
            }
          }

          public var slugId: String {
            get {
              return resultMap["slug_id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "slug_id")
            }
          }

          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          public var summary: String? {
            get {
              return resultMap["summary"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "summary")
            }
          }

          public var details: Detail {
            get {
              return Detail(unsafeResultMap: resultMap["details"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "details")
            }
          }

          public var averageStarRating: Double? {
            get {
              return resultMap["averageStarRating"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "averageStarRating")
            }
          }

          public var priceCents: Int? {
            get {
              return resultMap["price_cents"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "price_cents")
            }
          }

          public struct Detail: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ActivityDetails"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("photo", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(photo: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ActivityDetails", "photo": photo])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var photo: String? {
              get {
                return resultMap["photo"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "photo")
              }
            }
          }
        }
      }
    }
  }
}
