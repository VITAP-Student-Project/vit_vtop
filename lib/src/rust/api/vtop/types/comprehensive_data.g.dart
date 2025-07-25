// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comprehensive_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComprehensiveDataResponse _$ComprehensiveDataResponseFromJson(
  Map<String, dynamic> json,
) => _ComprehensiveDataResponse(
  profile: StudentProfile.fromJson(json['profile'] as Map<String, dynamic>),
  attendance:
      (json['attendance'] as List<dynamic>)
          .map((e) => AttendanceRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
  timetable:
      (json['timetable'] as List<dynamic>)
          .map((e) => TimetableSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
  examSchedule:
      (json['examSchedule'] as List<dynamic>)
          .map((e) => PerExamScheduleRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
  gradeCourseHistory:
      (json['gradeCourseHistory'] as List<dynamic>)
          .map((e) => GradeCourseHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
  marks:
      (json['marks'] as List<dynamic>)
          .map((e) => MarksRecord.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ComprehensiveDataResponseToJson(
  _ComprehensiveDataResponse instance,
) => <String, dynamic>{
  'profile': instance.profile,
  'attendance': instance.attendance,
  'timetable': instance.timetable,
  'examSchedule': instance.examSchedule,
  'gradeCourseHistory': instance.gradeCourseHistory,
  'marks': instance.marks,
};
