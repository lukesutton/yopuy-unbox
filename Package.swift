import PackageDescription

let package = Package(
    name: "YopuyUnbox",
    dependencies: [
      .Package(url: "https://github.com/johnsundell/unbox.git", majorVersion: 2),
      .Package(url: "https://github.com/lukesutton/Yopuy.git", majorVersion: 0)
    ]
)
