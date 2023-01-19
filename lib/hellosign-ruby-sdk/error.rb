module HelloSign
  module Error
    # Custom error class for rescuing from all HelloSign errors.
    class Error < StandardError; end

    # Raise when attributes are missing.
    class MissingAttributes < Error; end

    # Raised when API endpoint credentials not configured.
    class MissingCredentials < Error; end

    # Raised when impossible to parse response body.
    class Parsing < Error; end

    # Raised when API endpoint returns the HTTP status code 400.
    class BadRequest < Error; end

    # Raised when API endpoint returns the HTTP status code 401.
    class Unauthorized < Error; end

    # Raised when API endpoint returns the HTTP status code 403.
    class Forbidden < Error; end

    # Raised when API endpoint returns the HTTP status code 404.
    class NotFound < Error; end

    # Raised when API endpoint returns the HTTP status code 405.
    class MethodNotAllowed < Error; end

    # Raised when API endpoint returns the HTTP status code 409.
    class Conflict < Error; end

    # Raised when API endpoint returns the HTTP status code 410.
    class Gone < Error; end

    # Raised when API endpoint returns the HTTP status code 500.
    class InternalServerError < Error; end

    # Raised when API endpoint returns the HTTP status code 502.
    class BadGateway < Error; end

    # Raised when API endpoint returns the HTTP status code 503.
    class ServiceUnavailable < Error; end

    # Raised when API endpoint returns the HTTP status code 503.
    class NotSupportedType < Error; end
  end
end
