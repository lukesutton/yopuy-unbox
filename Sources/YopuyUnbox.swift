import Yopuy
import Foundation
import Unbox

protocol UnboxableResource: Resource, Unboxable {

}

extension UnboxableResource where Singular == Self, Collection == [Self] {
  static func parse(singular data: Data) throws -> Singular {
    let result: Self = try unbox(data: data)
    return result
  }

  static func parse(collection data: Data) throws -> Collection {
    let result: [Self] = try unbox(data: data)
    return result
  }
}
