import Foundation
import ToznySwish

internal protocol RequestMatcher {
  func match<T: Request>(_ request: T) -> Result<T.ResponseObject, SwishError>?
}
