[comment]: <> (Header Generated by ActionStatus 2.0.6 - 489)

[![Test results][tests shield]][actions] [![Latest release][release shield]][releases] [![swift 5.3 shield] ![swift 5.4 shield] ![swift 5.5 shield] ![swift 5.6 shield]][swift] ![Platforms: macOS, iOS, tvOS, watchOS, Linux][platforms shield]

[release shield]: https://img.shields.io/github/v/release/elegantchaos/CollectionExtensions
[platforms shield]: https://img.shields.io/badge/platforms-macOS_iOS_tvOS_watchOS_Linux-lightgrey.svg?style=flat "macOS, iOS, tvOS, watchOS, Linux"
[tests shield]: https://github.com/elegantchaos/CollectionExtensions/workflows/Tests/badge.svg
[swift 5.3 shield]: https://img.shields.io/badge/swift-5.3-F05138.svg "Swift 5.3"
[swift 5.4 shield]: https://img.shields.io/badge/swift-5.4-F05138.svg "Swift 5.4"
[swift 5.5 shield]: https://img.shields.io/badge/swift-5.5-F05138.svg "Swift 5.5"
[swift 5.6 shield]: https://img.shields.io/badge/swift-5.6-F05138.svg "Swift 5.6"

[swift]: https://swift.org
[releases]: https://github.com/elegantchaos/CollectionExtensions/releases
[actions]: https://github.com/elegantchaos/CollectionExtensions/actions

[comment]: <> (End of ActionStatus Header)


# CollectionExtensions

Some miscellaneous utilities and additions to collections.

### Dictionary+Coercion

Adds `stringWithKey`, `intWithKey`, `doubleWithKey` as dictionary subscripts. They do their best to coerce the dictionary value to the correct type.


### Dictionary+Merging

Adds some convenience methods which call on to `merge(other, uniquingKeysWith:` to either replace or keep all duplicate keys.
