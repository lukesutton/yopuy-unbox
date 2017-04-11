import Yopuy
import Foundation
import Unbox

public protocol UnboxableResource: Resource, Unboxable {

}

public extension UnboxableResource where Singular == Self, Collection == [Self] {
  public static func parse(singular data: Data) throws -> Singular {
    let result: Self = try unbox(data: data)
    return result
  }

  public static func parse(collection data: Data) throws -> Collection {
    let result: [Self] = try unbox(data: data)
    return result
  }
}
