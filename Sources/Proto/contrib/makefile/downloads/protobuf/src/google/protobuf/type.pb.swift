// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/makefile/downloads/protobuf/src/google/protobuf/type.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

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

/// The syntax in which a protocol buffer element is defined.
public enum Google_Protobuf_Syntax: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Syntax `proto2`.
  case proto2 // = 0

  /// Syntax `proto3`.
  case proto3 // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .proto2
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .proto2
    case 1: self = .proto3
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .proto2: return 0
    case .proto3: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Protobuf_Syntax: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Protobuf_Syntax] = [
    .proto2,
    .proto3,
  ]
}

#endif  // swift(>=4.2)

/// A protocol buffer message type.
public struct Google_Protobuf_Type {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The fully qualified message name.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// The list of fields.
  public var fields: [Google_Protobuf_Field] {
    get {return _storage._fields}
    set {_uniqueStorage()._fields = newValue}
  }

  /// The list of types appearing in `oneof` definitions in this type.
  public var oneofs: [String] {
    get {return _storage._oneofs}
    set {_uniqueStorage()._oneofs = newValue}
  }

  /// The protocol buffer options.
  public var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  /// The source context.
  public var sourceContext: SwiftProtobuf.Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? SwiftProtobuf.Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  /// Returns true if `sourceContext` has been explicitly set.
  public var hasSourceContext: Bool {return _storage._sourceContext != nil}
  /// Clears the value of `sourceContext`. Subsequent reads from it will return its default value.
  public mutating func clearSourceContext() {_uniqueStorage()._sourceContext = nil}

  /// The source syntax.
  public var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// A single field of a message type.
public struct Google_Protobuf_Field {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The field type.
  public var kind: Google_Protobuf_Field.Kind = .typeUnknown

  /// The field cardinality.
  public var cardinality: Google_Protobuf_Field.Cardinality = .unknown

  /// The field number.
  public var number: Int32 = 0

  /// The field name.
  public var name: String = String()

  /// The field type URL, without the scheme, for message or enumeration
  /// types. Example: `"type.googleapis.com/google.protobuf.Timestamp"`.
  public var typeURL: String = String()

  /// The index of the field type in `Type.oneofs`, for message or enumeration
  /// types. The first type has index 1; zero means the type is not in the list.
  public var oneofIndex: Int32 = 0

  /// Whether to use alternative packed wire representation.
  public var packed: Bool = false

  /// The protocol buffer options.
  public var options: [Google_Protobuf_Option] = []

  /// The field JSON name.
  public var jsonName: String = String()

  /// The string value of the default value of this field. Proto2 syntax only.
  public var defaultValue: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Basic field types.
  public enum Kind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Field type unknown.
    case typeUnknown // = 0

    /// Field type double.
    case typeDouble // = 1

    /// Field type float.
    case typeFloat // = 2

    /// Field type int64.
    case typeInt64 // = 3

    /// Field type uint64.
    case typeUint64 // = 4

    /// Field type int32.
    case typeInt32 // = 5

    /// Field type fixed64.
    case typeFixed64 // = 6

    /// Field type fixed32.
    case typeFixed32 // = 7

    /// Field type bool.
    case typeBool // = 8

    /// Field type string.
    case typeString // = 9

    /// Field type group. Proto2 syntax only, and deprecated.
    case typeGroup // = 10

    /// Field type message.
    case typeMessage // = 11

    /// Field type bytes.
    case typeBytes // = 12

    /// Field type uint32.
    case typeUint32 // = 13

    /// Field type enum.
    case typeEnum // = 14

    /// Field type sfixed32.
    case typeSfixed32 // = 15

    /// Field type sfixed64.
    case typeSfixed64 // = 16

    /// Field type sint32.
    case typeSint32 // = 17

    /// Field type sint64.
    case typeSint64 // = 18
    case UNRECOGNIZED(Int)

    public init() {
      self = .typeUnknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .typeUnknown
      case 1: self = .typeDouble
      case 2: self = .typeFloat
      case 3: self = .typeInt64
      case 4: self = .typeUint64
      case 5: self = .typeInt32
      case 6: self = .typeFixed64
      case 7: self = .typeFixed32
      case 8: self = .typeBool
      case 9: self = .typeString
      case 10: self = .typeGroup
      case 11: self = .typeMessage
      case 12: self = .typeBytes
      case 13: self = .typeUint32
      case 14: self = .typeEnum
      case 15: self = .typeSfixed32
      case 16: self = .typeSfixed64
      case 17: self = .typeSint32
      case 18: self = .typeSint64
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .typeUnknown: return 0
      case .typeDouble: return 1
      case .typeFloat: return 2
      case .typeInt64: return 3
      case .typeUint64: return 4
      case .typeInt32: return 5
      case .typeFixed64: return 6
      case .typeFixed32: return 7
      case .typeBool: return 8
      case .typeString: return 9
      case .typeGroup: return 10
      case .typeMessage: return 11
      case .typeBytes: return 12
      case .typeUint32: return 13
      case .typeEnum: return 14
      case .typeSfixed32: return 15
      case .typeSfixed64: return 16
      case .typeSint32: return 17
      case .typeSint64: return 18
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Whether a field is optional, required, or repeated.
  public enum Cardinality: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// For fields with unknown cardinality.
    case unknown // = 0

    /// For optional fields.
    case `optional` // = 1

    /// For required fields. Proto2 syntax only.
    case `required` // = 2

    /// For repeated fields.
    case repeated // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .optional
      case 2: self = .required
      case 3: self = .repeated
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .optional: return 1
      case .required: return 2
      case .repeated: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Protobuf_Field.Kind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Protobuf_Field.Kind] = [
    .typeUnknown,
    .typeDouble,
    .typeFloat,
    .typeInt64,
    .typeUint64,
    .typeInt32,
    .typeFixed64,
    .typeFixed32,
    .typeBool,
    .typeString,
    .typeGroup,
    .typeMessage,
    .typeBytes,
    .typeUint32,
    .typeEnum,
    .typeSfixed32,
    .typeSfixed64,
    .typeSint32,
    .typeSint64,
  ]
}

extension Google_Protobuf_Field.Cardinality: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Protobuf_Field.Cardinality] = [
    .unknown,
    .optional,
    .required,
    .repeated,
  ]
}

#endif  // swift(>=4.2)

/// Enum type definition.
public struct Google_Protobuf_Enum {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Enum type name.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Enum value definitions.
  public var enumvalue: [Google_Protobuf_EnumValue] {
    get {return _storage._enumvalue}
    set {_uniqueStorage()._enumvalue = newValue}
  }

  /// Protocol buffer options.
  public var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  /// The source context.
  public var sourceContext: SwiftProtobuf.Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? SwiftProtobuf.Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  /// Returns true if `sourceContext` has been explicitly set.
  public var hasSourceContext: Bool {return _storage._sourceContext != nil}
  /// Clears the value of `sourceContext`. Subsequent reads from it will return its default value.
  public mutating func clearSourceContext() {_uniqueStorage()._sourceContext = nil}

  /// The source syntax.
  public var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Enum value definition.
public struct Google_Protobuf_EnumValue {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Enum value name.
  public var name: String = String()

  /// Enum value number.
  public var number: Int32 = 0

  /// Protocol buffer options.
  public var options: [Google_Protobuf_Option] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A protocol buffer option, which can be attached to a message, field,
/// enumeration, etc.
public struct Google_Protobuf_Option {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The option's name. For protobuf built-in options (options defined in
  /// descriptor.proto), this is the short name. For example, `"map_entry"`.
  /// For custom options, it should be the fully-qualified name. For example,
  /// `"google.api.http"`.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// The option's value packed in an Any message. If the value is a primitive,
  /// the corresponding wrapper type defined in google/protobuf/wrappers.proto
  /// should be used. If the value is an enum, it should be stored as an int32
  /// value using the google.protobuf.Int32Value type.
  public var value: SwiftProtobuf.Google_Protobuf_Any {
    get {return _storage._value ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_uniqueStorage()._value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return _storage._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {_uniqueStorage()._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.protobuf"

extension Google_Protobuf_Syntax: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SYNTAX_PROTO2"),
    1: .same(proto: "SYNTAX_PROTO3"),
  ]
}

extension Google_Protobuf_Type: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Type"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "fields"),
    3: .same(proto: "oneofs"),
    4: .same(proto: "options"),
    5: .standard(proto: "source_context"),
    6: .same(proto: "syntax"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _fields: [Google_Protobuf_Field] = []
    var _oneofs: [String] = []
    var _options: [Google_Protobuf_Option] = []
    var _sourceContext: SwiftProtobuf.Google_Protobuf_SourceContext? = nil
    var _syntax: Google_Protobuf_Syntax = .proto2

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _fields = source._fields
      _oneofs = source._oneofs
      _options = source._options
      _sourceContext = source._sourceContext
      _syntax = source._syntax
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._fields)
        case 3: try decoder.decodeRepeatedStringField(value: &_storage._oneofs)
        case 4: try decoder.decodeRepeatedMessageField(value: &_storage._options)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._sourceContext)
        case 6: try decoder.decodeSingularEnumField(value: &_storage._syntax)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._fields.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._fields, fieldNumber: 2)
      }
      if !_storage._oneofs.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._oneofs, fieldNumber: 3)
      }
      if !_storage._options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._options, fieldNumber: 4)
      }
      if let v = _storage._sourceContext {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._syntax != .proto2 {
        try visitor.visitSingularEnumField(value: _storage._syntax, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Type, rhs: Google_Protobuf_Type) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._fields != rhs_storage._fields {return false}
        if _storage._oneofs != rhs_storage._oneofs {return false}
        if _storage._options != rhs_storage._options {return false}
        if _storage._sourceContext != rhs_storage._sourceContext {return false}
        if _storage._syntax != rhs_storage._syntax {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Field: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Field"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "kind"),
    2: .same(proto: "cardinality"),
    3: .same(proto: "number"),
    4: .same(proto: "name"),
    6: .standard(proto: "type_url"),
    7: .standard(proto: "oneof_index"),
    8: .same(proto: "packed"),
    9: .same(proto: "options"),
    10: .standard(proto: "json_name"),
    11: .standard(proto: "default_value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.kind)
      case 2: try decoder.decodeSingularEnumField(value: &self.cardinality)
      case 3: try decoder.decodeSingularInt32Field(value: &self.number)
      case 4: try decoder.decodeSingularStringField(value: &self.name)
      case 6: try decoder.decodeSingularStringField(value: &self.typeURL)
      case 7: try decoder.decodeSingularInt32Field(value: &self.oneofIndex)
      case 8: try decoder.decodeSingularBoolField(value: &self.packed)
      case 9: try decoder.decodeRepeatedMessageField(value: &self.options)
      case 10: try decoder.decodeSingularStringField(value: &self.jsonName)
      case 11: try decoder.decodeSingularStringField(value: &self.defaultValue)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.kind != .typeUnknown {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 1)
    }
    if self.cardinality != .unknown {
      try visitor.visitSingularEnumField(value: self.cardinality, fieldNumber: 2)
    }
    if self.number != 0 {
      try visitor.visitSingularInt32Field(value: self.number, fieldNumber: 3)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 4)
    }
    if !self.typeURL.isEmpty {
      try visitor.visitSingularStringField(value: self.typeURL, fieldNumber: 6)
    }
    if self.oneofIndex != 0 {
      try visitor.visitSingularInt32Field(value: self.oneofIndex, fieldNumber: 7)
    }
    if self.packed != false {
      try visitor.visitSingularBoolField(value: self.packed, fieldNumber: 8)
    }
    if !self.options.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.options, fieldNumber: 9)
    }
    if !self.jsonName.isEmpty {
      try visitor.visitSingularStringField(value: self.jsonName, fieldNumber: 10)
    }
    if !self.defaultValue.isEmpty {
      try visitor.visitSingularStringField(value: self.defaultValue, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Field, rhs: Google_Protobuf_Field) -> Bool {
    if lhs.kind != rhs.kind {return false}
    if lhs.cardinality != rhs.cardinality {return false}
    if lhs.number != rhs.number {return false}
    if lhs.name != rhs.name {return false}
    if lhs.typeURL != rhs.typeURL {return false}
    if lhs.oneofIndex != rhs.oneofIndex {return false}
    if lhs.packed != rhs.packed {return false}
    if lhs.options != rhs.options {return false}
    if lhs.jsonName != rhs.jsonName {return false}
    if lhs.defaultValue != rhs.defaultValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Field.Kind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TYPE_UNKNOWN"),
    1: .same(proto: "TYPE_DOUBLE"),
    2: .same(proto: "TYPE_FLOAT"),
    3: .same(proto: "TYPE_INT64"),
    4: .same(proto: "TYPE_UINT64"),
    5: .same(proto: "TYPE_INT32"),
    6: .same(proto: "TYPE_FIXED64"),
    7: .same(proto: "TYPE_FIXED32"),
    8: .same(proto: "TYPE_BOOL"),
    9: .same(proto: "TYPE_STRING"),
    10: .same(proto: "TYPE_GROUP"),
    11: .same(proto: "TYPE_MESSAGE"),
    12: .same(proto: "TYPE_BYTES"),
    13: .same(proto: "TYPE_UINT32"),
    14: .same(proto: "TYPE_ENUM"),
    15: .same(proto: "TYPE_SFIXED32"),
    16: .same(proto: "TYPE_SFIXED64"),
    17: .same(proto: "TYPE_SINT32"),
    18: .same(proto: "TYPE_SINT64"),
  ]
}

extension Google_Protobuf_Field.Cardinality: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CARDINALITY_UNKNOWN"),
    1: .same(proto: "CARDINALITY_OPTIONAL"),
    2: .same(proto: "CARDINALITY_REQUIRED"),
    3: .same(proto: "CARDINALITY_REPEATED"),
  ]
}

extension Google_Protobuf_Enum: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Enum"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "enumvalue"),
    3: .same(proto: "options"),
    4: .standard(proto: "source_context"),
    5: .same(proto: "syntax"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _enumvalue: [Google_Protobuf_EnumValue] = []
    var _options: [Google_Protobuf_Option] = []
    var _sourceContext: SwiftProtobuf.Google_Protobuf_SourceContext? = nil
    var _syntax: Google_Protobuf_Syntax = .proto2

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _enumvalue = source._enumvalue
      _options = source._options
      _sourceContext = source._sourceContext
      _syntax = source._syntax
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._enumvalue)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._options)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._sourceContext)
        case 5: try decoder.decodeSingularEnumField(value: &_storage._syntax)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if !_storage._enumvalue.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._enumvalue, fieldNumber: 2)
      }
      if !_storage._options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._options, fieldNumber: 3)
      }
      if let v = _storage._sourceContext {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._syntax != .proto2 {
        try visitor.visitSingularEnumField(value: _storage._syntax, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Enum, rhs: Google_Protobuf_Enum) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._enumvalue != rhs_storage._enumvalue {return false}
        if _storage._options != rhs_storage._options {return false}
        if _storage._sourceContext != rhs_storage._sourceContext {return false}
        if _storage._syntax != rhs_storage._syntax {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_EnumValue: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EnumValue"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "number"),
    3: .same(proto: "options"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularInt32Field(value: &self.number)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.options)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.number != 0 {
      try visitor.visitSingularInt32Field(value: self.number, fieldNumber: 2)
    }
    if !self.options.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.options, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_EnumValue, rhs: Google_Protobuf_EnumValue) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.number != rhs.number {return false}
    if lhs.options != rhs.options {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Protobuf_Option: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Option"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "value"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _value: SwiftProtobuf.Google_Protobuf_Any? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _value = source._value
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._value)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if let v = _storage._value {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Protobuf_Option, rhs: Google_Protobuf_Option) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._value != rhs_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
