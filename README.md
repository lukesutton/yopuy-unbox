# Yopuy Unbox

A _very_ simple package that adds support for the [Unbox](https://github.com/JohnSundell/Unbox) package to [Yopuy](https://github.com/lukesutton/Yopuy).

Usage is very simple. Define your Yopuy resources like usual, then extend the `UnboxableResource` protocol. It inherits from `Unboxable` so you will also need to implement an initializer with the signature: `init(unboxer: Unbox) throws`.

This will then give you the default implementations of `static func parse(collection:)` and `static func parse(singular:)`.

```swift
import Yopuy
import YopuyUnbox

struct Test: RootResource, UnboxableResource {
  typealias Singular = Test
  typealias Collection = [Test]
  typealias ID = Int
  let id: Int
  static let path = "tests"

  init(unboxer: Unboxer) throws {
    self.id = try unboxer.unbox(key: "id")
  }
}
```
