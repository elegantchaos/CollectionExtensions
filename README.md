
[![Test results][tests shield]][actions] [![Latest release][release shield]][releases] [![Swift 5.0][swift shield]][swift] ![Platforms: iOS, macOS, tvOS, watchOS, Linux][platforms shield]

[swift]: https://swift.org

[releases]: https://github.com/elegantchaos/CollectionExtensions/releases
[release shield]: https://img.shields.io/github/v/release/elegantchaos/CollectionExtensions
[swift shield]: https://img.shields.io/badge/swift-5.0-F05138.svg "Swift 5.0"
[platforms shield]: https://img.shields.io/badge/platforms-iOS_macOS_tvOS_watchOS_Linux-lightgrey.svg?style=flat "iOS, macOS, tvOS, watchOS, Linux"

[actions]: https://github.com/elegantchaos/CollectionExtensions/actions
[tests shield]: https://github.com/elegantchaos/CollectionExtensions/workflows/tests/badge.svg

# CollectionExtensions

Some miscellaneous utilities and additions to collections.

### Dictionary+Coercion

Adds `stringWithKey`, `intWithKey`, `doubleWithKey` as dictionary subscripts. They do their best to coerce the dictionary value to the correct type.


### Dictionary+Merging

Adds some convenience methods which call on to `merge(other, uniquingKeysWith:` to either replace or keep all duplicate keys.
