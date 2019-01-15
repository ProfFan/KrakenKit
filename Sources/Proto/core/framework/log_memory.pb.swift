// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/log_memory.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Tensorflow_MemoryLogStep {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Process-unique step id.
  public var stepID: Int64 = 0

  /// Handle describing the feeds and fetches of the step.
  public var handle: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tensorflow_MemoryLogTensorAllocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Process-unique step id.
  public var stepID: Int64 {
    get {return _storage._stepID}
    set {_uniqueStorage()._stepID = newValue}
  }

  /// Name of the kernel making the allocation as set in GraphDef,
  /// e.g., "affine2/weights/Assign".
  public var kernelName: String {
    get {return _storage._kernelName}
    set {_uniqueStorage()._kernelName = newValue}
  }

  /// Allocated tensor details.
  public var tensor: Tensorflow_TensorDescription {
    get {return _storage._tensor ?? Tensorflow_TensorDescription()}
    set {_uniqueStorage()._tensor = newValue}
  }
  /// Returns true if `tensor` has been explicitly set.
  public var hasTensor: Bool {return _storage._tensor != nil}
  /// Clears the value of `tensor`. Subsequent reads from it will return its default value.
  public mutating func clearTensor() {_uniqueStorage()._tensor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_MemoryLogTensorDeallocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Id of the tensor buffer being deallocated, used to match to a
  /// corresponding allocation.
  public var allocationID: Int64 = 0

  /// Name of the allocator used.
  public var allocatorName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tensorflow_MemoryLogTensorOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Process-unique step id.
  public var stepID: Int64 {
    get {return _storage._stepID}
    set {_uniqueStorage()._stepID = newValue}
  }

  /// Name of the kernel producing an output as set in GraphDef, e.g.,
  /// "affine2/weights/Assign".
  public var kernelName: String {
    get {return _storage._kernelName}
    set {_uniqueStorage()._kernelName = newValue}
  }

  /// Index of the output being set.
  public var index: Int32 {
    get {return _storage._index}
    set {_uniqueStorage()._index = newValue}
  }

  /// Output tensor details.
  public var tensor: Tensorflow_TensorDescription {
    get {return _storage._tensor ?? Tensorflow_TensorDescription()}
    set {_uniqueStorage()._tensor = newValue}
  }
  /// Returns true if `tensor` has been explicitly set.
  public var hasTensor: Bool {return _storage._tensor != nil}
  /// Clears the value of `tensor`. Subsequent reads from it will return its default value.
  public mutating func clearTensor() {_uniqueStorage()._tensor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_MemoryLogRawAllocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Process-unique step id.
  public var stepID: Int64 = 0

  /// Name of the operation making the allocation.
  public var operation: String = String()

  /// Number of bytes in the allocation.
  public var numBytes: Int64 = 0

  /// Address of the allocation.
  public var ptr: UInt64 = 0

  /// Id of the tensor buffer being allocated, used to match to a
  /// corresponding deallocation.
  public var allocationID: Int64 = 0

  /// Name of the allocator used.
  public var allocatorName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tensorflow_MemoryLogRawDeallocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Process-unique step id.
  public var stepID: Int64 = 0

  /// Name of the operation making the deallocation.
  public var operation: String = String()

  /// Id of the tensor buffer being deallocated, used to match to a
  /// corresponding allocation.
  public var allocationID: Int64 = 0

  /// Name of the allocator used.
  public var allocatorName: String = String()

  /// True if the deallocation is queued and will be performed later,
  /// e.g. for GPU lazy freeing of buffers.
  public var deferred: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_MemoryLogStep: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogStep"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "step_id"),
    2: .same(proto: "handle"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.stepID)
      case 2: try decoder.decodeSingularStringField(value: &self.handle)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.stepID != 0 {
      try visitor.visitSingularInt64Field(value: self.stepID, fieldNumber: 1)
    }
    if !self.handle.isEmpty {
      try visitor.visitSingularStringField(value: self.handle, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogStep, rhs: Tensorflow_MemoryLogStep) -> Bool {
    if lhs.stepID != rhs.stepID {return false}
    if lhs.handle != rhs.handle {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryLogTensorAllocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogTensorAllocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "step_id"),
    2: .standard(proto: "kernel_name"),
    3: .same(proto: "tensor"),
  ]

  fileprivate class _StorageClass {
    var _stepID: Int64 = 0
    var _kernelName: String = String()
    var _tensor: Tensorflow_TensorDescription? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _stepID = source._stepID
      _kernelName = source._kernelName
      _tensor = source._tensor
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._stepID)
        case 2: try decoder.decodeSingularStringField(value: &_storage._kernelName)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._tensor)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._stepID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._stepID, fieldNumber: 1)
      }
      if !_storage._kernelName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._kernelName, fieldNumber: 2)
      }
      if let v = _storage._tensor {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogTensorAllocation, rhs: Tensorflow_MemoryLogTensorAllocation) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._stepID != rhs_storage._stepID {return false}
        if _storage._kernelName != rhs_storage._kernelName {return false}
        if _storage._tensor != rhs_storage._tensor {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryLogTensorDeallocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogTensorDeallocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "allocation_id"),
    2: .standard(proto: "allocator_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.allocationID)
      case 2: try decoder.decodeSingularStringField(value: &self.allocatorName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.allocationID != 0 {
      try visitor.visitSingularInt64Field(value: self.allocationID, fieldNumber: 1)
    }
    if !self.allocatorName.isEmpty {
      try visitor.visitSingularStringField(value: self.allocatorName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogTensorDeallocation, rhs: Tensorflow_MemoryLogTensorDeallocation) -> Bool {
    if lhs.allocationID != rhs.allocationID {return false}
    if lhs.allocatorName != rhs.allocatorName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryLogTensorOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogTensorOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "step_id"),
    2: .standard(proto: "kernel_name"),
    3: .same(proto: "index"),
    4: .same(proto: "tensor"),
  ]

  fileprivate class _StorageClass {
    var _stepID: Int64 = 0
    var _kernelName: String = String()
    var _index: Int32 = 0
    var _tensor: Tensorflow_TensorDescription? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _stepID = source._stepID
      _kernelName = source._kernelName
      _index = source._index
      _tensor = source._tensor
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularInt64Field(value: &_storage._stepID)
        case 2: try decoder.decodeSingularStringField(value: &_storage._kernelName)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._index)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._tensor)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._stepID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._stepID, fieldNumber: 1)
      }
      if !_storage._kernelName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._kernelName, fieldNumber: 2)
      }
      if _storage._index != 0 {
        try visitor.visitSingularInt32Field(value: _storage._index, fieldNumber: 3)
      }
      if let v = _storage._tensor {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogTensorOutput, rhs: Tensorflow_MemoryLogTensorOutput) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._stepID != rhs_storage._stepID {return false}
        if _storage._kernelName != rhs_storage._kernelName {return false}
        if _storage._index != rhs_storage._index {return false}
        if _storage._tensor != rhs_storage._tensor {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryLogRawAllocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogRawAllocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "step_id"),
    2: .same(proto: "operation"),
    3: .standard(proto: "num_bytes"),
    4: .same(proto: "ptr"),
    5: .standard(proto: "allocation_id"),
    6: .standard(proto: "allocator_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.stepID)
      case 2: try decoder.decodeSingularStringField(value: &self.operation)
      case 3: try decoder.decodeSingularInt64Field(value: &self.numBytes)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.ptr)
      case 5: try decoder.decodeSingularInt64Field(value: &self.allocationID)
      case 6: try decoder.decodeSingularStringField(value: &self.allocatorName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.stepID != 0 {
      try visitor.visitSingularInt64Field(value: self.stepID, fieldNumber: 1)
    }
    if !self.operation.isEmpty {
      try visitor.visitSingularStringField(value: self.operation, fieldNumber: 2)
    }
    if self.numBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.numBytes, fieldNumber: 3)
    }
    if self.ptr != 0 {
      try visitor.visitSingularUInt64Field(value: self.ptr, fieldNumber: 4)
    }
    if self.allocationID != 0 {
      try visitor.visitSingularInt64Field(value: self.allocationID, fieldNumber: 5)
    }
    if !self.allocatorName.isEmpty {
      try visitor.visitSingularStringField(value: self.allocatorName, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogRawAllocation, rhs: Tensorflow_MemoryLogRawAllocation) -> Bool {
    if lhs.stepID != rhs.stepID {return false}
    if lhs.operation != rhs.operation {return false}
    if lhs.numBytes != rhs.numBytes {return false}
    if lhs.ptr != rhs.ptr {return false}
    if lhs.allocationID != rhs.allocationID {return false}
    if lhs.allocatorName != rhs.allocatorName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryLogRawDeallocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryLogRawDeallocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "step_id"),
    2: .same(proto: "operation"),
    3: .standard(proto: "allocation_id"),
    4: .standard(proto: "allocator_name"),
    5: .same(proto: "deferred"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.stepID)
      case 2: try decoder.decodeSingularStringField(value: &self.operation)
      case 3: try decoder.decodeSingularInt64Field(value: &self.allocationID)
      case 4: try decoder.decodeSingularStringField(value: &self.allocatorName)
      case 5: try decoder.decodeSingularBoolField(value: &self.deferred)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.stepID != 0 {
      try visitor.visitSingularInt64Field(value: self.stepID, fieldNumber: 1)
    }
    if !self.operation.isEmpty {
      try visitor.visitSingularStringField(value: self.operation, fieldNumber: 2)
    }
    if self.allocationID != 0 {
      try visitor.visitSingularInt64Field(value: self.allocationID, fieldNumber: 3)
    }
    if !self.allocatorName.isEmpty {
      try visitor.visitSingularStringField(value: self.allocatorName, fieldNumber: 4)
    }
    if self.deferred != false {
      try visitor.visitSingularBoolField(value: self.deferred, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryLogRawDeallocation, rhs: Tensorflow_MemoryLogRawDeallocation) -> Bool {
    if lhs.stepID != rhs.stepID {return false}
    if lhs.operation != rhs.operation {return false}
    if lhs.allocationID != rhs.allocationID {return false}
    if lhs.allocatorName != rhs.allocatorName {return false}
    if lhs.deferred != rhs.deferred {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}