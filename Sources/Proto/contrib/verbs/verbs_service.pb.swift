// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/verbs/verbs_service.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 The TensorFlow Authors. All Rights Reserved.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//==============================================================================

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

public struct Tensorflow_Channel {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var lid: Int32 = 0

  public var qpn: Int32 = 0

  public var psn: Int32 = 0

  public var snp: UInt64 = 0

  public var iid: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tensorflow_MemoryRegion {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var remoteAddr: UInt64 = 0

  public var rkey: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Tensorflow_GetRemoteAddressRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hostName: String {
    get {return _storage._hostName}
    set {_uniqueStorage()._hostName = newValue}
  }

  public var channel: Tensorflow_Channel {
    get {return _storage._channel ?? Tensorflow_Channel()}
    set {_uniqueStorage()._channel = newValue}
  }
  /// Returns true if `channel` has been explicitly set.
  public var hasChannel: Bool {return _storage._channel != nil}
  /// Clears the value of `channel`. Subsequent reads from it will return its default value.
  public mutating func clearChannel() {_uniqueStorage()._channel = nil}

  public var mr: [Tensorflow_MemoryRegion] {
    get {return _storage._mr}
    set {_uniqueStorage()._mr = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_GetRemoteAddressResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var hostName: String {
    get {return _storage._hostName}
    set {_uniqueStorage()._hostName = newValue}
  }

  public var channel: Tensorflow_Channel {
    get {return _storage._channel ?? Tensorflow_Channel()}
    set {_uniqueStorage()._channel = newValue}
  }
  /// Returns true if `channel` has been explicitly set.
  public var hasChannel: Bool {return _storage._channel != nil}
  /// Clears the value of `channel`. Subsequent reads from it will return its default value.
  public mutating func clearChannel() {_uniqueStorage()._channel = nil}

  public var mr: [Tensorflow_MemoryRegion] {
    get {return _storage._mr}
    set {_uniqueStorage()._mr = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Tensorflow_ErrorStatusProto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var errorCode: Int32 = 0

  public var errorMessage: String = String()

  public var errorDetails: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_Channel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Channel"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "lid"),
    2: .same(proto: "qpn"),
    3: .same(proto: "psn"),
    4: .same(proto: "snp"),
    5: .same(proto: "iid"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.lid)
      case 2: try decoder.decodeSingularInt32Field(value: &self.qpn)
      case 3: try decoder.decodeSingularInt32Field(value: &self.psn)
      case 4: try decoder.decodeSingularUInt64Field(value: &self.snp)
      case 5: try decoder.decodeSingularUInt64Field(value: &self.iid)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.lid != 0 {
      try visitor.visitSingularInt32Field(value: self.lid, fieldNumber: 1)
    }
    if self.qpn != 0 {
      try visitor.visitSingularInt32Field(value: self.qpn, fieldNumber: 2)
    }
    if self.psn != 0 {
      try visitor.visitSingularInt32Field(value: self.psn, fieldNumber: 3)
    }
    if self.snp != 0 {
      try visitor.visitSingularUInt64Field(value: self.snp, fieldNumber: 4)
    }
    if self.iid != 0 {
      try visitor.visitSingularUInt64Field(value: self.iid, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Channel, rhs: Tensorflow_Channel) -> Bool {
    if lhs.lid != rhs.lid {return false}
    if lhs.qpn != rhs.qpn {return false}
    if lhs.psn != rhs.psn {return false}
    if lhs.snp != rhs.snp {return false}
    if lhs.iid != rhs.iid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_MemoryRegion: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MemoryRegion"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "remote_addr"),
    2: .same(proto: "rkey"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt64Field(value: &self.remoteAddr)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.rkey)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.remoteAddr != 0 {
      try visitor.visitSingularUInt64Field(value: self.remoteAddr, fieldNumber: 1)
    }
    if self.rkey != 0 {
      try visitor.visitSingularUInt32Field(value: self.rkey, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_MemoryRegion, rhs: Tensorflow_MemoryRegion) -> Bool {
    if lhs.remoteAddr != rhs.remoteAddr {return false}
    if lhs.rkey != rhs.rkey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_GetRemoteAddressRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRemoteAddressRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "host_name"),
    2: .same(proto: "channel"),
    3: .same(proto: "mr"),
  ]

  fileprivate class _StorageClass {
    var _hostName: String = String()
    var _channel: Tensorflow_Channel? = nil
    var _mr: [Tensorflow_MemoryRegion] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _hostName = source._hostName
      _channel = source._channel
      _mr = source._mr
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._hostName)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._channel)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._mr)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._hostName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hostName, fieldNumber: 1)
      }
      if let v = _storage._channel {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._mr.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._mr, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_GetRemoteAddressRequest, rhs: Tensorflow_GetRemoteAddressRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._hostName != rhs_storage._hostName {return false}
        if _storage._channel != rhs_storage._channel {return false}
        if _storage._mr != rhs_storage._mr {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_GetRemoteAddressResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRemoteAddressResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "host_name"),
    2: .same(proto: "channel"),
    3: .same(proto: "mr"),
  ]

  fileprivate class _StorageClass {
    var _hostName: String = String()
    var _channel: Tensorflow_Channel? = nil
    var _mr: [Tensorflow_MemoryRegion] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _hostName = source._hostName
      _channel = source._channel
      _mr = source._mr
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._hostName)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._channel)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._mr)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._hostName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hostName, fieldNumber: 1)
      }
      if let v = _storage._channel {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._mr.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._mr, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_GetRemoteAddressResponse, rhs: Tensorflow_GetRemoteAddressResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._hostName != rhs_storage._hostName {return false}
        if _storage._channel != rhs_storage._channel {return false}
        if _storage._mr != rhs_storage._mr {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_ErrorStatusProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ErrorStatusProto"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "error_code"),
    2: .standard(proto: "error_message"),
    3: .standard(proto: "error_details"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.errorCode)
      case 2: try decoder.decodeSingularStringField(value: &self.errorMessage)
      case 3: try decoder.decodeSingularStringField(value: &self.errorDetails)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.errorCode != 0 {
      try visitor.visitSingularInt32Field(value: self.errorCode, fieldNumber: 1)
    }
    if !self.errorMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.errorMessage, fieldNumber: 2)
    }
    if !self.errorDetails.isEmpty {
      try visitor.visitSingularStringField(value: self.errorDetails, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_ErrorStatusProto, rhs: Tensorflow_ErrorStatusProto) -> Bool {
    if lhs.errorCode != rhs.errorCode {return false}
    if lhs.errorMessage != rhs.errorMessage {return false}
    if lhs.errorDetails != rhs.errorDetails {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}