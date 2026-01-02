// The Swift Programming Language
// https://docs.swift.org/swift-book

import BasicMath

open class MedMath: BasicMath {
    // MARK: - Public stored properties
    public var z: Int = 0

    // MARK: - Public initializer
    /// Creates a new `MedMath` instance.
    ///
    /// - Parameters:
    ///   - x: The first integer value to be stored.
    ///   - y: The second integer value to be stored.
    ///   - z: The third integer value to be stored.
    public init(x: Int, y: Int, z: Int) {
        self.z = z
        super.init(x: x, y: y)
    }
    
    // MARK: - Public API
    
    /// Returns `x + y + z`.
    open override func sum() -> Int {
        return z + x + y
    }
    
    /// Returns `z - x - y`.
    open override func difference() -> Int {
        return z - x - y
    }
    
    /// Returns `z * x * y`.
    open override func product() -> Int {
        return z * x * y
    }
}

