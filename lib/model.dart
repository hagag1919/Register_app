// import 'dart:convert';

// class StudentCoursesResponse {
//   final dynamic responseCode;
//   final List<dynamic> failedCourses;
//   final List<dynamic> prerequistesSatistfiedCourses;
//   final List<dynamic> registeredCourses;
//   final List<dynamic> successfulCourses;
//   final dynamic maxElectiveHours;
//   final dynamic maxMandatoryHours;
//   final dynamic maxRegisteredHoursPerTerm;
//   final dynamic minRegisteredHoursPerTerm;
//   final dynamic maxElectiveCoursesOutsideDepartment;
//   final int costPerChange;
//   final dynamic maxHoursForRepeatedCourses;
//   final dynamic maxNumForRepeatedCourses;
//   final dynamic costForRepeatedCourse;
//   final dynamic pendingCourses;
//   final dynamic excludeIncompleteFromMaxRegHours;
//   final dynamic majorGroup;

//   StudentCoursesResponse({
//     this.responseCode,
//     this.failedCourses,
//     this.prerequistesSatistfiedCourses,
//     this.registeredCourses,
//     this.successfulCourses,
//     this.maxElectiveHours,
//     this.maxMandatoryHours,
//     this.maxRegisteredHoursPerTerm,
//     this.minRegisteredHoursPerTerm,
//     this.maxElectiveCoursesOutsideDepartment,
//     this.costPerChange,
//     this.maxHoursForRepeatedCourses,
//     this.maxNumForRepeatedCourses,
//     this.costForRepeatedCourse,
//     this.pendingCourses,
//     this.excludeIncompleteFromMaxRegHours,
//     this.majorGroup,
//   });

//   factory StudentCoursesResponse.fromJson(Map<String, dynamic> json) {
//     return StudentCoursesResponse(
//       responseCode: json['responseCode'],
//       failedCourses: json['failedCourses'],
//       prerequistesSatistfiedCourses: json['prerequistesSatistfiedCourses'],
//       registeredCourses: json['registeredCourses'],
//       successfulCourses: json['successfulCourses'],
//       maxElectiveHours: json['maxElectiveHours'],
//       maxMandatoryHours: json['maxMandatoryHours'],
//       maxRegisteredHoursPerTerm: json['maxRegisteredHoursPerTerm'],
//       minRegisteredHoursPerTerm: json['minRegisteredHoursPerTerm'],
//       maxElectiveCoursesOutsideDepartment: json['maxElectiveCoursesOutsideDepartment'],
//       costPerChange: json['costPerChange'],
//       maxHoursForRepeatedCourses: json['maxHoursForRepeatedCourses'],
//       maxNumForRepeatedCourses: json['maxNumForRepeatedCourses'],
//       costForRepeatedCourse: json['costForRepeatedCourse'],
//       pendingCourses: json['pendingCourses'],
//       excludeIncompleteFromMaxRegHours: json['excludeIncompleteFromMaxRegHours'],
//       majorGroup: json['majorGroup'],
//     );
//   }
// }