// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceData {

 List<AttendanceRecord> get records; String get semesterId; BigInt get updateTime;
/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceDataCopyWith<AttendanceData> get copyWith => _$AttendanceDataCopyWithImpl<AttendanceData>(this as AttendanceData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),semesterId,updateTime);

@override
String toString() {
  return 'AttendanceData(records: $records, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $AttendanceDataCopyWith<$Res>  {
  factory $AttendanceDataCopyWith(AttendanceData value, $Res Function(AttendanceData) _then) = _$AttendanceDataCopyWithImpl;
@useResult
$Res call({
 List<AttendanceRecord> records, String semesterId, BigInt updateTime
});




}
/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._self, this._then);

  final AttendanceData _self;
  final $Res Function(AttendanceData) _then;

/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceData].
extension AttendanceDataPatterns on AttendanceData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceData value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceData value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AttendanceRecord> records,  String semesterId,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AttendanceRecord> records,  String semesterId,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _AttendanceData():
return $default(_that.records,_that.semesterId,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AttendanceRecord> records,  String semesterId,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceData implements AttendanceData {
  const _AttendanceData({required final  List<AttendanceRecord> records, required this.semesterId, required this.updateTime}): _records = records;
  

 final  List<AttendanceRecord> _records;
@override List<AttendanceRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  String semesterId;
@override final  BigInt updateTime;

/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceDataCopyWith<_AttendanceData> get copyWith => __$AttendanceDataCopyWithImpl<_AttendanceData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),semesterId,updateTime);

@override
String toString() {
  return 'AttendanceData(records: $records, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$AttendanceDataCopyWith<$Res> implements $AttendanceDataCopyWith<$Res> {
  factory _$AttendanceDataCopyWith(_AttendanceData value, $Res Function(_AttendanceData) _then) = __$AttendanceDataCopyWithImpl;
@override @useResult
$Res call({
 List<AttendanceRecord> records, String semesterId, BigInt updateTime
});




}
/// @nodoc
class __$AttendanceDataCopyWithImpl<$Res>
    implements _$AttendanceDataCopyWith<$Res> {
  __$AttendanceDataCopyWithImpl(this._self, this._then);

  final _AttendanceData _self;
  final $Res Function(_AttendanceData) _then;

/// Create a copy of AttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_AttendanceData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<AttendanceRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$AttendanceRecord {

 String get serial; String get category; String get courseName; String get courseCode; String get courseType; String get facultyDetail; String get classesAttended; String get totalClasses; String get attendancePercentage; String get attendenceFatCat; String get debarStatus; String get courseId;
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<AttendanceRecord> get copyWith => _$AttendanceRecordCopyWithImpl<AttendanceRecord>(this as AttendanceRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.courseName, courseName) || other.courseName == courseName)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.facultyDetail, facultyDetail) || other.facultyDetail == facultyDetail)&&(identical(other.classesAttended, classesAttended) || other.classesAttended == classesAttended)&&(identical(other.totalClasses, totalClasses) || other.totalClasses == totalClasses)&&(identical(other.attendancePercentage, attendancePercentage) || other.attendancePercentage == attendancePercentage)&&(identical(other.attendenceFatCat, attendenceFatCat) || other.attendenceFatCat == attendenceFatCat)&&(identical(other.debarStatus, debarStatus) || other.debarStatus == debarStatus)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,serial,category,courseName,courseCode,courseType,facultyDetail,classesAttended,totalClasses,attendancePercentage,attendenceFatCat,debarStatus,courseId);

@override
String toString() {
  return 'AttendanceRecord(serial: $serial, category: $category, courseName: $courseName, courseCode: $courseCode, courseType: $courseType, facultyDetail: $facultyDetail, classesAttended: $classesAttended, totalClasses: $totalClasses, attendancePercentage: $attendancePercentage, attendenceFatCat: $attendenceFatCat, debarStatus: $debarStatus, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res>  {
  factory $AttendanceRecordCopyWith(AttendanceRecord value, $Res Function(AttendanceRecord) _then) = _$AttendanceRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String category, String courseName, String courseCode, String courseType, String facultyDetail, String classesAttended, String totalClasses, String attendancePercentage, String attendenceFatCat, String debarStatus, String courseId
});




}
/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? category = null,Object? courseName = null,Object? courseCode = null,Object? courseType = null,Object? facultyDetail = null,Object? classesAttended = null,Object? totalClasses = null,Object? attendancePercentage = null,Object? attendenceFatCat = null,Object? debarStatus = null,Object? courseId = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,courseName: null == courseName ? _self.courseName : courseName // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,facultyDetail: null == facultyDetail ? _self.facultyDetail : facultyDetail // ignore: cast_nullable_to_non_nullable
as String,classesAttended: null == classesAttended ? _self.classesAttended : classesAttended // ignore: cast_nullable_to_non_nullable
as String,totalClasses: null == totalClasses ? _self.totalClasses : totalClasses // ignore: cast_nullable_to_non_nullable
as String,attendancePercentage: null == attendancePercentage ? _self.attendancePercentage : attendancePercentage // ignore: cast_nullable_to_non_nullable
as String,attendenceFatCat: null == attendenceFatCat ? _self.attendenceFatCat : attendenceFatCat // ignore: cast_nullable_to_non_nullable
as String,debarStatus: null == debarStatus ? _self.debarStatus : debarStatus // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceRecord].
extension AttendanceRecordPatterns on AttendanceRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String category,  String courseName,  String courseCode,  String courseType,  String facultyDetail,  String classesAttended,  String totalClasses,  String attendancePercentage,  String attendenceFatCat,  String debarStatus,  String courseId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.serial,_that.category,_that.courseName,_that.courseCode,_that.courseType,_that.facultyDetail,_that.classesAttended,_that.totalClasses,_that.attendancePercentage,_that.attendenceFatCat,_that.debarStatus,_that.courseId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String category,  String courseName,  String courseCode,  String courseType,  String facultyDetail,  String classesAttended,  String totalClasses,  String attendancePercentage,  String attendenceFatCat,  String debarStatus,  String courseId)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that.serial,_that.category,_that.courseName,_that.courseCode,_that.courseType,_that.facultyDetail,_that.classesAttended,_that.totalClasses,_that.attendancePercentage,_that.attendenceFatCat,_that.debarStatus,_that.courseId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String category,  String courseName,  String courseCode,  String courseType,  String facultyDetail,  String classesAttended,  String totalClasses,  String attendancePercentage,  String attendenceFatCat,  String debarStatus,  String courseId)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.serial,_that.category,_that.courseName,_that.courseCode,_that.courseType,_that.facultyDetail,_that.classesAttended,_that.totalClasses,_that.attendancePercentage,_that.attendenceFatCat,_that.debarStatus,_that.courseId);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceRecord implements AttendanceRecord {
  const _AttendanceRecord({required this.serial, required this.category, required this.courseName, required this.courseCode, required this.courseType, required this.facultyDetail, required this.classesAttended, required this.totalClasses, required this.attendancePercentage, required this.attendenceFatCat, required this.debarStatus, required this.courseId});
  

@override final  String serial;
@override final  String category;
@override final  String courseName;
@override final  String courseCode;
@override final  String courseType;
@override final  String facultyDetail;
@override final  String classesAttended;
@override final  String totalClasses;
@override final  String attendancePercentage;
@override final  String attendenceFatCat;
@override final  String debarStatus;
@override final  String courseId;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordCopyWith<_AttendanceRecord> get copyWith => __$AttendanceRecordCopyWithImpl<_AttendanceRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.category, category) || other.category == category)&&(identical(other.courseName, courseName) || other.courseName == courseName)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.facultyDetail, facultyDetail) || other.facultyDetail == facultyDetail)&&(identical(other.classesAttended, classesAttended) || other.classesAttended == classesAttended)&&(identical(other.totalClasses, totalClasses) || other.totalClasses == totalClasses)&&(identical(other.attendancePercentage, attendancePercentage) || other.attendancePercentage == attendancePercentage)&&(identical(other.attendenceFatCat, attendenceFatCat) || other.attendenceFatCat == attendenceFatCat)&&(identical(other.debarStatus, debarStatus) || other.debarStatus == debarStatus)&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,serial,category,courseName,courseCode,courseType,facultyDetail,classesAttended,totalClasses,attendancePercentage,attendenceFatCat,debarStatus,courseId);

@override
String toString() {
  return 'AttendanceRecord(serial: $serial, category: $category, courseName: $courseName, courseCode: $courseCode, courseType: $courseType, facultyDetail: $facultyDetail, classesAttended: $classesAttended, totalClasses: $totalClasses, attendancePercentage: $attendancePercentage, attendenceFatCat: $attendenceFatCat, debarStatus: $debarStatus, courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordCopyWith<$Res> implements $AttendanceRecordCopyWith<$Res> {
  factory _$AttendanceRecordCopyWith(_AttendanceRecord value, $Res Function(_AttendanceRecord) _then) = __$AttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String category, String courseName, String courseCode, String courseType, String facultyDetail, String classesAttended, String totalClasses, String attendancePercentage, String attendenceFatCat, String debarStatus, String courseId
});




}
/// @nodoc
class __$AttendanceRecordCopyWithImpl<$Res>
    implements _$AttendanceRecordCopyWith<$Res> {
  __$AttendanceRecordCopyWithImpl(this._self, this._then);

  final _AttendanceRecord _self;
  final $Res Function(_AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? category = null,Object? courseName = null,Object? courseCode = null,Object? courseType = null,Object? facultyDetail = null,Object? classesAttended = null,Object? totalClasses = null,Object? attendancePercentage = null,Object? attendenceFatCat = null,Object? debarStatus = null,Object? courseId = null,}) {
  return _then(_AttendanceRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,courseName: null == courseName ? _self.courseName : courseName // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,facultyDetail: null == facultyDetail ? _self.facultyDetail : facultyDetail // ignore: cast_nullable_to_non_nullable
as String,classesAttended: null == classesAttended ? _self.classesAttended : classesAttended // ignore: cast_nullable_to_non_nullable
as String,totalClasses: null == totalClasses ? _self.totalClasses : totalClasses // ignore: cast_nullable_to_non_nullable
as String,attendancePercentage: null == attendancePercentage ? _self.attendancePercentage : attendancePercentage // ignore: cast_nullable_to_non_nullable
as String,attendenceFatCat: null == attendenceFatCat ? _self.attendenceFatCat : attendenceFatCat // ignore: cast_nullable_to_non_nullable
as String,debarStatus: null == debarStatus ? _self.debarStatus : debarStatus // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$BiometricData {

 List<BiometricRecord> get records; String get fromDate; BigInt get updateTime;
/// Create a copy of BiometricData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricDataCopyWith<BiometricData> get copyWith => _$BiometricDataCopyWithImpl<BiometricData>(this as BiometricData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),fromDate,updateTime);

@override
String toString() {
  return 'BiometricData(records: $records, fromDate: $fromDate, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $BiometricDataCopyWith<$Res>  {
  factory $BiometricDataCopyWith(BiometricData value, $Res Function(BiometricData) _then) = _$BiometricDataCopyWithImpl;
@useResult
$Res call({
 List<BiometricRecord> records, String fromDate, BigInt updateTime
});




}
/// @nodoc
class _$BiometricDataCopyWithImpl<$Res>
    implements $BiometricDataCopyWith<$Res> {
  _$BiometricDataCopyWithImpl(this._self, this._then);

  final BiometricData _self;
  final $Res Function(BiometricData) _then;

/// Create a copy of BiometricData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? fromDate = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<BiometricRecord>,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricData].
extension BiometricDataPatterns on BiometricData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricData value)  $default,){
final _that = this;
switch (_that) {
case _BiometricData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricData value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BiometricRecord> records,  String fromDate,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricData() when $default != null:
return $default(_that.records,_that.fromDate,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BiometricRecord> records,  String fromDate,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _BiometricData():
return $default(_that.records,_that.fromDate,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BiometricRecord> records,  String fromDate,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _BiometricData() when $default != null:
return $default(_that.records,_that.fromDate,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _BiometricData implements BiometricData {
  const _BiometricData({required final  List<BiometricRecord> records, required this.fromDate, required this.updateTime}): _records = records;
  

 final  List<BiometricRecord> _records;
@override List<BiometricRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  String fromDate;
@override final  BigInt updateTime;

/// Create a copy of BiometricData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricDataCopyWith<_BiometricData> get copyWith => __$BiometricDataCopyWithImpl<_BiometricData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),fromDate,updateTime);

@override
String toString() {
  return 'BiometricData(records: $records, fromDate: $fromDate, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$BiometricDataCopyWith<$Res> implements $BiometricDataCopyWith<$Res> {
  factory _$BiometricDataCopyWith(_BiometricData value, $Res Function(_BiometricData) _then) = __$BiometricDataCopyWithImpl;
@override @useResult
$Res call({
 List<BiometricRecord> records, String fromDate, BigInt updateTime
});




}
/// @nodoc
class __$BiometricDataCopyWithImpl<$Res>
    implements _$BiometricDataCopyWith<$Res> {
  __$BiometricDataCopyWithImpl(this._self, this._then);

  final _BiometricData _self;
  final $Res Function(_BiometricData) _then;

/// Create a copy of BiometricData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? fromDate = null,Object? updateTime = null,}) {
  return _then(_BiometricData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<BiometricRecord>,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$BiometricRecord {

 String get serial; String get date; String get day; String get inTime; String get outTime; String get duration; String get location;
/// Create a copy of BiometricRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiometricRecordCopyWith<BiometricRecord> get copyWith => _$BiometricRecordCopyWithImpl<BiometricRecord>(this as BiometricRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiometricRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.inTime, inTime) || other.inTime == inTime)&&(identical(other.outTime, outTime) || other.outTime == outTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,serial,date,day,inTime,outTime,duration,location);

@override
String toString() {
  return 'BiometricRecord(serial: $serial, date: $date, day: $day, inTime: $inTime, outTime: $outTime, duration: $duration, location: $location)';
}


}

/// @nodoc
abstract mixin class $BiometricRecordCopyWith<$Res>  {
  factory $BiometricRecordCopyWith(BiometricRecord value, $Res Function(BiometricRecord) _then) = _$BiometricRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String date, String day, String inTime, String outTime, String duration, String location
});




}
/// @nodoc
class _$BiometricRecordCopyWithImpl<$Res>
    implements $BiometricRecordCopyWith<$Res> {
  _$BiometricRecordCopyWithImpl(this._self, this._then);

  final BiometricRecord _self;
  final $Res Function(BiometricRecord) _then;

/// Create a copy of BiometricRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? date = null,Object? day = null,Object? inTime = null,Object? outTime = null,Object? duration = null,Object? location = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,inTime: null == inTime ? _self.inTime : inTime // ignore: cast_nullable_to_non_nullable
as String,outTime: null == outTime ? _self.outTime : outTime // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BiometricRecord].
extension BiometricRecordPatterns on BiometricRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiometricRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiometricRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiometricRecord value)  $default,){
final _that = this;
switch (_that) {
case _BiometricRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiometricRecord value)?  $default,){
final _that = this;
switch (_that) {
case _BiometricRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String date,  String day,  String inTime,  String outTime,  String duration,  String location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiometricRecord() when $default != null:
return $default(_that.serial,_that.date,_that.day,_that.inTime,_that.outTime,_that.duration,_that.location);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String date,  String day,  String inTime,  String outTime,  String duration,  String location)  $default,) {final _that = this;
switch (_that) {
case _BiometricRecord():
return $default(_that.serial,_that.date,_that.day,_that.inTime,_that.outTime,_that.duration,_that.location);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String date,  String day,  String inTime,  String outTime,  String duration,  String location)?  $default,) {final _that = this;
switch (_that) {
case _BiometricRecord() when $default != null:
return $default(_that.serial,_that.date,_that.day,_that.inTime,_that.outTime,_that.duration,_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _BiometricRecord implements BiometricRecord {
  const _BiometricRecord({required this.serial, required this.date, required this.day, required this.inTime, required this.outTime, required this.duration, required this.location});
  

@override final  String serial;
@override final  String date;
@override final  String day;
@override final  String inTime;
@override final  String outTime;
@override final  String duration;
@override final  String location;

/// Create a copy of BiometricRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiometricRecordCopyWith<_BiometricRecord> get copyWith => __$BiometricRecordCopyWithImpl<_BiometricRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiometricRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.inTime, inTime) || other.inTime == inTime)&&(identical(other.outTime, outTime) || other.outTime == outTime)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,serial,date,day,inTime,outTime,duration,location);

@override
String toString() {
  return 'BiometricRecord(serial: $serial, date: $date, day: $day, inTime: $inTime, outTime: $outTime, duration: $duration, location: $location)';
}


}

/// @nodoc
abstract mixin class _$BiometricRecordCopyWith<$Res> implements $BiometricRecordCopyWith<$Res> {
  factory _$BiometricRecordCopyWith(_BiometricRecord value, $Res Function(_BiometricRecord) _then) = __$BiometricRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String date, String day, String inTime, String outTime, String duration, String location
});




}
/// @nodoc
class __$BiometricRecordCopyWithImpl<$Res>
    implements _$BiometricRecordCopyWith<$Res> {
  __$BiometricRecordCopyWithImpl(this._self, this._then);

  final _BiometricRecord _self;
  final $Res Function(_BiometricRecord) _then;

/// Create a copy of BiometricRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? date = null,Object? day = null,Object? inTime = null,Object? outTime = null,Object? duration = null,Object? location = null,}) {
  return _then(_BiometricRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,inTime: null == inTime ? _self.inTime : inTime // ignore: cast_nullable_to_non_nullable
as String,outTime: null == outTime ? _self.outTime : outTime // ignore: cast_nullable_to_non_nullable
as String,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ExamScheduleData {

 List<PerExamScheduleRecord> get exams; String get semesterId; BigInt get updateTime;
/// Create a copy of ExamScheduleData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamScheduleDataCopyWith<ExamScheduleData> get copyWith => _$ExamScheduleDataCopyWithImpl<ExamScheduleData>(this as ExamScheduleData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamScheduleData&&const DeepCollectionEquality().equals(other.exams, exams)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exams),semesterId,updateTime);

@override
String toString() {
  return 'ExamScheduleData(exams: $exams, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $ExamScheduleDataCopyWith<$Res>  {
  factory $ExamScheduleDataCopyWith(ExamScheduleData value, $Res Function(ExamScheduleData) _then) = _$ExamScheduleDataCopyWithImpl;
@useResult
$Res call({
 List<PerExamScheduleRecord> exams, String semesterId, BigInt updateTime
});




}
/// @nodoc
class _$ExamScheduleDataCopyWithImpl<$Res>
    implements $ExamScheduleDataCopyWith<$Res> {
  _$ExamScheduleDataCopyWithImpl(this._self, this._then);

  final ExamScheduleData _self;
  final $Res Function(ExamScheduleData) _then;

/// Create a copy of ExamScheduleData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exams = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
exams: null == exams ? _self.exams : exams // ignore: cast_nullable_to_non_nullable
as List<PerExamScheduleRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamScheduleData].
extension ExamScheduleDataPatterns on ExamScheduleData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamScheduleData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamScheduleData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamScheduleData value)  $default,){
final _that = this;
switch (_that) {
case _ExamScheduleData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamScheduleData value)?  $default,){
final _that = this;
switch (_that) {
case _ExamScheduleData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PerExamScheduleRecord> exams,  String semesterId,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamScheduleData() when $default != null:
return $default(_that.exams,_that.semesterId,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PerExamScheduleRecord> exams,  String semesterId,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _ExamScheduleData():
return $default(_that.exams,_that.semesterId,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PerExamScheduleRecord> exams,  String semesterId,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _ExamScheduleData() when $default != null:
return $default(_that.exams,_that.semesterId,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _ExamScheduleData implements ExamScheduleData {
  const _ExamScheduleData({required final  List<PerExamScheduleRecord> exams, required this.semesterId, required this.updateTime}): _exams = exams;
  

 final  List<PerExamScheduleRecord> _exams;
@override List<PerExamScheduleRecord> get exams {
  if (_exams is EqualUnmodifiableListView) return _exams;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exams);
}

@override final  String semesterId;
@override final  BigInt updateTime;

/// Create a copy of ExamScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamScheduleDataCopyWith<_ExamScheduleData> get copyWith => __$ExamScheduleDataCopyWithImpl<_ExamScheduleData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamScheduleData&&const DeepCollectionEquality().equals(other._exams, _exams)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_exams),semesterId,updateTime);

@override
String toString() {
  return 'ExamScheduleData(exams: $exams, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$ExamScheduleDataCopyWith<$Res> implements $ExamScheduleDataCopyWith<$Res> {
  factory _$ExamScheduleDataCopyWith(_ExamScheduleData value, $Res Function(_ExamScheduleData) _then) = __$ExamScheduleDataCopyWithImpl;
@override @useResult
$Res call({
 List<PerExamScheduleRecord> exams, String semesterId, BigInt updateTime
});




}
/// @nodoc
class __$ExamScheduleDataCopyWithImpl<$Res>
    implements _$ExamScheduleDataCopyWith<$Res> {
  __$ExamScheduleDataCopyWithImpl(this._self, this._then);

  final _ExamScheduleData _self;
  final $Res Function(_ExamScheduleData) _then;

/// Create a copy of ExamScheduleData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exams = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_ExamScheduleData(
exams: null == exams ? _self._exams : exams // ignore: cast_nullable_to_non_nullable
as List<PerExamScheduleRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$ExamScheduleRecord {

 String get serial; String get slot; String get courseName; String get courseCode; String get courseType; String get courseId; String get examDate; String get examSession; String get reportingTime; String get examTime; String get venue; String get seatLocation; String get seatNo;
/// Create a copy of ExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExamScheduleRecordCopyWith<ExamScheduleRecord> get copyWith => _$ExamScheduleRecordCopyWithImpl<ExamScheduleRecord>(this as ExamScheduleRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExamScheduleRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.courseName, courseName) || other.courseName == courseName)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.examSession, examSession) || other.examSession == examSession)&&(identical(other.reportingTime, reportingTime) || other.reportingTime == reportingTime)&&(identical(other.examTime, examTime) || other.examTime == examTime)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.seatLocation, seatLocation) || other.seatLocation == seatLocation)&&(identical(other.seatNo, seatNo) || other.seatNo == seatNo));
}


@override
int get hashCode => Object.hash(runtimeType,serial,slot,courseName,courseCode,courseType,courseId,examDate,examSession,reportingTime,examTime,venue,seatLocation,seatNo);

@override
String toString() {
  return 'ExamScheduleRecord(serial: $serial, slot: $slot, courseName: $courseName, courseCode: $courseCode, courseType: $courseType, courseId: $courseId, examDate: $examDate, examSession: $examSession, reportingTime: $reportingTime, examTime: $examTime, venue: $venue, seatLocation: $seatLocation, seatNo: $seatNo)';
}


}

/// @nodoc
abstract mixin class $ExamScheduleRecordCopyWith<$Res>  {
  factory $ExamScheduleRecordCopyWith(ExamScheduleRecord value, $Res Function(ExamScheduleRecord) _then) = _$ExamScheduleRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String slot, String courseName, String courseCode, String courseType, String courseId, String examDate, String examSession, String reportingTime, String examTime, String venue, String seatLocation, String seatNo
});




}
/// @nodoc
class _$ExamScheduleRecordCopyWithImpl<$Res>
    implements $ExamScheduleRecordCopyWith<$Res> {
  _$ExamScheduleRecordCopyWithImpl(this._self, this._then);

  final ExamScheduleRecord _self;
  final $Res Function(ExamScheduleRecord) _then;

/// Create a copy of ExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? slot = null,Object? courseName = null,Object? courseCode = null,Object? courseType = null,Object? courseId = null,Object? examDate = null,Object? examSession = null,Object? reportingTime = null,Object? examTime = null,Object? venue = null,Object? seatLocation = null,Object? seatNo = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,courseName: null == courseName ? _self.courseName : courseName // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,examDate: null == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String,examSession: null == examSession ? _self.examSession : examSession // ignore: cast_nullable_to_non_nullable
as String,reportingTime: null == reportingTime ? _self.reportingTime : reportingTime // ignore: cast_nullable_to_non_nullable
as String,examTime: null == examTime ? _self.examTime : examTime // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,seatLocation: null == seatLocation ? _self.seatLocation : seatLocation // ignore: cast_nullable_to_non_nullable
as String,seatNo: null == seatNo ? _self.seatNo : seatNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExamScheduleRecord].
extension ExamScheduleRecordPatterns on ExamScheduleRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExamScheduleRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExamScheduleRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExamScheduleRecord value)  $default,){
final _that = this;
switch (_that) {
case _ExamScheduleRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExamScheduleRecord value)?  $default,){
final _that = this;
switch (_that) {
case _ExamScheduleRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String slot,  String courseName,  String courseCode,  String courseType,  String courseId,  String examDate,  String examSession,  String reportingTime,  String examTime,  String venue,  String seatLocation,  String seatNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExamScheduleRecord() when $default != null:
return $default(_that.serial,_that.slot,_that.courseName,_that.courseCode,_that.courseType,_that.courseId,_that.examDate,_that.examSession,_that.reportingTime,_that.examTime,_that.venue,_that.seatLocation,_that.seatNo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String slot,  String courseName,  String courseCode,  String courseType,  String courseId,  String examDate,  String examSession,  String reportingTime,  String examTime,  String venue,  String seatLocation,  String seatNo)  $default,) {final _that = this;
switch (_that) {
case _ExamScheduleRecord():
return $default(_that.serial,_that.slot,_that.courseName,_that.courseCode,_that.courseType,_that.courseId,_that.examDate,_that.examSession,_that.reportingTime,_that.examTime,_that.venue,_that.seatLocation,_that.seatNo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String slot,  String courseName,  String courseCode,  String courseType,  String courseId,  String examDate,  String examSession,  String reportingTime,  String examTime,  String venue,  String seatLocation,  String seatNo)?  $default,) {final _that = this;
switch (_that) {
case _ExamScheduleRecord() when $default != null:
return $default(_that.serial,_that.slot,_that.courseName,_that.courseCode,_that.courseType,_that.courseId,_that.examDate,_that.examSession,_that.reportingTime,_that.examTime,_that.venue,_that.seatLocation,_that.seatNo);case _:
  return null;

}
}

}

/// @nodoc


class _ExamScheduleRecord implements ExamScheduleRecord {
  const _ExamScheduleRecord({required this.serial, required this.slot, required this.courseName, required this.courseCode, required this.courseType, required this.courseId, required this.examDate, required this.examSession, required this.reportingTime, required this.examTime, required this.venue, required this.seatLocation, required this.seatNo});
  

@override final  String serial;
@override final  String slot;
@override final  String courseName;
@override final  String courseCode;
@override final  String courseType;
@override final  String courseId;
@override final  String examDate;
@override final  String examSession;
@override final  String reportingTime;
@override final  String examTime;
@override final  String venue;
@override final  String seatLocation;
@override final  String seatNo;

/// Create a copy of ExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExamScheduleRecordCopyWith<_ExamScheduleRecord> get copyWith => __$ExamScheduleRecordCopyWithImpl<_ExamScheduleRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExamScheduleRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.courseName, courseName) || other.courseName == courseName)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.examDate, examDate) || other.examDate == examDate)&&(identical(other.examSession, examSession) || other.examSession == examSession)&&(identical(other.reportingTime, reportingTime) || other.reportingTime == reportingTime)&&(identical(other.examTime, examTime) || other.examTime == examTime)&&(identical(other.venue, venue) || other.venue == venue)&&(identical(other.seatLocation, seatLocation) || other.seatLocation == seatLocation)&&(identical(other.seatNo, seatNo) || other.seatNo == seatNo));
}


@override
int get hashCode => Object.hash(runtimeType,serial,slot,courseName,courseCode,courseType,courseId,examDate,examSession,reportingTime,examTime,venue,seatLocation,seatNo);

@override
String toString() {
  return 'ExamScheduleRecord(serial: $serial, slot: $slot, courseName: $courseName, courseCode: $courseCode, courseType: $courseType, courseId: $courseId, examDate: $examDate, examSession: $examSession, reportingTime: $reportingTime, examTime: $examTime, venue: $venue, seatLocation: $seatLocation, seatNo: $seatNo)';
}


}

/// @nodoc
abstract mixin class _$ExamScheduleRecordCopyWith<$Res> implements $ExamScheduleRecordCopyWith<$Res> {
  factory _$ExamScheduleRecordCopyWith(_ExamScheduleRecord value, $Res Function(_ExamScheduleRecord) _then) = __$ExamScheduleRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String slot, String courseName, String courseCode, String courseType, String courseId, String examDate, String examSession, String reportingTime, String examTime, String venue, String seatLocation, String seatNo
});




}
/// @nodoc
class __$ExamScheduleRecordCopyWithImpl<$Res>
    implements _$ExamScheduleRecordCopyWith<$Res> {
  __$ExamScheduleRecordCopyWithImpl(this._self, this._then);

  final _ExamScheduleRecord _self;
  final $Res Function(_ExamScheduleRecord) _then;

/// Create a copy of ExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? slot = null,Object? courseName = null,Object? courseCode = null,Object? courseType = null,Object? courseId = null,Object? examDate = null,Object? examSession = null,Object? reportingTime = null,Object? examTime = null,Object? venue = null,Object? seatLocation = null,Object? seatNo = null,}) {
  return _then(_ExamScheduleRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,courseName: null == courseName ? _self.courseName : courseName // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,examDate: null == examDate ? _self.examDate : examDate // ignore: cast_nullable_to_non_nullable
as String,examSession: null == examSession ? _self.examSession : examSession // ignore: cast_nullable_to_non_nullable
as String,reportingTime: null == reportingTime ? _self.reportingTime : reportingTime // ignore: cast_nullable_to_non_nullable
as String,examTime: null == examTime ? _self.examTime : examTime // ignore: cast_nullable_to_non_nullable
as String,venue: null == venue ? _self.venue : venue // ignore: cast_nullable_to_non_nullable
as String,seatLocation: null == seatLocation ? _self.seatLocation : seatLocation // ignore: cast_nullable_to_non_nullable
as String,seatNo: null == seatNo ? _self.seatNo : seatNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FacultyDetails {

 String get name; String get designation; String get department; String get schoolCentre; String get email; String get cabinNumber; List<OfficeHour> get officeHours;
/// Create a copy of FacultyDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacultyDetailsCopyWith<FacultyDetails> get copyWith => _$FacultyDetailsCopyWithImpl<FacultyDetails>(this as FacultyDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacultyDetails&&(identical(other.name, name) || other.name == name)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.schoolCentre, schoolCentre) || other.schoolCentre == schoolCentre)&&(identical(other.email, email) || other.email == email)&&(identical(other.cabinNumber, cabinNumber) || other.cabinNumber == cabinNumber)&&const DeepCollectionEquality().equals(other.officeHours, officeHours));
}


@override
int get hashCode => Object.hash(runtimeType,name,designation,department,schoolCentre,email,cabinNumber,const DeepCollectionEquality().hash(officeHours));

@override
String toString() {
  return 'FacultyDetails(name: $name, designation: $designation, department: $department, schoolCentre: $schoolCentre, email: $email, cabinNumber: $cabinNumber, officeHours: $officeHours)';
}


}

/// @nodoc
abstract mixin class $FacultyDetailsCopyWith<$Res>  {
  factory $FacultyDetailsCopyWith(FacultyDetails value, $Res Function(FacultyDetails) _then) = _$FacultyDetailsCopyWithImpl;
@useResult
$Res call({
 String name, String designation, String department, String schoolCentre, String email, String cabinNumber, List<OfficeHour> officeHours
});




}
/// @nodoc
class _$FacultyDetailsCopyWithImpl<$Res>
    implements $FacultyDetailsCopyWith<$Res> {
  _$FacultyDetailsCopyWithImpl(this._self, this._then);

  final FacultyDetails _self;
  final $Res Function(FacultyDetails) _then;

/// Create a copy of FacultyDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? designation = null,Object? department = null,Object? schoolCentre = null,Object? email = null,Object? cabinNumber = null,Object? officeHours = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,schoolCentre: null == schoolCentre ? _self.schoolCentre : schoolCentre // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,cabinNumber: null == cabinNumber ? _self.cabinNumber : cabinNumber // ignore: cast_nullable_to_non_nullable
as String,officeHours: null == officeHours ? _self.officeHours : officeHours // ignore: cast_nullable_to_non_nullable
as List<OfficeHour>,
  ));
}

}


/// Adds pattern-matching-related methods to [FacultyDetails].
extension FacultyDetailsPatterns on FacultyDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacultyDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacultyDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacultyDetails value)  $default,){
final _that = this;
switch (_that) {
case _FacultyDetails():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacultyDetails value)?  $default,){
final _that = this;
switch (_that) {
case _FacultyDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String designation,  String department,  String schoolCentre,  String email,  String cabinNumber,  List<OfficeHour> officeHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacultyDetails() when $default != null:
return $default(_that.name,_that.designation,_that.department,_that.schoolCentre,_that.email,_that.cabinNumber,_that.officeHours);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String designation,  String department,  String schoolCentre,  String email,  String cabinNumber,  List<OfficeHour> officeHours)  $default,) {final _that = this;
switch (_that) {
case _FacultyDetails():
return $default(_that.name,_that.designation,_that.department,_that.schoolCentre,_that.email,_that.cabinNumber,_that.officeHours);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String designation,  String department,  String schoolCentre,  String email,  String cabinNumber,  List<OfficeHour> officeHours)?  $default,) {final _that = this;
switch (_that) {
case _FacultyDetails() when $default != null:
return $default(_that.name,_that.designation,_that.department,_that.schoolCentre,_that.email,_that.cabinNumber,_that.officeHours);case _:
  return null;

}
}

}

/// @nodoc


class _FacultyDetails implements FacultyDetails {
  const _FacultyDetails({required this.name, required this.designation, required this.department, required this.schoolCentre, required this.email, required this.cabinNumber, required final  List<OfficeHour> officeHours}): _officeHours = officeHours;
  

@override final  String name;
@override final  String designation;
@override final  String department;
@override final  String schoolCentre;
@override final  String email;
@override final  String cabinNumber;
 final  List<OfficeHour> _officeHours;
@override List<OfficeHour> get officeHours {
  if (_officeHours is EqualUnmodifiableListView) return _officeHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_officeHours);
}


/// Create a copy of FacultyDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacultyDetailsCopyWith<_FacultyDetails> get copyWith => __$FacultyDetailsCopyWithImpl<_FacultyDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacultyDetails&&(identical(other.name, name) || other.name == name)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.department, department) || other.department == department)&&(identical(other.schoolCentre, schoolCentre) || other.schoolCentre == schoolCentre)&&(identical(other.email, email) || other.email == email)&&(identical(other.cabinNumber, cabinNumber) || other.cabinNumber == cabinNumber)&&const DeepCollectionEquality().equals(other._officeHours, _officeHours));
}


@override
int get hashCode => Object.hash(runtimeType,name,designation,department,schoolCentre,email,cabinNumber,const DeepCollectionEquality().hash(_officeHours));

@override
String toString() {
  return 'FacultyDetails(name: $name, designation: $designation, department: $department, schoolCentre: $schoolCentre, email: $email, cabinNumber: $cabinNumber, officeHours: $officeHours)';
}


}

/// @nodoc
abstract mixin class _$FacultyDetailsCopyWith<$Res> implements $FacultyDetailsCopyWith<$Res> {
  factory _$FacultyDetailsCopyWith(_FacultyDetails value, $Res Function(_FacultyDetails) _then) = __$FacultyDetailsCopyWithImpl;
@override @useResult
$Res call({
 String name, String designation, String department, String schoolCentre, String email, String cabinNumber, List<OfficeHour> officeHours
});




}
/// @nodoc
class __$FacultyDetailsCopyWithImpl<$Res>
    implements _$FacultyDetailsCopyWith<$Res> {
  __$FacultyDetailsCopyWithImpl(this._self, this._then);

  final _FacultyDetails _self;
  final $Res Function(_FacultyDetails) _then;

/// Create a copy of FacultyDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? designation = null,Object? department = null,Object? schoolCentre = null,Object? email = null,Object? cabinNumber = null,Object? officeHours = null,}) {
  return _then(_FacultyDetails(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,schoolCentre: null == schoolCentre ? _self.schoolCentre : schoolCentre // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,cabinNumber: null == cabinNumber ? _self.cabinNumber : cabinNumber // ignore: cast_nullable_to_non_nullable
as String,officeHours: null == officeHours ? _self._officeHours : officeHours // ignore: cast_nullable_to_non_nullable
as List<OfficeHour>,
  ));
}


}

/// @nodoc
mixin _$FullAttendanceData {

 List<FullAttendanceRecord> get records; String get semesterId; BigInt get updateTime; String get courseId; String get courseType;
/// Create a copy of FullAttendanceData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullAttendanceDataCopyWith<FullAttendanceData> get copyWith => _$FullAttendanceDataCopyWithImpl<FullAttendanceData>(this as FullAttendanceData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullAttendanceData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseType, courseType) || other.courseType == courseType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),semesterId,updateTime,courseId,courseType);

@override
String toString() {
  return 'FullAttendanceData(records: $records, semesterId: $semesterId, updateTime: $updateTime, courseId: $courseId, courseType: $courseType)';
}


}

/// @nodoc
abstract mixin class $FullAttendanceDataCopyWith<$Res>  {
  factory $FullAttendanceDataCopyWith(FullAttendanceData value, $Res Function(FullAttendanceData) _then) = _$FullAttendanceDataCopyWithImpl;
@useResult
$Res call({
 List<FullAttendanceRecord> records, String semesterId, BigInt updateTime, String courseId, String courseType
});




}
/// @nodoc
class _$FullAttendanceDataCopyWithImpl<$Res>
    implements $FullAttendanceDataCopyWith<$Res> {
  _$FullAttendanceDataCopyWithImpl(this._self, this._then);

  final FullAttendanceData _self;
  final $Res Function(FullAttendanceData) _then;

/// Create a copy of FullAttendanceData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,Object? courseId = null,Object? courseType = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<FullAttendanceRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FullAttendanceData].
extension FullAttendanceDataPatterns on FullAttendanceData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FullAttendanceData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FullAttendanceData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FullAttendanceData value)  $default,){
final _that = this;
switch (_that) {
case _FullAttendanceData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FullAttendanceData value)?  $default,){
final _that = this;
switch (_that) {
case _FullAttendanceData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FullAttendanceRecord> records,  String semesterId,  BigInt updateTime,  String courseId,  String courseType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FullAttendanceData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime,_that.courseId,_that.courseType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FullAttendanceRecord> records,  String semesterId,  BigInt updateTime,  String courseId,  String courseType)  $default,) {final _that = this;
switch (_that) {
case _FullAttendanceData():
return $default(_that.records,_that.semesterId,_that.updateTime,_that.courseId,_that.courseType);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FullAttendanceRecord> records,  String semesterId,  BigInt updateTime,  String courseId,  String courseType)?  $default,) {final _that = this;
switch (_that) {
case _FullAttendanceData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime,_that.courseId,_that.courseType);case _:
  return null;

}
}

}

/// @nodoc


class _FullAttendanceData implements FullAttendanceData {
  const _FullAttendanceData({required final  List<FullAttendanceRecord> records, required this.semesterId, required this.updateTime, required this.courseId, required this.courseType}): _records = records;
  

 final  List<FullAttendanceRecord> _records;
@override List<FullAttendanceRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  String semesterId;
@override final  BigInt updateTime;
@override final  String courseId;
@override final  String courseType;

/// Create a copy of FullAttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullAttendanceDataCopyWith<_FullAttendanceData> get copyWith => __$FullAttendanceDataCopyWithImpl<_FullAttendanceData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullAttendanceData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.courseType, courseType) || other.courseType == courseType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),semesterId,updateTime,courseId,courseType);

@override
String toString() {
  return 'FullAttendanceData(records: $records, semesterId: $semesterId, updateTime: $updateTime, courseId: $courseId, courseType: $courseType)';
}


}

/// @nodoc
abstract mixin class _$FullAttendanceDataCopyWith<$Res> implements $FullAttendanceDataCopyWith<$Res> {
  factory _$FullAttendanceDataCopyWith(_FullAttendanceData value, $Res Function(_FullAttendanceData) _then) = __$FullAttendanceDataCopyWithImpl;
@override @useResult
$Res call({
 List<FullAttendanceRecord> records, String semesterId, BigInt updateTime, String courseId, String courseType
});




}
/// @nodoc
class __$FullAttendanceDataCopyWithImpl<$Res>
    implements _$FullAttendanceDataCopyWith<$Res> {
  __$FullAttendanceDataCopyWithImpl(this._self, this._then);

  final _FullAttendanceData _self;
  final $Res Function(_FullAttendanceData) _then;

/// Create a copy of FullAttendanceData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,Object? courseId = null,Object? courseType = null,}) {
  return _then(_FullAttendanceData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<FullAttendanceRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$FullAttendanceRecord {

 String get serial; String get date; String get slot; String get dayTime; String get status; String get remark;
/// Create a copy of FullAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullAttendanceRecordCopyWith<FullAttendanceRecord> get copyWith => _$FullAttendanceRecordCopyWithImpl<FullAttendanceRecord>(this as FullAttendanceRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullAttendanceRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.date, date) || other.date == date)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.dayTime, dayTime) || other.dayTime == dayTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.remark, remark) || other.remark == remark));
}


@override
int get hashCode => Object.hash(runtimeType,serial,date,slot,dayTime,status,remark);

@override
String toString() {
  return 'FullAttendanceRecord(serial: $serial, date: $date, slot: $slot, dayTime: $dayTime, status: $status, remark: $remark)';
}


}

/// @nodoc
abstract mixin class $FullAttendanceRecordCopyWith<$Res>  {
  factory $FullAttendanceRecordCopyWith(FullAttendanceRecord value, $Res Function(FullAttendanceRecord) _then) = _$FullAttendanceRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String date, String slot, String dayTime, String status, String remark
});




}
/// @nodoc
class _$FullAttendanceRecordCopyWithImpl<$Res>
    implements $FullAttendanceRecordCopyWith<$Res> {
  _$FullAttendanceRecordCopyWithImpl(this._self, this._then);

  final FullAttendanceRecord _self;
  final $Res Function(FullAttendanceRecord) _then;

/// Create a copy of FullAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? date = null,Object? slot = null,Object? dayTime = null,Object? status = null,Object? remark = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,dayTime: null == dayTime ? _self.dayTime : dayTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remark: null == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FullAttendanceRecord].
extension FullAttendanceRecordPatterns on FullAttendanceRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FullAttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FullAttendanceRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FullAttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _FullAttendanceRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FullAttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _FullAttendanceRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String date,  String slot,  String dayTime,  String status,  String remark)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FullAttendanceRecord() when $default != null:
return $default(_that.serial,_that.date,_that.slot,_that.dayTime,_that.status,_that.remark);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String date,  String slot,  String dayTime,  String status,  String remark)  $default,) {final _that = this;
switch (_that) {
case _FullAttendanceRecord():
return $default(_that.serial,_that.date,_that.slot,_that.dayTime,_that.status,_that.remark);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String date,  String slot,  String dayTime,  String status,  String remark)?  $default,) {final _that = this;
switch (_that) {
case _FullAttendanceRecord() when $default != null:
return $default(_that.serial,_that.date,_that.slot,_that.dayTime,_that.status,_that.remark);case _:
  return null;

}
}

}

/// @nodoc


class _FullAttendanceRecord implements FullAttendanceRecord {
  const _FullAttendanceRecord({required this.serial, required this.date, required this.slot, required this.dayTime, required this.status, required this.remark});
  

@override final  String serial;
@override final  String date;
@override final  String slot;
@override final  String dayTime;
@override final  String status;
@override final  String remark;

/// Create a copy of FullAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FullAttendanceRecordCopyWith<_FullAttendanceRecord> get copyWith => __$FullAttendanceRecordCopyWithImpl<_FullAttendanceRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FullAttendanceRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.date, date) || other.date == date)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.dayTime, dayTime) || other.dayTime == dayTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.remark, remark) || other.remark == remark));
}


@override
int get hashCode => Object.hash(runtimeType,serial,date,slot,dayTime,status,remark);

@override
String toString() {
  return 'FullAttendanceRecord(serial: $serial, date: $date, slot: $slot, dayTime: $dayTime, status: $status, remark: $remark)';
}


}

/// @nodoc
abstract mixin class _$FullAttendanceRecordCopyWith<$Res> implements $FullAttendanceRecordCopyWith<$Res> {
  factory _$FullAttendanceRecordCopyWith(_FullAttendanceRecord value, $Res Function(_FullAttendanceRecord) _then) = __$FullAttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String date, String slot, String dayTime, String status, String remark
});




}
/// @nodoc
class __$FullAttendanceRecordCopyWithImpl<$Res>
    implements _$FullAttendanceRecordCopyWith<$Res> {
  __$FullAttendanceRecordCopyWithImpl(this._self, this._then);

  final _FullAttendanceRecord _self;
  final $Res Function(_FullAttendanceRecord) _then;

/// Create a copy of FullAttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? date = null,Object? slot = null,Object? dayTime = null,Object? status = null,Object? remark = null,}) {
  return _then(_FullAttendanceRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,dayTime: null == dayTime ? _self.dayTime : dayTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,remark: null == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetFaculty {

 String get facultyName; String get designation; String get schoolOrCentre; String get empId;
/// Create a copy of GetFaculty
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFacultyCopyWith<GetFaculty> get copyWith => _$GetFacultyCopyWithImpl<GetFaculty>(this as GetFaculty, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFaculty&&(identical(other.facultyName, facultyName) || other.facultyName == facultyName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.schoolOrCentre, schoolOrCentre) || other.schoolOrCentre == schoolOrCentre)&&(identical(other.empId, empId) || other.empId == empId));
}


@override
int get hashCode => Object.hash(runtimeType,facultyName,designation,schoolOrCentre,empId);

@override
String toString() {
  return 'GetFaculty(facultyName: $facultyName, designation: $designation, schoolOrCentre: $schoolOrCentre, empId: $empId)';
}


}

/// @nodoc
abstract mixin class $GetFacultyCopyWith<$Res>  {
  factory $GetFacultyCopyWith(GetFaculty value, $Res Function(GetFaculty) _then) = _$GetFacultyCopyWithImpl;
@useResult
$Res call({
 String facultyName, String designation, String schoolOrCentre, String empId
});




}
/// @nodoc
class _$GetFacultyCopyWithImpl<$Res>
    implements $GetFacultyCopyWith<$Res> {
  _$GetFacultyCopyWithImpl(this._self, this._then);

  final GetFaculty _self;
  final $Res Function(GetFaculty) _then;

/// Create a copy of GetFaculty
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? facultyName = null,Object? designation = null,Object? schoolOrCentre = null,Object? empId = null,}) {
  return _then(_self.copyWith(
facultyName: null == facultyName ? _self.facultyName : facultyName // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,schoolOrCentre: null == schoolOrCentre ? _self.schoolOrCentre : schoolOrCentre // ignore: cast_nullable_to_non_nullable
as String,empId: null == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GetFaculty].
extension GetFacultyPatterns on GetFaculty {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetFaculty value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFaculty() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetFaculty value)  $default,){
final _that = this;
switch (_that) {
case _GetFaculty():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetFaculty value)?  $default,){
final _that = this;
switch (_that) {
case _GetFaculty() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String facultyName,  String designation,  String schoolOrCentre,  String empId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFaculty() when $default != null:
return $default(_that.facultyName,_that.designation,_that.schoolOrCentre,_that.empId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String facultyName,  String designation,  String schoolOrCentre,  String empId)  $default,) {final _that = this;
switch (_that) {
case _GetFaculty():
return $default(_that.facultyName,_that.designation,_that.schoolOrCentre,_that.empId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String facultyName,  String designation,  String schoolOrCentre,  String empId)?  $default,) {final _that = this;
switch (_that) {
case _GetFaculty() when $default != null:
return $default(_that.facultyName,_that.designation,_that.schoolOrCentre,_that.empId);case _:
  return null;

}
}

}

/// @nodoc


class _GetFaculty implements GetFaculty {
  const _GetFaculty({required this.facultyName, required this.designation, required this.schoolOrCentre, required this.empId});
  

@override final  String facultyName;
@override final  String designation;
@override final  String schoolOrCentre;
@override final  String empId;

/// Create a copy of GetFaculty
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFacultyCopyWith<_GetFaculty> get copyWith => __$GetFacultyCopyWithImpl<_GetFaculty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFaculty&&(identical(other.facultyName, facultyName) || other.facultyName == facultyName)&&(identical(other.designation, designation) || other.designation == designation)&&(identical(other.schoolOrCentre, schoolOrCentre) || other.schoolOrCentre == schoolOrCentre)&&(identical(other.empId, empId) || other.empId == empId));
}


@override
int get hashCode => Object.hash(runtimeType,facultyName,designation,schoolOrCentre,empId);

@override
String toString() {
  return 'GetFaculty(facultyName: $facultyName, designation: $designation, schoolOrCentre: $schoolOrCentre, empId: $empId)';
}


}

/// @nodoc
abstract mixin class _$GetFacultyCopyWith<$Res> implements $GetFacultyCopyWith<$Res> {
  factory _$GetFacultyCopyWith(_GetFaculty value, $Res Function(_GetFaculty) _then) = __$GetFacultyCopyWithImpl;
@override @useResult
$Res call({
 String facultyName, String designation, String schoolOrCentre, String empId
});




}
/// @nodoc
class __$GetFacultyCopyWithImpl<$Res>
    implements _$GetFacultyCopyWith<$Res> {
  __$GetFacultyCopyWithImpl(this._self, this._then);

  final _GetFaculty _self;
  final $Res Function(_GetFaculty) _then;

/// Create a copy of GetFaculty
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? facultyName = null,Object? designation = null,Object? schoolOrCentre = null,Object? empId = null,}) {
  return _then(_GetFaculty(
facultyName: null == facultyName ? _self.facultyName : facultyName // ignore: cast_nullable_to_non_nullable
as String,designation: null == designation ? _self.designation : designation // ignore: cast_nullable_to_non_nullable
as String,schoolOrCentre: null == schoolOrCentre ? _self.schoolOrCentre : schoolOrCentre // ignore: cast_nullable_to_non_nullable
as String,empId: null == empId ? _self.empId : empId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HostelLeaveData {

 List<LeaveRecord> get records; BigInt get updateTime;
/// Create a copy of HostelLeaveData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostelLeaveDataCopyWith<HostelLeaveData> get copyWith => _$HostelLeaveDataCopyWithImpl<HostelLeaveData>(this as HostelLeaveData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostelLeaveData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),updateTime);

@override
String toString() {
  return 'HostelLeaveData(records: $records, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $HostelLeaveDataCopyWith<$Res>  {
  factory $HostelLeaveDataCopyWith(HostelLeaveData value, $Res Function(HostelLeaveData) _then) = _$HostelLeaveDataCopyWithImpl;
@useResult
$Res call({
 List<LeaveRecord> records, BigInt updateTime
});




}
/// @nodoc
class _$HostelLeaveDataCopyWithImpl<$Res>
    implements $HostelLeaveDataCopyWith<$Res> {
  _$HostelLeaveDataCopyWithImpl(this._self, this._then);

  final HostelLeaveData _self;
  final $Res Function(HostelLeaveData) _then;

/// Create a copy of HostelLeaveData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<LeaveRecord>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [HostelLeaveData].
extension HostelLeaveDataPatterns on HostelLeaveData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostelLeaveData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostelLeaveData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostelLeaveData value)  $default,){
final _that = this;
switch (_that) {
case _HostelLeaveData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostelLeaveData value)?  $default,){
final _that = this;
switch (_that) {
case _HostelLeaveData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<LeaveRecord> records,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostelLeaveData() when $default != null:
return $default(_that.records,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<LeaveRecord> records,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _HostelLeaveData():
return $default(_that.records,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<LeaveRecord> records,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _HostelLeaveData() when $default != null:
return $default(_that.records,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _HostelLeaveData implements HostelLeaveData {
  const _HostelLeaveData({required final  List<LeaveRecord> records, required this.updateTime}): _records = records;
  

 final  List<LeaveRecord> _records;
@override List<LeaveRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  BigInt updateTime;

/// Create a copy of HostelLeaveData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostelLeaveDataCopyWith<_HostelLeaveData> get copyWith => __$HostelLeaveDataCopyWithImpl<_HostelLeaveData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostelLeaveData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),updateTime);

@override
String toString() {
  return 'HostelLeaveData(records: $records, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$HostelLeaveDataCopyWith<$Res> implements $HostelLeaveDataCopyWith<$Res> {
  factory _$HostelLeaveDataCopyWith(_HostelLeaveData value, $Res Function(_HostelLeaveData) _then) = __$HostelLeaveDataCopyWithImpl;
@override @useResult
$Res call({
 List<LeaveRecord> records, BigInt updateTime
});




}
/// @nodoc
class __$HostelLeaveDataCopyWithImpl<$Res>
    implements _$HostelLeaveDataCopyWith<$Res> {
  __$HostelLeaveDataCopyWithImpl(this._self, this._then);

  final _HostelLeaveData _self;
  final $Res Function(_HostelLeaveData) _then;

/// Create a copy of HostelLeaveData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? updateTime = null,}) {
  return _then(_HostelLeaveData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<LeaveRecord>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$HostelOutingData {

 List<OutingRecord> get records; BigInt get updateTime;
/// Create a copy of HostelOutingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostelOutingDataCopyWith<HostelOutingData> get copyWith => _$HostelOutingDataCopyWithImpl<HostelOutingData>(this as HostelOutingData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostelOutingData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),updateTime);

@override
String toString() {
  return 'HostelOutingData(records: $records, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $HostelOutingDataCopyWith<$Res>  {
  factory $HostelOutingDataCopyWith(HostelOutingData value, $Res Function(HostelOutingData) _then) = _$HostelOutingDataCopyWithImpl;
@useResult
$Res call({
 List<OutingRecord> records, BigInt updateTime
});




}
/// @nodoc
class _$HostelOutingDataCopyWithImpl<$Res>
    implements $HostelOutingDataCopyWith<$Res> {
  _$HostelOutingDataCopyWithImpl(this._self, this._then);

  final HostelOutingData _self;
  final $Res Function(HostelOutingData) _then;

/// Create a copy of HostelOutingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<OutingRecord>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [HostelOutingData].
extension HostelOutingDataPatterns on HostelOutingData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostelOutingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostelOutingData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostelOutingData value)  $default,){
final _that = this;
switch (_that) {
case _HostelOutingData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostelOutingData value)?  $default,){
final _that = this;
switch (_that) {
case _HostelOutingData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OutingRecord> records,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostelOutingData() when $default != null:
return $default(_that.records,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OutingRecord> records,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _HostelOutingData():
return $default(_that.records,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OutingRecord> records,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _HostelOutingData() when $default != null:
return $default(_that.records,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _HostelOutingData implements HostelOutingData {
  const _HostelOutingData({required final  List<OutingRecord> records, required this.updateTime}): _records = records;
  

 final  List<OutingRecord> _records;
@override List<OutingRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  BigInt updateTime;

/// Create a copy of HostelOutingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostelOutingDataCopyWith<_HostelOutingData> get copyWith => __$HostelOutingDataCopyWithImpl<_HostelOutingData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostelOutingData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),updateTime);

@override
String toString() {
  return 'HostelOutingData(records: $records, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$HostelOutingDataCopyWith<$Res> implements $HostelOutingDataCopyWith<$Res> {
  factory _$HostelOutingDataCopyWith(_HostelOutingData value, $Res Function(_HostelOutingData) _then) = __$HostelOutingDataCopyWithImpl;
@override @useResult
$Res call({
 List<OutingRecord> records, BigInt updateTime
});




}
/// @nodoc
class __$HostelOutingDataCopyWithImpl<$Res>
    implements _$HostelOutingDataCopyWith<$Res> {
  __$HostelOutingDataCopyWithImpl(this._self, this._then);

  final _HostelOutingData _self;
  final $Res Function(_HostelOutingData) _then;

/// Create a copy of HostelOutingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? updateTime = null,}) {
  return _then(_HostelOutingData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<OutingRecord>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$LeaveRecord {

 String get serial; String get registrationNumber; String get placeOfVisit; String get purposeOfVisit; String get fromDate; String get fromTime; String get toDate; String get toTime; String get status; bool get canDownload; String get leaveId;
/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRecordCopyWith<LeaveRecord> get copyWith => _$LeaveRecordCopyWithImpl<LeaveRecord>(this as LeaveRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.placeOfVisit, placeOfVisit) || other.placeOfVisit == placeOfVisit)&&(identical(other.purposeOfVisit, purposeOfVisit) || other.purposeOfVisit == purposeOfVisit)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.fromTime, fromTime) || other.fromTime == fromTime)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.toTime, toTime) || other.toTime == toTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.canDownload, canDownload) || other.canDownload == canDownload)&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId));
}


@override
int get hashCode => Object.hash(runtimeType,serial,registrationNumber,placeOfVisit,purposeOfVisit,fromDate,fromTime,toDate,toTime,status,canDownload,leaveId);

@override
String toString() {
  return 'LeaveRecord(serial: $serial, registrationNumber: $registrationNumber, placeOfVisit: $placeOfVisit, purposeOfVisit: $purposeOfVisit, fromDate: $fromDate, fromTime: $fromTime, toDate: $toDate, toTime: $toTime, status: $status, canDownload: $canDownload, leaveId: $leaveId)';
}


}

/// @nodoc
abstract mixin class $LeaveRecordCopyWith<$Res>  {
  factory $LeaveRecordCopyWith(LeaveRecord value, $Res Function(LeaveRecord) _then) = _$LeaveRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String registrationNumber, String placeOfVisit, String purposeOfVisit, String fromDate, String fromTime, String toDate, String toTime, String status, bool canDownload, String leaveId
});




}
/// @nodoc
class _$LeaveRecordCopyWithImpl<$Res>
    implements $LeaveRecordCopyWith<$Res> {
  _$LeaveRecordCopyWithImpl(this._self, this._then);

  final LeaveRecord _self;
  final $Res Function(LeaveRecord) _then;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? registrationNumber = null,Object? placeOfVisit = null,Object? purposeOfVisit = null,Object? fromDate = null,Object? fromTime = null,Object? toDate = null,Object? toTime = null,Object? status = null,Object? canDownload = null,Object? leaveId = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,placeOfVisit: null == placeOfVisit ? _self.placeOfVisit : placeOfVisit // ignore: cast_nullable_to_non_nullable
as String,purposeOfVisit: null == purposeOfVisit ? _self.purposeOfVisit : purposeOfVisit // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,fromTime: null == fromTime ? _self.fromTime : fromTime // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,toTime: null == toTime ? _self.toTime : toTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canDownload: null == canDownload ? _self.canDownload : canDownload // ignore: cast_nullable_to_non_nullable
as bool,leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveRecord].
extension LeaveRecordPatterns on LeaveRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRecord value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRecord value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String registrationNumber,  String placeOfVisit,  String purposeOfVisit,  String fromDate,  String fromTime,  String toDate,  String toTime,  String status,  bool canDownload,  String leaveId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that.serial,_that.registrationNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.fromDate,_that.fromTime,_that.toDate,_that.toTime,_that.status,_that.canDownload,_that.leaveId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String registrationNumber,  String placeOfVisit,  String purposeOfVisit,  String fromDate,  String fromTime,  String toDate,  String toTime,  String status,  bool canDownload,  String leaveId)  $default,) {final _that = this;
switch (_that) {
case _LeaveRecord():
return $default(_that.serial,_that.registrationNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.fromDate,_that.fromTime,_that.toDate,_that.toTime,_that.status,_that.canDownload,_that.leaveId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String registrationNumber,  String placeOfVisit,  String purposeOfVisit,  String fromDate,  String fromTime,  String toDate,  String toTime,  String status,  bool canDownload,  String leaveId)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRecord() when $default != null:
return $default(_that.serial,_that.registrationNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.fromDate,_that.fromTime,_that.toDate,_that.toTime,_that.status,_that.canDownload,_that.leaveId);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveRecord implements LeaveRecord {
  const _LeaveRecord({required this.serial, required this.registrationNumber, required this.placeOfVisit, required this.purposeOfVisit, required this.fromDate, required this.fromTime, required this.toDate, required this.toTime, required this.status, required this.canDownload, required this.leaveId});
  

@override final  String serial;
@override final  String registrationNumber;
@override final  String placeOfVisit;
@override final  String purposeOfVisit;
@override final  String fromDate;
@override final  String fromTime;
@override final  String toDate;
@override final  String toTime;
@override final  String status;
@override final  bool canDownload;
@override final  String leaveId;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRecordCopyWith<_LeaveRecord> get copyWith => __$LeaveRecordCopyWithImpl<_LeaveRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.placeOfVisit, placeOfVisit) || other.placeOfVisit == placeOfVisit)&&(identical(other.purposeOfVisit, purposeOfVisit) || other.purposeOfVisit == purposeOfVisit)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.fromTime, fromTime) || other.fromTime == fromTime)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.toTime, toTime) || other.toTime == toTime)&&(identical(other.status, status) || other.status == status)&&(identical(other.canDownload, canDownload) || other.canDownload == canDownload)&&(identical(other.leaveId, leaveId) || other.leaveId == leaveId));
}


@override
int get hashCode => Object.hash(runtimeType,serial,registrationNumber,placeOfVisit,purposeOfVisit,fromDate,fromTime,toDate,toTime,status,canDownload,leaveId);

@override
String toString() {
  return 'LeaveRecord(serial: $serial, registrationNumber: $registrationNumber, placeOfVisit: $placeOfVisit, purposeOfVisit: $purposeOfVisit, fromDate: $fromDate, fromTime: $fromTime, toDate: $toDate, toTime: $toTime, status: $status, canDownload: $canDownload, leaveId: $leaveId)';
}


}

/// @nodoc
abstract mixin class _$LeaveRecordCopyWith<$Res> implements $LeaveRecordCopyWith<$Res> {
  factory _$LeaveRecordCopyWith(_LeaveRecord value, $Res Function(_LeaveRecord) _then) = __$LeaveRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String registrationNumber, String placeOfVisit, String purposeOfVisit, String fromDate, String fromTime, String toDate, String toTime, String status, bool canDownload, String leaveId
});




}
/// @nodoc
class __$LeaveRecordCopyWithImpl<$Res>
    implements _$LeaveRecordCopyWith<$Res> {
  __$LeaveRecordCopyWithImpl(this._self, this._then);

  final _LeaveRecord _self;
  final $Res Function(_LeaveRecord) _then;

/// Create a copy of LeaveRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? registrationNumber = null,Object? placeOfVisit = null,Object? purposeOfVisit = null,Object? fromDate = null,Object? fromTime = null,Object? toDate = null,Object? toTime = null,Object? status = null,Object? canDownload = null,Object? leaveId = null,}) {
  return _then(_LeaveRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,placeOfVisit: null == placeOfVisit ? _self.placeOfVisit : placeOfVisit // ignore: cast_nullable_to_non_nullable
as String,purposeOfVisit: null == purposeOfVisit ? _self.purposeOfVisit : purposeOfVisit // ignore: cast_nullable_to_non_nullable
as String,fromDate: null == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as String,fromTime: null == fromTime ? _self.fromTime : fromTime // ignore: cast_nullable_to_non_nullable
as String,toDate: null == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as String,toTime: null == toTime ? _self.toTime : toTime // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canDownload: null == canDownload ? _self.canDownload : canDownload // ignore: cast_nullable_to_non_nullable
as bool,leaveId: null == leaveId ? _self.leaveId : leaveId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MarksData {

 List<MarksRecord> get records; String get semesterId; BigInt get updateTime;
/// Create a copy of MarksData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarksDataCopyWith<MarksData> get copyWith => _$MarksDataCopyWithImpl<MarksData>(this as MarksData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarksData&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),semesterId,updateTime);

@override
String toString() {
  return 'MarksData(records: $records, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $MarksDataCopyWith<$Res>  {
  factory $MarksDataCopyWith(MarksData value, $Res Function(MarksData) _then) = _$MarksDataCopyWithImpl;
@useResult
$Res call({
 List<MarksRecord> records, String semesterId, BigInt updateTime
});




}
/// @nodoc
class _$MarksDataCopyWithImpl<$Res>
    implements $MarksDataCopyWith<$Res> {
  _$MarksDataCopyWithImpl(this._self, this._then);

  final MarksData _self;
  final $Res Function(MarksData) _then;

/// Create a copy of MarksData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<MarksRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [MarksData].
extension MarksDataPatterns on MarksData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarksData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarksData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarksData value)  $default,){
final _that = this;
switch (_that) {
case _MarksData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarksData value)?  $default,){
final _that = this;
switch (_that) {
case _MarksData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MarksRecord> records,  String semesterId,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarksData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MarksRecord> records,  String semesterId,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _MarksData():
return $default(_that.records,_that.semesterId,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MarksRecord> records,  String semesterId,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _MarksData() when $default != null:
return $default(_that.records,_that.semesterId,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _MarksData implements MarksData {
  const _MarksData({required final  List<MarksRecord> records, required this.semesterId, required this.updateTime}): _records = records;
  

 final  List<MarksRecord> _records;
@override List<MarksRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  String semesterId;
@override final  BigInt updateTime;

/// Create a copy of MarksData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksDataCopyWith<_MarksData> get copyWith => __$MarksDataCopyWithImpl<_MarksData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksData&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),semesterId,updateTime);

@override
String toString() {
  return 'MarksData(records: $records, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$MarksDataCopyWith<$Res> implements $MarksDataCopyWith<$Res> {
  factory _$MarksDataCopyWith(_MarksData value, $Res Function(_MarksData) _then) = __$MarksDataCopyWithImpl;
@override @useResult
$Res call({
 List<MarksRecord> records, String semesterId, BigInt updateTime
});




}
/// @nodoc
class __$MarksDataCopyWithImpl<$Res>
    implements _$MarksDataCopyWith<$Res> {
  __$MarksDataCopyWithImpl(this._self, this._then);

  final _MarksData _self;
  final $Res Function(_MarksData) _then;

/// Create a copy of MarksData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_MarksData(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<MarksRecord>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$MarksRecord {

 String get serial; String get coursecode; String get coursetitle; String get coursetype; String get faculity; String get slot; List<MarksRecordEach> get marks;
/// Create a copy of MarksRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarksRecordCopyWith<MarksRecord> get copyWith => _$MarksRecordCopyWithImpl<MarksRecord>(this as MarksRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarksRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.coursecode, coursecode) || other.coursecode == coursecode)&&(identical(other.coursetitle, coursetitle) || other.coursetitle == coursetitle)&&(identical(other.coursetype, coursetype) || other.coursetype == coursetype)&&(identical(other.faculity, faculity) || other.faculity == faculity)&&(identical(other.slot, slot) || other.slot == slot)&&const DeepCollectionEquality().equals(other.marks, marks));
}


@override
int get hashCode => Object.hash(runtimeType,serial,coursecode,coursetitle,coursetype,faculity,slot,const DeepCollectionEquality().hash(marks));

@override
String toString() {
  return 'MarksRecord(serial: $serial, coursecode: $coursecode, coursetitle: $coursetitle, coursetype: $coursetype, faculity: $faculity, slot: $slot, marks: $marks)';
}


}

/// @nodoc
abstract mixin class $MarksRecordCopyWith<$Res>  {
  factory $MarksRecordCopyWith(MarksRecord value, $Res Function(MarksRecord) _then) = _$MarksRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String coursecode, String coursetitle, String coursetype, String faculity, String slot, List<MarksRecordEach> marks
});




}
/// @nodoc
class _$MarksRecordCopyWithImpl<$Res>
    implements $MarksRecordCopyWith<$Res> {
  _$MarksRecordCopyWithImpl(this._self, this._then);

  final MarksRecord _self;
  final $Res Function(MarksRecord) _then;

/// Create a copy of MarksRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? coursecode = null,Object? coursetitle = null,Object? coursetype = null,Object? faculity = null,Object? slot = null,Object? marks = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,coursecode: null == coursecode ? _self.coursecode : coursecode // ignore: cast_nullable_to_non_nullable
as String,coursetitle: null == coursetitle ? _self.coursetitle : coursetitle // ignore: cast_nullable_to_non_nullable
as String,coursetype: null == coursetype ? _self.coursetype : coursetype // ignore: cast_nullable_to_non_nullable
as String,faculity: null == faculity ? _self.faculity : faculity // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,marks: null == marks ? _self.marks : marks // ignore: cast_nullable_to_non_nullable
as List<MarksRecordEach>,
  ));
}

}


/// Adds pattern-matching-related methods to [MarksRecord].
extension MarksRecordPatterns on MarksRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarksRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarksRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarksRecord value)  $default,){
final _that = this;
switch (_that) {
case _MarksRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarksRecord value)?  $default,){
final _that = this;
switch (_that) {
case _MarksRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String coursecode,  String coursetitle,  String coursetype,  String faculity,  String slot,  List<MarksRecordEach> marks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarksRecord() when $default != null:
return $default(_that.serial,_that.coursecode,_that.coursetitle,_that.coursetype,_that.faculity,_that.slot,_that.marks);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String coursecode,  String coursetitle,  String coursetype,  String faculity,  String slot,  List<MarksRecordEach> marks)  $default,) {final _that = this;
switch (_that) {
case _MarksRecord():
return $default(_that.serial,_that.coursecode,_that.coursetitle,_that.coursetype,_that.faculity,_that.slot,_that.marks);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String coursecode,  String coursetitle,  String coursetype,  String faculity,  String slot,  List<MarksRecordEach> marks)?  $default,) {final _that = this;
switch (_that) {
case _MarksRecord() when $default != null:
return $default(_that.serial,_that.coursecode,_that.coursetitle,_that.coursetype,_that.faculity,_that.slot,_that.marks);case _:
  return null;

}
}

}

/// @nodoc


class _MarksRecord implements MarksRecord {
  const _MarksRecord({required this.serial, required this.coursecode, required this.coursetitle, required this.coursetype, required this.faculity, required this.slot, required final  List<MarksRecordEach> marks}): _marks = marks;
  

@override final  String serial;
@override final  String coursecode;
@override final  String coursetitle;
@override final  String coursetype;
@override final  String faculity;
@override final  String slot;
 final  List<MarksRecordEach> _marks;
@override List<MarksRecordEach> get marks {
  if (_marks is EqualUnmodifiableListView) return _marks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_marks);
}


/// Create a copy of MarksRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksRecordCopyWith<_MarksRecord> get copyWith => __$MarksRecordCopyWithImpl<_MarksRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.coursecode, coursecode) || other.coursecode == coursecode)&&(identical(other.coursetitle, coursetitle) || other.coursetitle == coursetitle)&&(identical(other.coursetype, coursetype) || other.coursetype == coursetype)&&(identical(other.faculity, faculity) || other.faculity == faculity)&&(identical(other.slot, slot) || other.slot == slot)&&const DeepCollectionEquality().equals(other._marks, _marks));
}


@override
int get hashCode => Object.hash(runtimeType,serial,coursecode,coursetitle,coursetype,faculity,slot,const DeepCollectionEquality().hash(_marks));

@override
String toString() {
  return 'MarksRecord(serial: $serial, coursecode: $coursecode, coursetitle: $coursetitle, coursetype: $coursetype, faculity: $faculity, slot: $slot, marks: $marks)';
}


}

/// @nodoc
abstract mixin class _$MarksRecordCopyWith<$Res> implements $MarksRecordCopyWith<$Res> {
  factory _$MarksRecordCopyWith(_MarksRecord value, $Res Function(_MarksRecord) _then) = __$MarksRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String coursecode, String coursetitle, String coursetype, String faculity, String slot, List<MarksRecordEach> marks
});




}
/// @nodoc
class __$MarksRecordCopyWithImpl<$Res>
    implements _$MarksRecordCopyWith<$Res> {
  __$MarksRecordCopyWithImpl(this._self, this._then);

  final _MarksRecord _self;
  final $Res Function(_MarksRecord) _then;

/// Create a copy of MarksRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? coursecode = null,Object? coursetitle = null,Object? coursetype = null,Object? faculity = null,Object? slot = null,Object? marks = null,}) {
  return _then(_MarksRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,coursecode: null == coursecode ? _self.coursecode : coursecode // ignore: cast_nullable_to_non_nullable
as String,coursetitle: null == coursetitle ? _self.coursetitle : coursetitle // ignore: cast_nullable_to_non_nullable
as String,coursetype: null == coursetype ? _self.coursetype : coursetype // ignore: cast_nullable_to_non_nullable
as String,faculity: null == faculity ? _self.faculity : faculity // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,marks: null == marks ? _self._marks : marks // ignore: cast_nullable_to_non_nullable
as List<MarksRecordEach>,
  ));
}


}


/// @nodoc
mixin _$MarksRecordEach {

 String get serial; String get markstitle; String get maxmarks; String get weightage; String get status; String get scoredmark; String get weightagemark; String get remark;
/// Create a copy of MarksRecordEach
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarksRecordEachCopyWith<MarksRecordEach> get copyWith => _$MarksRecordEachCopyWithImpl<MarksRecordEach>(this as MarksRecordEach, _$identity);

  /// Serializes this MarksRecordEach to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarksRecordEach&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.markstitle, markstitle) || other.markstitle == markstitle)&&(identical(other.maxmarks, maxmarks) || other.maxmarks == maxmarks)&&(identical(other.weightage, weightage) || other.weightage == weightage)&&(identical(other.status, status) || other.status == status)&&(identical(other.scoredmark, scoredmark) || other.scoredmark == scoredmark)&&(identical(other.weightagemark, weightagemark) || other.weightagemark == weightagemark)&&(identical(other.remark, remark) || other.remark == remark));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serial,markstitle,maxmarks,weightage,status,scoredmark,weightagemark,remark);

@override
String toString() {
  return 'MarksRecordEach(serial: $serial, markstitle: $markstitle, maxmarks: $maxmarks, weightage: $weightage, status: $status, scoredmark: $scoredmark, weightagemark: $weightagemark, remark: $remark)';
}


}

/// @nodoc
abstract mixin class $MarksRecordEachCopyWith<$Res>  {
  factory $MarksRecordEachCopyWith(MarksRecordEach value, $Res Function(MarksRecordEach) _then) = _$MarksRecordEachCopyWithImpl;
@useResult
$Res call({
 String serial, String markstitle, String maxmarks, String weightage, String status, String scoredmark, String weightagemark, String remark
});




}
/// @nodoc
class _$MarksRecordEachCopyWithImpl<$Res>
    implements $MarksRecordEachCopyWith<$Res> {
  _$MarksRecordEachCopyWithImpl(this._self, this._then);

  final MarksRecordEach _self;
  final $Res Function(MarksRecordEach) _then;

/// Create a copy of MarksRecordEach
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? markstitle = null,Object? maxmarks = null,Object? weightage = null,Object? status = null,Object? scoredmark = null,Object? weightagemark = null,Object? remark = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,markstitle: null == markstitle ? _self.markstitle : markstitle // ignore: cast_nullable_to_non_nullable
as String,maxmarks: null == maxmarks ? _self.maxmarks : maxmarks // ignore: cast_nullable_to_non_nullable
as String,weightage: null == weightage ? _self.weightage : weightage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scoredmark: null == scoredmark ? _self.scoredmark : scoredmark // ignore: cast_nullable_to_non_nullable
as String,weightagemark: null == weightagemark ? _self.weightagemark : weightagemark // ignore: cast_nullable_to_non_nullable
as String,remark: null == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MarksRecordEach].
extension MarksRecordEachPatterns on MarksRecordEach {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarksRecordEach value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarksRecordEach() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarksRecordEach value)  $default,){
final _that = this;
switch (_that) {
case _MarksRecordEach():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarksRecordEach value)?  $default,){
final _that = this;
switch (_that) {
case _MarksRecordEach() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String markstitle,  String maxmarks,  String weightage,  String status,  String scoredmark,  String weightagemark,  String remark)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarksRecordEach() when $default != null:
return $default(_that.serial,_that.markstitle,_that.maxmarks,_that.weightage,_that.status,_that.scoredmark,_that.weightagemark,_that.remark);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String markstitle,  String maxmarks,  String weightage,  String status,  String scoredmark,  String weightagemark,  String remark)  $default,) {final _that = this;
switch (_that) {
case _MarksRecordEach():
return $default(_that.serial,_that.markstitle,_that.maxmarks,_that.weightage,_that.status,_that.scoredmark,_that.weightagemark,_that.remark);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String markstitle,  String maxmarks,  String weightage,  String status,  String scoredmark,  String weightagemark,  String remark)?  $default,) {final _that = this;
switch (_that) {
case _MarksRecordEach() when $default != null:
return $default(_that.serial,_that.markstitle,_that.maxmarks,_that.weightage,_that.status,_that.scoredmark,_that.weightagemark,_that.remark);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarksRecordEach implements MarksRecordEach {
  const _MarksRecordEach({required this.serial, required this.markstitle, required this.maxmarks, required this.weightage, required this.status, required this.scoredmark, required this.weightagemark, required this.remark});
  factory _MarksRecordEach.fromJson(Map<String, dynamic> json) => _$MarksRecordEachFromJson(json);

@override final  String serial;
@override final  String markstitle;
@override final  String maxmarks;
@override final  String weightage;
@override final  String status;
@override final  String scoredmark;
@override final  String weightagemark;
@override final  String remark;

/// Create a copy of MarksRecordEach
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarksRecordEachCopyWith<_MarksRecordEach> get copyWith => __$MarksRecordEachCopyWithImpl<_MarksRecordEach>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarksRecordEachToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarksRecordEach&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.markstitle, markstitle) || other.markstitle == markstitle)&&(identical(other.maxmarks, maxmarks) || other.maxmarks == maxmarks)&&(identical(other.weightage, weightage) || other.weightage == weightage)&&(identical(other.status, status) || other.status == status)&&(identical(other.scoredmark, scoredmark) || other.scoredmark == scoredmark)&&(identical(other.weightagemark, weightagemark) || other.weightagemark == weightagemark)&&(identical(other.remark, remark) || other.remark == remark));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serial,markstitle,maxmarks,weightage,status,scoredmark,weightagemark,remark);

@override
String toString() {
  return 'MarksRecordEach(serial: $serial, markstitle: $markstitle, maxmarks: $maxmarks, weightage: $weightage, status: $status, scoredmark: $scoredmark, weightagemark: $weightagemark, remark: $remark)';
}


}

/// @nodoc
abstract mixin class _$MarksRecordEachCopyWith<$Res> implements $MarksRecordEachCopyWith<$Res> {
  factory _$MarksRecordEachCopyWith(_MarksRecordEach value, $Res Function(_MarksRecordEach) _then) = __$MarksRecordEachCopyWithImpl;
@override @useResult
$Res call({
 String serial, String markstitle, String maxmarks, String weightage, String status, String scoredmark, String weightagemark, String remark
});




}
/// @nodoc
class __$MarksRecordEachCopyWithImpl<$Res>
    implements _$MarksRecordEachCopyWith<$Res> {
  __$MarksRecordEachCopyWithImpl(this._self, this._then);

  final _MarksRecordEach _self;
  final $Res Function(_MarksRecordEach) _then;

/// Create a copy of MarksRecordEach
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? markstitle = null,Object? maxmarks = null,Object? weightage = null,Object? status = null,Object? scoredmark = null,Object? weightagemark = null,Object? remark = null,}) {
  return _then(_MarksRecordEach(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,markstitle: null == markstitle ? _self.markstitle : markstitle // ignore: cast_nullable_to_non_nullable
as String,maxmarks: null == maxmarks ? _self.maxmarks : maxmarks // ignore: cast_nullable_to_non_nullable
as String,weightage: null == weightage ? _self.weightage : weightage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,scoredmark: null == scoredmark ? _self.scoredmark : scoredmark // ignore: cast_nullable_to_non_nullable
as String,weightagemark: null == weightagemark ? _self.weightagemark : weightagemark // ignore: cast_nullable_to_non_nullable
as String,remark: null == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OfficeHour {

 String get day; String get timings;
/// Create a copy of OfficeHour
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficeHourCopyWith<OfficeHour> get copyWith => _$OfficeHourCopyWithImpl<OfficeHour>(this as OfficeHour, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfficeHour&&(identical(other.day, day) || other.day == day)&&(identical(other.timings, timings) || other.timings == timings));
}


@override
int get hashCode => Object.hash(runtimeType,day,timings);

@override
String toString() {
  return 'OfficeHour(day: $day, timings: $timings)';
}


}

/// @nodoc
abstract mixin class $OfficeHourCopyWith<$Res>  {
  factory $OfficeHourCopyWith(OfficeHour value, $Res Function(OfficeHour) _then) = _$OfficeHourCopyWithImpl;
@useResult
$Res call({
 String day, String timings
});




}
/// @nodoc
class _$OfficeHourCopyWithImpl<$Res>
    implements $OfficeHourCopyWith<$Res> {
  _$OfficeHourCopyWithImpl(this._self, this._then);

  final OfficeHour _self;
  final $Res Function(OfficeHour) _then;

/// Create a copy of OfficeHour
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? timings = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,timings: null == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OfficeHour].
extension OfficeHourPatterns on OfficeHour {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfficeHour value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfficeHour() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfficeHour value)  $default,){
final _that = this;
switch (_that) {
case _OfficeHour():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfficeHour value)?  $default,){
final _that = this;
switch (_that) {
case _OfficeHour() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  String timings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfficeHour() when $default != null:
return $default(_that.day,_that.timings);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  String timings)  $default,) {final _that = this;
switch (_that) {
case _OfficeHour():
return $default(_that.day,_that.timings);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  String timings)?  $default,) {final _that = this;
switch (_that) {
case _OfficeHour() when $default != null:
return $default(_that.day,_that.timings);case _:
  return null;

}
}

}

/// @nodoc


class _OfficeHour implements OfficeHour {
  const _OfficeHour({required this.day, required this.timings});
  

@override final  String day;
@override final  String timings;

/// Create a copy of OfficeHour
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficeHourCopyWith<_OfficeHour> get copyWith => __$OfficeHourCopyWithImpl<_OfficeHour>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfficeHour&&(identical(other.day, day) || other.day == day)&&(identical(other.timings, timings) || other.timings == timings));
}


@override
int get hashCode => Object.hash(runtimeType,day,timings);

@override
String toString() {
  return 'OfficeHour(day: $day, timings: $timings)';
}


}

/// @nodoc
abstract mixin class _$OfficeHourCopyWith<$Res> implements $OfficeHourCopyWith<$Res> {
  factory _$OfficeHourCopyWith(_OfficeHour value, $Res Function(_OfficeHour) _then) = __$OfficeHourCopyWithImpl;
@override @useResult
$Res call({
 String day, String timings
});




}
/// @nodoc
class __$OfficeHourCopyWithImpl<$Res>
    implements _$OfficeHourCopyWith<$Res> {
  __$OfficeHourCopyWithImpl(this._self, this._then);

  final _OfficeHour _self;
  final $Res Function(_OfficeHour) _then;

/// Create a copy of OfficeHour
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? timings = null,}) {
  return _then(_OfficeHour(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,timings: null == timings ? _self.timings : timings // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$OutingRecord {

 String get serial; String get registrationNumber; String get hostelBlock; String get roomNumber; String get placeOfVisit; String get purposeOfVisit; String get time; String get contactNumber; String get parentContactNumber; String get date; String get bookingId; String get status; bool get canDownload;
/// Create a copy of OutingRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutingRecordCopyWith<OutingRecord> get copyWith => _$OutingRecordCopyWithImpl<OutingRecord>(this as OutingRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutingRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.hostelBlock, hostelBlock) || other.hostelBlock == hostelBlock)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.placeOfVisit, placeOfVisit) || other.placeOfVisit == placeOfVisit)&&(identical(other.purposeOfVisit, purposeOfVisit) || other.purposeOfVisit == purposeOfVisit)&&(identical(other.time, time) || other.time == time)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.parentContactNumber, parentContactNumber) || other.parentContactNumber == parentContactNumber)&&(identical(other.date, date) || other.date == date)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.status, status) || other.status == status)&&(identical(other.canDownload, canDownload) || other.canDownload == canDownload));
}


@override
int get hashCode => Object.hash(runtimeType,serial,registrationNumber,hostelBlock,roomNumber,placeOfVisit,purposeOfVisit,time,contactNumber,parentContactNumber,date,bookingId,status,canDownload);

@override
String toString() {
  return 'OutingRecord(serial: $serial, registrationNumber: $registrationNumber, hostelBlock: $hostelBlock, roomNumber: $roomNumber, placeOfVisit: $placeOfVisit, purposeOfVisit: $purposeOfVisit, time: $time, contactNumber: $contactNumber, parentContactNumber: $parentContactNumber, date: $date, bookingId: $bookingId, status: $status, canDownload: $canDownload)';
}


}

/// @nodoc
abstract mixin class $OutingRecordCopyWith<$Res>  {
  factory $OutingRecordCopyWith(OutingRecord value, $Res Function(OutingRecord) _then) = _$OutingRecordCopyWithImpl;
@useResult
$Res call({
 String serial, String registrationNumber, String hostelBlock, String roomNumber, String placeOfVisit, String purposeOfVisit, String time, String contactNumber, String parentContactNumber, String date, String bookingId, String status, bool canDownload
});




}
/// @nodoc
class _$OutingRecordCopyWithImpl<$Res>
    implements $OutingRecordCopyWith<$Res> {
  _$OutingRecordCopyWithImpl(this._self, this._then);

  final OutingRecord _self;
  final $Res Function(OutingRecord) _then;

/// Create a copy of OutingRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? registrationNumber = null,Object? hostelBlock = null,Object? roomNumber = null,Object? placeOfVisit = null,Object? purposeOfVisit = null,Object? time = null,Object? contactNumber = null,Object? parentContactNumber = null,Object? date = null,Object? bookingId = null,Object? status = null,Object? canDownload = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,hostelBlock: null == hostelBlock ? _self.hostelBlock : hostelBlock // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,placeOfVisit: null == placeOfVisit ? _self.placeOfVisit : placeOfVisit // ignore: cast_nullable_to_non_nullable
as String,purposeOfVisit: null == purposeOfVisit ? _self.purposeOfVisit : purposeOfVisit // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,contactNumber: null == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String,parentContactNumber: null == parentContactNumber ? _self.parentContactNumber : parentContactNumber // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canDownload: null == canDownload ? _self.canDownload : canDownload // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OutingRecord].
extension OutingRecordPatterns on OutingRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutingRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutingRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutingRecord value)  $default,){
final _that = this;
switch (_that) {
case _OutingRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutingRecord value)?  $default,){
final _that = this;
switch (_that) {
case _OutingRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String registrationNumber,  String hostelBlock,  String roomNumber,  String placeOfVisit,  String purposeOfVisit,  String time,  String contactNumber,  String parentContactNumber,  String date,  String bookingId,  String status,  bool canDownload)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutingRecord() when $default != null:
return $default(_that.serial,_that.registrationNumber,_that.hostelBlock,_that.roomNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.time,_that.contactNumber,_that.parentContactNumber,_that.date,_that.bookingId,_that.status,_that.canDownload);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String registrationNumber,  String hostelBlock,  String roomNumber,  String placeOfVisit,  String purposeOfVisit,  String time,  String contactNumber,  String parentContactNumber,  String date,  String bookingId,  String status,  bool canDownload)  $default,) {final _that = this;
switch (_that) {
case _OutingRecord():
return $default(_that.serial,_that.registrationNumber,_that.hostelBlock,_that.roomNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.time,_that.contactNumber,_that.parentContactNumber,_that.date,_that.bookingId,_that.status,_that.canDownload);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String registrationNumber,  String hostelBlock,  String roomNumber,  String placeOfVisit,  String purposeOfVisit,  String time,  String contactNumber,  String parentContactNumber,  String date,  String bookingId,  String status,  bool canDownload)?  $default,) {final _that = this;
switch (_that) {
case _OutingRecord() when $default != null:
return $default(_that.serial,_that.registrationNumber,_that.hostelBlock,_that.roomNumber,_that.placeOfVisit,_that.purposeOfVisit,_that.time,_that.contactNumber,_that.parentContactNumber,_that.date,_that.bookingId,_that.status,_that.canDownload);case _:
  return null;

}
}

}

/// @nodoc


class _OutingRecord implements OutingRecord {
  const _OutingRecord({required this.serial, required this.registrationNumber, required this.hostelBlock, required this.roomNumber, required this.placeOfVisit, required this.purposeOfVisit, required this.time, required this.contactNumber, required this.parentContactNumber, required this.date, required this.bookingId, required this.status, required this.canDownload});
  

@override final  String serial;
@override final  String registrationNumber;
@override final  String hostelBlock;
@override final  String roomNumber;
@override final  String placeOfVisit;
@override final  String purposeOfVisit;
@override final  String time;
@override final  String contactNumber;
@override final  String parentContactNumber;
@override final  String date;
@override final  String bookingId;
@override final  String status;
@override final  bool canDownload;

/// Create a copy of OutingRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutingRecordCopyWith<_OutingRecord> get copyWith => __$OutingRecordCopyWithImpl<_OutingRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutingRecord&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.hostelBlock, hostelBlock) || other.hostelBlock == hostelBlock)&&(identical(other.roomNumber, roomNumber) || other.roomNumber == roomNumber)&&(identical(other.placeOfVisit, placeOfVisit) || other.placeOfVisit == placeOfVisit)&&(identical(other.purposeOfVisit, purposeOfVisit) || other.purposeOfVisit == purposeOfVisit)&&(identical(other.time, time) || other.time == time)&&(identical(other.contactNumber, contactNumber) || other.contactNumber == contactNumber)&&(identical(other.parentContactNumber, parentContactNumber) || other.parentContactNumber == parentContactNumber)&&(identical(other.date, date) || other.date == date)&&(identical(other.bookingId, bookingId) || other.bookingId == bookingId)&&(identical(other.status, status) || other.status == status)&&(identical(other.canDownload, canDownload) || other.canDownload == canDownload));
}


@override
int get hashCode => Object.hash(runtimeType,serial,registrationNumber,hostelBlock,roomNumber,placeOfVisit,purposeOfVisit,time,contactNumber,parentContactNumber,date,bookingId,status,canDownload);

@override
String toString() {
  return 'OutingRecord(serial: $serial, registrationNumber: $registrationNumber, hostelBlock: $hostelBlock, roomNumber: $roomNumber, placeOfVisit: $placeOfVisit, purposeOfVisit: $purposeOfVisit, time: $time, contactNumber: $contactNumber, parentContactNumber: $parentContactNumber, date: $date, bookingId: $bookingId, status: $status, canDownload: $canDownload)';
}


}

/// @nodoc
abstract mixin class _$OutingRecordCopyWith<$Res> implements $OutingRecordCopyWith<$Res> {
  factory _$OutingRecordCopyWith(_OutingRecord value, $Res Function(_OutingRecord) _then) = __$OutingRecordCopyWithImpl;
@override @useResult
$Res call({
 String serial, String registrationNumber, String hostelBlock, String roomNumber, String placeOfVisit, String purposeOfVisit, String time, String contactNumber, String parentContactNumber, String date, String bookingId, String status, bool canDownload
});




}
/// @nodoc
class __$OutingRecordCopyWithImpl<$Res>
    implements _$OutingRecordCopyWith<$Res> {
  __$OutingRecordCopyWithImpl(this._self, this._then);

  final _OutingRecord _self;
  final $Res Function(_OutingRecord) _then;

/// Create a copy of OutingRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? registrationNumber = null,Object? hostelBlock = null,Object? roomNumber = null,Object? placeOfVisit = null,Object? purposeOfVisit = null,Object? time = null,Object? contactNumber = null,Object? parentContactNumber = null,Object? date = null,Object? bookingId = null,Object? status = null,Object? canDownload = null,}) {
  return _then(_OutingRecord(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,registrationNumber: null == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as String,hostelBlock: null == hostelBlock ? _self.hostelBlock : hostelBlock // ignore: cast_nullable_to_non_nullable
as String,roomNumber: null == roomNumber ? _self.roomNumber : roomNumber // ignore: cast_nullable_to_non_nullable
as String,placeOfVisit: null == placeOfVisit ? _self.placeOfVisit : placeOfVisit // ignore: cast_nullable_to_non_nullable
as String,purposeOfVisit: null == purposeOfVisit ? _self.purposeOfVisit : purposeOfVisit // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,contactNumber: null == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as String,parentContactNumber: null == parentContactNumber ? _self.parentContactNumber : parentContactNumber // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,bookingId: null == bookingId ? _self.bookingId : bookingId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,canDownload: null == canDownload ? _self.canDownload : canDownload // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$PerExamScheduleRecord {

 List<ExamScheduleRecord> get records; String get examType;
/// Create a copy of PerExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerExamScheduleRecordCopyWith<PerExamScheduleRecord> get copyWith => _$PerExamScheduleRecordCopyWithImpl<PerExamScheduleRecord>(this as PerExamScheduleRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerExamScheduleRecord&&const DeepCollectionEquality().equals(other.records, records)&&(identical(other.examType, examType) || other.examType == examType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(records),examType);

@override
String toString() {
  return 'PerExamScheduleRecord(records: $records, examType: $examType)';
}


}

/// @nodoc
abstract mixin class $PerExamScheduleRecordCopyWith<$Res>  {
  factory $PerExamScheduleRecordCopyWith(PerExamScheduleRecord value, $Res Function(PerExamScheduleRecord) _then) = _$PerExamScheduleRecordCopyWithImpl;
@useResult
$Res call({
 List<ExamScheduleRecord> records, String examType
});




}
/// @nodoc
class _$PerExamScheduleRecordCopyWithImpl<$Res>
    implements $PerExamScheduleRecordCopyWith<$Res> {
  _$PerExamScheduleRecordCopyWithImpl(this._self, this._then);

  final PerExamScheduleRecord _self;
  final $Res Function(PerExamScheduleRecord) _then;

/// Create a copy of PerExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? records = null,Object? examType = null,}) {
  return _then(_self.copyWith(
records: null == records ? _self.records : records // ignore: cast_nullable_to_non_nullable
as List<ExamScheduleRecord>,examType: null == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PerExamScheduleRecord].
extension PerExamScheduleRecordPatterns on PerExamScheduleRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PerExamScheduleRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PerExamScheduleRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PerExamScheduleRecord value)  $default,){
final _that = this;
switch (_that) {
case _PerExamScheduleRecord():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PerExamScheduleRecord value)?  $default,){
final _that = this;
switch (_that) {
case _PerExamScheduleRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ExamScheduleRecord> records,  String examType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PerExamScheduleRecord() when $default != null:
return $default(_that.records,_that.examType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ExamScheduleRecord> records,  String examType)  $default,) {final _that = this;
switch (_that) {
case _PerExamScheduleRecord():
return $default(_that.records,_that.examType);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ExamScheduleRecord> records,  String examType)?  $default,) {final _that = this;
switch (_that) {
case _PerExamScheduleRecord() when $default != null:
return $default(_that.records,_that.examType);case _:
  return null;

}
}

}

/// @nodoc


class _PerExamScheduleRecord implements PerExamScheduleRecord {
  const _PerExamScheduleRecord({required final  List<ExamScheduleRecord> records, required this.examType}): _records = records;
  

 final  List<ExamScheduleRecord> _records;
@override List<ExamScheduleRecord> get records {
  if (_records is EqualUnmodifiableListView) return _records;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_records);
}

@override final  String examType;

/// Create a copy of PerExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerExamScheduleRecordCopyWith<_PerExamScheduleRecord> get copyWith => __$PerExamScheduleRecordCopyWithImpl<_PerExamScheduleRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PerExamScheduleRecord&&const DeepCollectionEquality().equals(other._records, _records)&&(identical(other.examType, examType) || other.examType == examType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_records),examType);

@override
String toString() {
  return 'PerExamScheduleRecord(records: $records, examType: $examType)';
}


}

/// @nodoc
abstract mixin class _$PerExamScheduleRecordCopyWith<$Res> implements $PerExamScheduleRecordCopyWith<$Res> {
  factory _$PerExamScheduleRecordCopyWith(_PerExamScheduleRecord value, $Res Function(_PerExamScheduleRecord) _then) = __$PerExamScheduleRecordCopyWithImpl;
@override @useResult
$Res call({
 List<ExamScheduleRecord> records, String examType
});




}
/// @nodoc
class __$PerExamScheduleRecordCopyWithImpl<$Res>
    implements _$PerExamScheduleRecordCopyWith<$Res> {
  __$PerExamScheduleRecordCopyWithImpl(this._self, this._then);

  final _PerExamScheduleRecord _self;
  final $Res Function(_PerExamScheduleRecord) _then;

/// Create a copy of PerExamScheduleRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? records = null,Object? examType = null,}) {
  return _then(_PerExamScheduleRecord(
records: null == records ? _self._records : records // ignore: cast_nullable_to_non_nullable
as List<ExamScheduleRecord>,examType: null == examType ? _self.examType : examType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SemesterData {

 List<SemesterInfo> get semesters; BigInt get updateTime;
/// Create a copy of SemesterData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SemesterDataCopyWith<SemesterData> get copyWith => _$SemesterDataCopyWithImpl<SemesterData>(this as SemesterData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SemesterData&&const DeepCollectionEquality().equals(other.semesters, semesters)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(semesters),updateTime);

@override
String toString() {
  return 'SemesterData(semesters: $semesters, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $SemesterDataCopyWith<$Res>  {
  factory $SemesterDataCopyWith(SemesterData value, $Res Function(SemesterData) _then) = _$SemesterDataCopyWithImpl;
@useResult
$Res call({
 List<SemesterInfo> semesters, BigInt updateTime
});




}
/// @nodoc
class _$SemesterDataCopyWithImpl<$Res>
    implements $SemesterDataCopyWith<$Res> {
  _$SemesterDataCopyWithImpl(this._self, this._then);

  final SemesterData _self;
  final $Res Function(SemesterData) _then;

/// Create a copy of SemesterData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? semesters = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
semesters: null == semesters ? _self.semesters : semesters // ignore: cast_nullable_to_non_nullable
as List<SemesterInfo>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [SemesterData].
extension SemesterDataPatterns on SemesterData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SemesterData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SemesterData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SemesterData value)  $default,){
final _that = this;
switch (_that) {
case _SemesterData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SemesterData value)?  $default,){
final _that = this;
switch (_that) {
case _SemesterData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SemesterInfo> semesters,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SemesterData() when $default != null:
return $default(_that.semesters,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SemesterInfo> semesters,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _SemesterData():
return $default(_that.semesters,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SemesterInfo> semesters,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _SemesterData() when $default != null:
return $default(_that.semesters,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _SemesterData implements SemesterData {
  const _SemesterData({required final  List<SemesterInfo> semesters, required this.updateTime}): _semesters = semesters;
  

 final  List<SemesterInfo> _semesters;
@override List<SemesterInfo> get semesters {
  if (_semesters is EqualUnmodifiableListView) return _semesters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_semesters);
}

@override final  BigInt updateTime;

/// Create a copy of SemesterData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SemesterDataCopyWith<_SemesterData> get copyWith => __$SemesterDataCopyWithImpl<_SemesterData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SemesterData&&const DeepCollectionEquality().equals(other._semesters, _semesters)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_semesters),updateTime);

@override
String toString() {
  return 'SemesterData(semesters: $semesters, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$SemesterDataCopyWith<$Res> implements $SemesterDataCopyWith<$Res> {
  factory _$SemesterDataCopyWith(_SemesterData value, $Res Function(_SemesterData) _then) = __$SemesterDataCopyWithImpl;
@override @useResult
$Res call({
 List<SemesterInfo> semesters, BigInt updateTime
});




}
/// @nodoc
class __$SemesterDataCopyWithImpl<$Res>
    implements _$SemesterDataCopyWith<$Res> {
  __$SemesterDataCopyWithImpl(this._self, this._then);

  final _SemesterData _self;
  final $Res Function(_SemesterData) _then;

/// Create a copy of SemesterData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? semesters = null,Object? updateTime = null,}) {
  return _then(_SemesterData(
semesters: null == semesters ? _self._semesters : semesters // ignore: cast_nullable_to_non_nullable
as List<SemesterInfo>,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$SemesterInfo {

 String get id; String get name;
/// Create a copy of SemesterInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SemesterInfoCopyWith<SemesterInfo> get copyWith => _$SemesterInfoCopyWithImpl<SemesterInfo>(this as SemesterInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SemesterInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SemesterInfo(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $SemesterInfoCopyWith<$Res>  {
  factory $SemesterInfoCopyWith(SemesterInfo value, $Res Function(SemesterInfo) _then) = _$SemesterInfoCopyWithImpl;
@useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class _$SemesterInfoCopyWithImpl<$Res>
    implements $SemesterInfoCopyWith<$Res> {
  _$SemesterInfoCopyWithImpl(this._self, this._then);

  final SemesterInfo _self;
  final $Res Function(SemesterInfo) _then;

/// Create a copy of SemesterInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SemesterInfo].
extension SemesterInfoPatterns on SemesterInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SemesterInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SemesterInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SemesterInfo value)  $default,){
final _that = this;
switch (_that) {
case _SemesterInfo():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SemesterInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SemesterInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SemesterInfo() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name)  $default,) {final _that = this;
switch (_that) {
case _SemesterInfo():
return $default(_that.id,_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _SemesterInfo() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _SemesterInfo implements SemesterInfo {
  const _SemesterInfo({required this.id, required this.name});
  

@override final  String id;
@override final  String name;

/// Create a copy of SemesterInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SemesterInfoCopyWith<_SemesterInfo> get copyWith => __$SemesterInfoCopyWithImpl<_SemesterInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SemesterInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'SemesterInfo(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SemesterInfoCopyWith<$Res> implements $SemesterInfoCopyWith<$Res> {
  factory _$SemesterInfoCopyWith(_SemesterInfo value, $Res Function(_SemesterInfo) _then) = __$SemesterInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name
});




}
/// @nodoc
class __$SemesterInfoCopyWithImpl<$Res>
    implements _$SemesterInfoCopyWith<$Res> {
  __$SemesterInfoCopyWithImpl(this._self, this._then);

  final _SemesterInfo _self;
  final $Res Function(_SemesterInfo) _then;

/// Create a copy of SemesterInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_SemesterInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TimetableData {

 List<TimetableSlot> get slots; String get semesterId; BigInt get updateTime;
/// Create a copy of TimetableData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimetableDataCopyWith<TimetableData> get copyWith => _$TimetableDataCopyWithImpl<TimetableData>(this as TimetableData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimetableData&&const DeepCollectionEquality().equals(other.slots, slots)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(slots),semesterId,updateTime);

@override
String toString() {
  return 'TimetableData(slots: $slots, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class $TimetableDataCopyWith<$Res>  {
  factory $TimetableDataCopyWith(TimetableData value, $Res Function(TimetableData) _then) = _$TimetableDataCopyWithImpl;
@useResult
$Res call({
 List<TimetableSlot> slots, String semesterId, BigInt updateTime
});




}
/// @nodoc
class _$TimetableDataCopyWithImpl<$Res>
    implements $TimetableDataCopyWith<$Res> {
  _$TimetableDataCopyWithImpl(this._self, this._then);

  final TimetableData _self;
  final $Res Function(TimetableData) _then;

/// Create a copy of TimetableData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slots = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_self.copyWith(
slots: null == slots ? _self.slots : slots // ignore: cast_nullable_to_non_nullable
as List<TimetableSlot>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}

}


/// Adds pattern-matching-related methods to [TimetableData].
extension TimetableDataPatterns on TimetableData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimetableData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimetableData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimetableData value)  $default,){
final _that = this;
switch (_that) {
case _TimetableData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimetableData value)?  $default,){
final _that = this;
switch (_that) {
case _TimetableData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TimetableSlot> slots,  String semesterId,  BigInt updateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimetableData() when $default != null:
return $default(_that.slots,_that.semesterId,_that.updateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TimetableSlot> slots,  String semesterId,  BigInt updateTime)  $default,) {final _that = this;
switch (_that) {
case _TimetableData():
return $default(_that.slots,_that.semesterId,_that.updateTime);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TimetableSlot> slots,  String semesterId,  BigInt updateTime)?  $default,) {final _that = this;
switch (_that) {
case _TimetableData() when $default != null:
return $default(_that.slots,_that.semesterId,_that.updateTime);case _:
  return null;

}
}

}

/// @nodoc


class _TimetableData implements TimetableData {
  const _TimetableData({required final  List<TimetableSlot> slots, required this.semesterId, required this.updateTime}): _slots = slots;
  

 final  List<TimetableSlot> _slots;
@override List<TimetableSlot> get slots {
  if (_slots is EqualUnmodifiableListView) return _slots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_slots);
}

@override final  String semesterId;
@override final  BigInt updateTime;

/// Create a copy of TimetableData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimetableDataCopyWith<_TimetableData> get copyWith => __$TimetableDataCopyWithImpl<_TimetableData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimetableData&&const DeepCollectionEquality().equals(other._slots, _slots)&&(identical(other.semesterId, semesterId) || other.semesterId == semesterId)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_slots),semesterId,updateTime);

@override
String toString() {
  return 'TimetableData(slots: $slots, semesterId: $semesterId, updateTime: $updateTime)';
}


}

/// @nodoc
abstract mixin class _$TimetableDataCopyWith<$Res> implements $TimetableDataCopyWith<$Res> {
  factory _$TimetableDataCopyWith(_TimetableData value, $Res Function(_TimetableData) _then) = __$TimetableDataCopyWithImpl;
@override @useResult
$Res call({
 List<TimetableSlot> slots, String semesterId, BigInt updateTime
});




}
/// @nodoc
class __$TimetableDataCopyWithImpl<$Res>
    implements _$TimetableDataCopyWith<$Res> {
  __$TimetableDataCopyWithImpl(this._self, this._then);

  final _TimetableData _self;
  final $Res Function(_TimetableData) _then;

/// Create a copy of TimetableData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slots = null,Object? semesterId = null,Object? updateTime = null,}) {
  return _then(_TimetableData(
slots: null == slots ? _self._slots : slots // ignore: cast_nullable_to_non_nullable
as List<TimetableSlot>,semesterId: null == semesterId ? _self.semesterId : semesterId // ignore: cast_nullable_to_non_nullable
as String,updateTime: null == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as BigInt,
  ));
}


}

/// @nodoc
mixin _$TimetableSlot {

 String get serial; String get day; String get slot; String get courseCode; String get courseType; String get roomNo; String get block; String get startTime; String get endTime; String get name;
/// Create a copy of TimetableSlot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimetableSlotCopyWith<TimetableSlot> get copyWith => _$TimetableSlotCopyWithImpl<TimetableSlot>(this as TimetableSlot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimetableSlot&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.day, day) || other.day == day)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.roomNo, roomNo) || other.roomNo == roomNo)&&(identical(other.block, block) || other.block == block)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,serial,day,slot,courseCode,courseType,roomNo,block,startTime,endTime,name);

@override
String toString() {
  return 'TimetableSlot(serial: $serial, day: $day, slot: $slot, courseCode: $courseCode, courseType: $courseType, roomNo: $roomNo, block: $block, startTime: $startTime, endTime: $endTime, name: $name)';
}


}

/// @nodoc
abstract mixin class $TimetableSlotCopyWith<$Res>  {
  factory $TimetableSlotCopyWith(TimetableSlot value, $Res Function(TimetableSlot) _then) = _$TimetableSlotCopyWithImpl;
@useResult
$Res call({
 String serial, String day, String slot, String courseCode, String courseType, String roomNo, String block, String startTime, String endTime, String name
});




}
/// @nodoc
class _$TimetableSlotCopyWithImpl<$Res>
    implements $TimetableSlotCopyWith<$Res> {
  _$TimetableSlotCopyWithImpl(this._self, this._then);

  final TimetableSlot _self;
  final $Res Function(TimetableSlot) _then;

/// Create a copy of TimetableSlot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serial = null,Object? day = null,Object? slot = null,Object? courseCode = null,Object? courseType = null,Object? roomNo = null,Object? block = null,Object? startTime = null,Object? endTime = null,Object? name = null,}) {
  return _then(_self.copyWith(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,roomNo: null == roomNo ? _self.roomNo : roomNo // ignore: cast_nullable_to_non_nullable
as String,block: null == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TimetableSlot].
extension TimetableSlotPatterns on TimetableSlot {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimetableSlot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimetableSlot() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimetableSlot value)  $default,){
final _that = this;
switch (_that) {
case _TimetableSlot():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimetableSlot value)?  $default,){
final _that = this;
switch (_that) {
case _TimetableSlot() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String serial,  String day,  String slot,  String courseCode,  String courseType,  String roomNo,  String block,  String startTime,  String endTime,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimetableSlot() when $default != null:
return $default(_that.serial,_that.day,_that.slot,_that.courseCode,_that.courseType,_that.roomNo,_that.block,_that.startTime,_that.endTime,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String serial,  String day,  String slot,  String courseCode,  String courseType,  String roomNo,  String block,  String startTime,  String endTime,  String name)  $default,) {final _that = this;
switch (_that) {
case _TimetableSlot():
return $default(_that.serial,_that.day,_that.slot,_that.courseCode,_that.courseType,_that.roomNo,_that.block,_that.startTime,_that.endTime,_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String serial,  String day,  String slot,  String courseCode,  String courseType,  String roomNo,  String block,  String startTime,  String endTime,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TimetableSlot() when $default != null:
return $default(_that.serial,_that.day,_that.slot,_that.courseCode,_that.courseType,_that.roomNo,_that.block,_that.startTime,_that.endTime,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _TimetableSlot implements TimetableSlot {
  const _TimetableSlot({required this.serial, required this.day, required this.slot, required this.courseCode, required this.courseType, required this.roomNo, required this.block, required this.startTime, required this.endTime, required this.name});
  

@override final  String serial;
@override final  String day;
@override final  String slot;
@override final  String courseCode;
@override final  String courseType;
@override final  String roomNo;
@override final  String block;
@override final  String startTime;
@override final  String endTime;
@override final  String name;

/// Create a copy of TimetableSlot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimetableSlotCopyWith<_TimetableSlot> get copyWith => __$TimetableSlotCopyWithImpl<_TimetableSlot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimetableSlot&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.day, day) || other.day == day)&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.courseCode, courseCode) || other.courseCode == courseCode)&&(identical(other.courseType, courseType) || other.courseType == courseType)&&(identical(other.roomNo, roomNo) || other.roomNo == roomNo)&&(identical(other.block, block) || other.block == block)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,serial,day,slot,courseCode,courseType,roomNo,block,startTime,endTime,name);

@override
String toString() {
  return 'TimetableSlot(serial: $serial, day: $day, slot: $slot, courseCode: $courseCode, courseType: $courseType, roomNo: $roomNo, block: $block, startTime: $startTime, endTime: $endTime, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TimetableSlotCopyWith<$Res> implements $TimetableSlotCopyWith<$Res> {
  factory _$TimetableSlotCopyWith(_TimetableSlot value, $Res Function(_TimetableSlot) _then) = __$TimetableSlotCopyWithImpl;
@override @useResult
$Res call({
 String serial, String day, String slot, String courseCode, String courseType, String roomNo, String block, String startTime, String endTime, String name
});




}
/// @nodoc
class __$TimetableSlotCopyWithImpl<$Res>
    implements _$TimetableSlotCopyWith<$Res> {
  __$TimetableSlotCopyWithImpl(this._self, this._then);

  final _TimetableSlot _self;
  final $Res Function(_TimetableSlot) _then;

/// Create a copy of TimetableSlot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serial = null,Object? day = null,Object? slot = null,Object? courseCode = null,Object? courseType = null,Object? roomNo = null,Object? block = null,Object? startTime = null,Object? endTime = null,Object? name = null,}) {
  return _then(_TimetableSlot(
serial: null == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String,courseCode: null == courseCode ? _self.courseCode : courseCode // ignore: cast_nullable_to_non_nullable
as String,courseType: null == courseType ? _self.courseType : courseType // ignore: cast_nullable_to_non_nullable
as String,roomNo: null == roomNo ? _self.roomNo : roomNo // ignore: cast_nullable_to_non_nullable
as String,block: null == block ? _self.block : block // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
