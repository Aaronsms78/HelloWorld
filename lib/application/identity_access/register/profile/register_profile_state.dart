import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';

part 'register_profile_state.freezed.dart';

@freezed
abstract class RegisterProfileState with _$RegisterProfileState {
  const factory RegisterProfileState({
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required List<Tuple2<LearningLanguage, LanguageProficiency>> learningLanguages,
    @required List<Tuple2<SpeakingLanguage, LanguageProficiency>> speakingLanguages,
    @required List<Tuple2<TeachingLanguage, LanguageProficiency>> teachingLanguages,
    @required List<Tuple2<LatLng, Location>> preferredLocations,
    @required bool isSubmitting,
    @required bool isChangingItem,
    @required Option createAccountSuccessOrFailureOption,
  }) = _RegisterProfileState;

  factory RegisterProfileState.initial() {
    return RegisterProfileState(
      profilePicture: ProfilePicture.empty(),
      biography: Biography(''),
      learningLanguages: [],
      speakingLanguages: [],
      teachingLanguages: [],
      preferredLocations: [],
      isSubmitting: false,
      isChangingItem: false,
      createAccountSuccessOrFailureOption: none(),
    );
  }
}
