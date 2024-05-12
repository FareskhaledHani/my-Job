// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hi,`
  String get hi {
    return Intl.message(
      'Hi,',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Create a better future for yourself here`
  String get CreateAbetterFutureForYourselfHere {
    return Intl.message(
      'Create a better future for yourself here',
      name: 'CreateAbetterFutureForYourselfHere',
      desc: '',
      args: [],
    );
  }

  /// `Enter your search query`
  String get EnterYourSearchQuery {
    return Intl.message(
      'Enter your search query',
      name: 'EnterYourSearchQuery',
      desc: '',
      args: [],
    );
  }

  /// `Suggested Job`
  String get SuggestedJob {
    return Intl.message(
      'Suggested Job',
      name: 'SuggestedJob',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get ViewAll {
    return Intl.message(
      'View all',
      name: 'ViewAll',
      desc: '',
      args: [],
    );
  }

  /// `Recent Job`
  String get RecentJob {
    return Intl.message(
      'Recent Job',
      name: 'RecentJob',
      desc: '',
      args: [],
    );
  }

  /// `Applied Job`
  String get AppliedJob {
    return Intl.message(
      'Applied Job',
      name: 'AppliedJob',
      desc: '',
      args: [],
    );
  }

  /// `Biodata`
  String get BioData {
    return Intl.message(
      'Biodata',
      name: 'BioData',
      desc: '',
      args: [],
    );
  }

  /// `Fill in your bio data correctly`
  String get FillInYourBioDataCorrectly {
    return Intl.message(
      'Fill in your bio data correctly',
      name: 'FillInYourBioDataCorrectly',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get FullName {
    return Intl.message(
      'Full Name',
      name: 'FullName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `No.Handphone`
  String get NoHandphone {
    return Intl.message(
      'No.Handphone',
      name: 'NoHandphone',
      desc: '',
      args: [],
    );
  }

  /// `Type of work`
  String get TypeOfWork {
    return Intl.message(
      'Type of work',
      name: 'TypeOfWork',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get Next {
    return Intl.message(
      'Next',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `Search....`
  String get Search {
    return Intl.message(
      'Search....',
      name: 'Search',
      desc: '',
      args: [],
    );
  }

  /// `Upload portfolio`
  String get UploadPortfolio {
    return Intl.message(
      'Upload portfolio',
      name: 'UploadPortfolio',
      desc: '',
      args: [],
    );
  }

  /// `Upload CV`
  String get UploadCV {
    return Intl.message(
      'Upload CV',
      name: 'UploadCV',
      desc: '',
      args: [],
    );
  }

  /// `submitted`
  String get Submitted {
    return Intl.message(
      'submitted',
      name: 'Submitted',
      desc: '',
      args: [],
    );
  }

  /// `Other File`
  String get OtherFile {
    return Intl.message(
      'Other File',
      name: 'OtherFile',
      desc: '',
      args: [],
    );
  }

  /// `Upload your other file`
  String get UploadYourOtherFile {
    return Intl.message(
      'Upload your other file',
      name: 'UploadYourOtherFile',
      desc: '',
      args: [],
    );
  }

  /// `Max. file size 10 MB`
  String get MaxFileSize10MB {
    return Intl.message(
      'Max. file size 10 MB',
      name: 'MaxFileSize10MB',
      desc: '',
      args: [],
    );
  }

  /// `Add File`
  String get AddFile {
    return Intl.message(
      'Add File',
      name: 'AddFile',
      desc: '',
      args: [],
    );
  }

  /// `Your data has been successfully sent`
  String get YourDataHasBeenSuccessfullySent {
    return Intl.message(
      'Your data has been successfully sent',
      name: 'YourDataHasBeenSuccessfullySent',
      desc: '',
      args: [],
    );
  }

  /// `You will get a message from our team, about the announcement of employee acceptance`
  String
      get YouWillGetAMessageFromOurTeamAboutTheAnnouncementOfEmployeeAcceptance {
    return Intl.message(
      'You will get a message from our team, about the announcement of employee acceptance',
      name:
          'YouWillGetAMessageFromOurTeamAboutTheAnnouncementOfEmployeeAcceptance',
      desc: '',
      args: [],
    );
  }

  /// `back to home`
  String get BackToHome {
    return Intl.message(
      'back to home',
      name: 'BackToHome',
      desc: '',
      args: [],
    );
  }

  /// `CV.pdf 300KB`
  String get CVPdf300KB {
    return Intl.message(
      'CV.pdf 300KB',
      name: 'CVPdf300KB',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Massage`
  String get Massage {
    return Intl.message(
      'Massage',
      name: 'Massage',
      desc: '',
      args: [],
    );
  }

  /// `Applied`
  String get Applied {
    return Intl.message(
      'Applied',
      name: 'Applied',
      desc: '',
      args: [],
    );
  }

  /// `saved`
  String get saved {
    return Intl.message(
      'saved',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get profile {
    return Intl.message(
      'profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Your account has been set up!`
  String get YourAccountHasBeenSetUp {
    return Intl.message(
      'Your account has been set up!',
      name: 'YourAccountHasBeenSetUp',
      desc: '',
      args: [],
    );
  }

  /// `We have customized feeds according to your preferences`
  String get WeHaveCustomizedFeedsAccordingToYourPreferences {
    return Intl.message(
      'We have customized feeds according to your preferences',
      name: 'WeHaveCustomizedFeedsAccordingToYourPreferences',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get GetStarted {
    return Intl.message(
      'Get Started',
      name: 'GetStarted',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get CreateAccount {
    return Intl.message(
      'Create Account',
      name: 'CreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Please create an account to find your dream job`
  String get PleaseCreateAnAccountToFindYourDreamJob {
    return Intl.message(
      'Please create an account to find your dream job',
      name: 'PleaseCreateAnAccountToFindYourDreamJob',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get UserName {
    return Intl.message(
      'Username',
      name: 'UserName',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get AlreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'AlreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get Login {
    return Intl.message(
      'login',
      name: 'Login',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get PasswordMustBeAtLeast8Characters {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'PasswordMustBeAtLeast8Characters',
      desc: '',
      args: [],
    );
  }

  /// `Where are you preferd Location?`
  String get WhereAreYouPreferdLocation {
    return Intl.message(
      'Where are you preferd Location?',
      name: 'WhereAreYouPreferdLocation',
      desc: '',
      args: [],
    );
  }

  /// `Let us know, where is the work location you want at this time, so we can adjust it.`
  String get LetUsKnowWhereIsTheWorkLocationYouWantAtThisTimSoWeCanAdjustIt {
    return Intl.message(
      'Let us know, where is the work location you want at this time, so we can adjust it.',
      name: 'LetUsKnowWhereIsTheWorkLocationYouWantAtThisTimSoWeCanAdjustIt',
      desc: '',
      args: [],
    );
  }

  /// `Work Form Office`
  String get WorkFormOffice {
    return Intl.message(
      'Work Form Office',
      name: 'WorkFormOffice',
      desc: '',
      args: [],
    );
  }

  /// `Remote Work`
  String get RemoteWork {
    return Intl.message(
      'Remote Work',
      name: 'RemoteWork',
      desc: '',
      args: [],
    );
  }

  /// `Select the country you want for your job                `
  String get SelectTheCountryYouWantForYourJob {
    return Intl.message(
      'Select the country you want for your job                ',
      name: 'SelectTheCountryYouWantForYourJob',
      desc: '',
      args: [],
    );
  }

  /// `What type of work are you interested in?`
  String get WhatTypeOfWorkAreYouInterestedIn {
    return Intl.message(
      'What type of work are you interested in?',
      name: 'WhatTypeOfWorkAreYouInterestedIn',
      desc: '',
      args: [],
    );
  }

  /// `Tell us what you’re interested in so we can\   customise the app for your needs.`
  String get TellUsWhatYouAreInterestedInSoWeCanCustomiseTheAppForYourNeeds {
    return Intl.message(
      'Tell us what you’re interested in so we can\\   customise the app for your needs.',
      name: 'TellUsWhatYouAreInterestedInSoWeCanCustomiseTheAppForYourNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Write a message...`
  String get WriteAMessage {
    return Intl.message(
      'Write a message...',
      name: 'WriteAMessage',
      desc: '',
      args: [],
    );
  }

  /// `Visit Job Post`
  String get VisitJobPost {
    return Intl.message(
      'Visit Job Post',
      name: 'VisitJobPost',
      desc: '',
      args: [],
    );
  }

  /// `View my application`
  String get ViewMyApplication {
    return Intl.message(
      'View my application',
      name: 'ViewMyApplication',
      desc: '',
      args: [],
    );
  }

  /// `Mark as unread`
  String get MarkAsUnread {
    return Intl.message(
      'Mark as unread',
      name: 'MarkAsUnread',
      desc: '',
      args: [],
    );
  }

  /// `Mute`
  String get Mute {
    return Intl.message(
      'Mute',
      name: 'Mute',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get Archive {
    return Intl.message(
      'Archive',
      name: 'Archive',
      desc: '',
      args: [],
    );
  }

  /// `Delete conversation`
  String get DeleteConversation {
    return Intl.message(
      'Delete conversation',
      name: 'DeleteConversation',
      desc: '',
      args: [],
    );
  }

  /// `Complete Profile`
  String get CompleteProfile {
    return Intl.message(
      'Complete Profile',
      name: 'CompleteProfile',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get Completed {
    return Intl.message(
      'Completed',
      name: 'Completed',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile before applying for a job`
  String get CompleteYourProfileBeforeApplyingForAJob {
    return Intl.message(
      'Complete your profile before applying for a job',
      name: 'CompleteYourProfileBeforeApplyingForAJob',
      desc: '',
      args: [],
    );
  }

  /// `Personal Details`
  String get PersonalDetails {
    return Intl.message(
      'Personal Details',
      name: 'PersonalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Full name, email, phone number, and your address`
  String get FullNameEmailPhoneNumberAndyourAddress {
    return Intl.message(
      'Full name, email, phone number, and your address',
      name: 'FullNameEmailPhoneNumberAndyourAddress',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get Education {
    return Intl.message(
      'Education',
      name: 'Education',
      desc: '',
      args: [],
    );
  }

  /// `porFolio`
  String get PortFolio {
    return Intl.message(
      'porFolio',
      name: 'PortFolio',
      desc: '',
      args: [],
    );
  }

  /// `University`
  String get University {
    return Intl.message(
      'University',
      name: 'University',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get Title {
    return Intl.message(
      'Title',
      name: 'Title',
      desc: '',
      args: [],
    );
  }

  /// `StartYear`
  String get StartYear {
    return Intl.message(
      'StartYear',
      name: 'StartYear',
      desc: '',
      args: [],
    );
  }

  /// `EndYear`
  String get EndYear {
    return Intl.message(
      'EndYear',
      name: 'EndYear',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Save {
    return Intl.message(
      'Save',
      name: 'Save',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get EditProfile {
    return Intl.message(
      'Edit Profile',
      name: 'EditProfile',
      desc: '',
      args: [],
    );
  }

  /// `Change Photo`
  String get ChangePhoto {
    return Intl.message(
      'Change Photo',
      name: 'ChangePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get Name {
    return Intl.message(
      'Name',
      name: 'Name',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get Bio {
    return Intl.message(
      'Bio',
      name: 'Bio',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get Address {
    return Intl.message(
      'Address',
      name: 'Address',
      desc: '',
      args: [],
    );
  }

  /// `Two-step verification`
  String get TwoStepVerification {
    return Intl.message(
      'Two-step verification',
      name: 'TwoStepVerification',
      desc: '',
      args: [],
    );
  }

  /// `What can we help?`
  String get WhatCanWeHelp {
    return Intl.message(
      'What can we help?',
      name: 'WhatCanWeHelp',
      desc: '',
      args: [],
    );
  }

  /// `The customer is very happy`
  String get TheCustomerIsVeryHappy {
    return Intl.message(
      'The customer is very happy',
      name: 'TheCustomerIsVeryHappy',
      desc: '',
      args: [],
    );
  }

  /// `The customer is very important, the customer will be followed by the customer. Fusce ultricies mi enim, quis vulputate nibh faucibus at Maecenas is in front, whether he accepts or not, he flatters flatters. There is a pillow in front and a trigger porta vulputate. He wants to decorate the classroom and not to the ecological boundaries. The phase of the soft quiver before, in the ullamcorper the mass of the ullamcorper and I chat with Leo and let him be a lot of fun sometimes.`
  String get SubTitleTOHelp {
    return Intl.message(
      'The customer is very important, the customer will be followed by the customer. Fusce ultricies mi enim, quis vulputate nibh faucibus at Maecenas is in front, whether he accepts or not, he flatters flatters. There is a pillow in front and a trigger porta vulputate. He wants to decorate the classroom and not to the ecological boundaries. The phase of the soft quiver before, in the ullamcorper the mass of the ullamcorper and I chat with Leo and let him be a lot of fun sometimes.',
      name: 'SubTitleTOHelp',
      desc: '',
      args: [],
    );
  }

  /// `Jobs`
  String get Jobs {
    return Intl.message(
      'Jobs',
      name: 'Jobs',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get Active {
    return Intl.message(
      'Active',
      name: 'Active',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get Rejected {
    return Intl.message(
      'Rejected',
      name: 'Rejected',
      desc: '',
      args: [],
    );
  }

  /// `No applications were rejected`
  String get NoApplicationsWereRejected {
    return Intl.message(
      'No applications were rejected',
      name: 'NoApplicationsWereRejected',
      desc: '',
      args: [],
    );
  }

  /// `If there is an application that is rejected by the company it will appear here`
  String get IfThereIsAnApplicationThatIsRejectedByTheCompanyItWillAppearHere {
    return Intl.message(
      'If there is an application that is rejected by the company it will appear here',
      name: 'IfThereIsAnApplicationThatIsRejectedByTheCompanyItWillAppearHere',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get Messages {
    return Intl.message(
      'Messages',
      name: 'Messages',
      desc: '',
      args: [],
    );
  }

  /// `Search messages...`
  String get SearchMessages {
    return Intl.message(
      'Search messages...',
      name: 'SearchMessages',
      desc: '',
      args: [],
    );
  }

  /// `You have not received any messages`
  String get YouHaveNotReceivedAnyMessages {
    return Intl.message(
      'You have not received any messages',
      name: 'YouHaveNotReceivedAnyMessages',
      desc: '',
      args: [],
    );
  }

  /// `Once your application has reached the interview stage, you will get a message from the recruiter.`
  String
      get OnceYourApplicationHasReachedTheInterviewStageYouWillGetAMessageFromTheRecruiter {
    return Intl.message(
      'Once your application has reached the interview stage, you will get a message from the recruiter.',
      name:
          'OnceYourApplicationHasReachedTheInterviewStageYouWillGetAMessageFromTheRecruiter',
      desc: '',
      args: [],
    );
  }

  /// `Message filters`
  String get MessageFilters {
    return Intl.message(
      'Message filters',
      name: 'MessageFilters',
      desc: '',
      args: [],
    );
  }

  /// `Unread`
  String get Unread {
    return Intl.message(
      'Unread',
      name: 'Unread',
      desc: '',
      args: [],
    );
  }

  /// `Spam`
  String get Spam {
    return Intl.message(
      'Spam',
      name: 'Spam',
      desc: '',
      args: [],
    );
  }

  /// `Archived`
  String get Archived {
    return Intl.message(
      'Archived',
      name: 'Archived',
      desc: '',
      args: [],
    );
  }

  /// `Read All messages`
  String get ReadAllMessages {
    return Intl.message(
      'Read All messages',
      name: 'ReadAllMessages',
      desc: '',
      args: [],
    );
  }

  /// `notification`
  String get Notification {
    return Intl.message(
      'notification',
      name: 'Notification',
      desc: '',
      args: [],
    );
  }

  /// `No new notifications yet`
  String get NoNewNotificationsYet {
    return Intl.message(
      'No new notifications yet',
      name: 'NoNewNotificationsYet',
      desc: '',
      args: [],
    );
  }

  /// `You will receive a notification if there is something on your account`
  String get YouWillReceiveANotificationIfThereIsSomethingOnyourAccount {
    return Intl.message(
      'You will receive a notification if there is something on your account',
      name: 'YouWillReceiveANotificationIfThereIsSomethingOnyourAccount',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get New {
    return Intl.message(
      'New',
      name: 'New',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get Yesterday {
    return Intl.message(
      'Yesterday',
      name: 'Yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Reviewed`
  String get Reviewed {
    return Intl.message(
      'Reviewed',
      name: 'Reviewed',
      desc: '',
      args: [],
    );
  }

  /// `Contacted`
  String get Contacted {
    return Intl.message(
      'Contacted',
      name: 'Contacted',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get About {
    return Intl.message(
      'About',
      name: 'About',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get Edit {
    return Intl.message(
      'Edit',
      name: 'Edit',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get General {
    return Intl.message(
      'General',
      name: 'General',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Login and security`
  String get LoginAndSecurity {
    return Intl.message(
      'Login and security',
      name: 'LoginAndSecurity',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get Others {
    return Intl.message(
      'Others',
      name: 'Others',
      desc: '',
      args: [],
    );
  }

  /// `Accessibility`
  String get Accessibility {
    return Intl.message(
      'Accessibility',
      name: 'Accessibility',
      desc: '',
      args: [],
    );
  }

  /// `Help Center`
  String get HelpCenter {
    return Intl.message(
      'Help Center',
      name: 'HelpCenter',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get TermsConditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'TermsConditions',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get PrivacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'PrivacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Share Via...`
  String get ShareVia {
    return Intl.message(
      'Share Via...',
      name: 'ShareVia',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Save`
  String get CancelSave {
    return Intl.message(
      'Cancel Save',
      name: 'CancelSave',
      desc: '',
      args: [],
    );
  }

  /// `Saved,`
  String get Saved {
    return Intl.message(
      'Saved,',
      name: 'Saved',
      desc: '',
      args: [],
    );
  }

  /// `Nothing has been saved yet`
  String get NothingHasBeenSavedYet {
    return Intl.message(
      'Nothing has been saved yet',
      name: 'NothingHasBeenSavedYet',
      desc: '',
      args: [],
    );
  }

  /// `Press the star icon on the job you want to save`
  String get PressTheStarIconOnTheJobYouWantToSave {
    return Intl.message(
      'Press the star icon on the job you want to save',
      name: 'PressTheStarIconOnTheJobYouWantToSave',
      desc: '',
      args: [],
    );
  }

  /// `Job Saved`
  String get JobSaved {
    return Intl.message(
      'Job Saved',
      name: 'JobSaved',
      desc: '',
      args: [],
    );
  }

  /// `Be an early applicant`
  String get BeAnEarlyApplicant {
    return Intl.message(
      'Be an early applicant',
      name: 'BeAnEarlyApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Type something...`
  String get TypeSomething {
    return Intl.message(
      'Type something...',
      name: 'TypeSomething',
      desc: '',
      args: [],
    );
  }

  /// `JobDetails`
  String get JobDetails {
    return Intl.message(
      'JobDetails',
      name: 'JobDetails',
      desc: '',
      args: [],
    );
  }

  /// `Employees For`
  String get EmployeesFor {
    return Intl.message(
      'Employees For',
      name: 'EmployeesFor',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get ChangePassword {
    return Intl.message(
      'Change Password',
      name: 'ChangePassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your old password`
  String get EnterYourOldPassword {
    return Intl.message(
      'Enter your old password',
      name: 'EnterYourOldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your new Password`
  String get EnterYourNewPassword {
    return Intl.message(
      'Enter Your new Password',
      name: 'EnterYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your new password`
  String get ConfirmYourNewPassword {
    return Intl.message(
      'Confirm your new password',
      name: 'ConfirmYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get EmailAddress {
    return Intl.message(
      'Email address',
      name: 'EmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Main e-mail address`
  String get MainEMailAddress {
    return Intl.message(
      'Main e-mail address',
      name: 'MainEMailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Account access`
  String get AccountAccess {
    return Intl.message(
      'Account access',
      name: 'AccountAccess',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get PhoneNumber {
    return Intl.message(
      'Phone number',
      name: 'PhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Face ID`
  String get FaceID {
    return Intl.message(
      'Face ID',
      name: 'FaceID',
      desc: '',
      args: [],
    );
  }

  /// `Please login to find your dream job`
  String get PleaseLoginToFindYourDreamJob {
    return Intl.message(
      'Please login to find your dream job',
      name: 'PleaseLoginToFindYourDreamJob',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get RememberMe {
    return Intl.message(
      'Remember me',
      name: 'RememberMe',
      desc: '',
      args: [],
    );
  }

  /// `ForgetPassword ?`
  String get ForgetPassword {
    return Intl.message(
      'ForgetPassword ?',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Dont’t have an account?`
  String get DontHaveAnAccount {
    return Intl.message(
      'Dont’t have an account?',
      name: 'DontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get Register {
    return Intl.message(
      'Register',
      name: 'Register',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get Password {
    return Intl.message(
      'Password',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get Google {
    return Intl.message(
      'Google',
      name: 'Google',
      desc: '',
      args: [],
    );
  }

  /// `FaceBook`
  String get FaceBook {
    return Intl.message(
      'FaceBook',
      name: 'FaceBook',
      desc: '',
      args: [],
    );
  }

  /// `Job notification`
  String get JobNotification {
    return Intl.message(
      'Job notification',
      name: 'JobNotification',
      desc: '',
      args: [],
    );
  }

  /// `Other notification`
  String get OtherNotification {
    return Intl.message(
      'Other notification',
      name: 'OtherNotification',
      desc: '',
      args: [],
    );
  }

  /// `Add portfolio here`
  String get AddPortfolioHere {
    return Intl.message(
      'Add portfolio here',
      name: 'AddPortfolioHere',
      desc: '',
      args: [],
    );
  }

  /// `Your privacy is important`
  String get YourPrivacyIsImportant {
    return Intl.message(
      'Your privacy is important',
      name: 'YourPrivacyIsImportant',
      desc: '',
      args: [],
    );
  }

  /// `The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at`
  String get SubTitleYourPrivacy1 {
    return Intl.message(
      'The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at',
      name: 'SubTitleYourPrivacy1',
      desc: '',
      args: [],
    );
  }

  /// `In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at`
  String get SubTitleYourPrivacy2 {
    return Intl.message(
      'In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at',
      name: 'SubTitleYourPrivacy2',
      desc: '',
      args: [],
    );
  }

  /// `Data controllers and contract partners`
  String get SubTitleYourPrivacy3 {
    return Intl.message(
      'Data controllers and contract partners',
      name: 'SubTitleYourPrivacy3',
      desc: '',
      args: [],
    );
  }

  /// `The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at`
  String get SubTitleYourPrivacy4 {
    return Intl.message(
      'The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at',
      name: 'SubTitleYourPrivacy4',
      desc: '',
      args: [],
    );
  }

  /// `Check your Email`
  String get CheckYourEmail {
    return Intl.message(
      'Check your Email',
      name: 'CheckYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Wehave sent a reset password to your email address`
  String get WeHaveSentAResetPasswordToYourEmailAddress {
    return Intl.message(
      'Wehave sent a reset password to your email address',
      name: 'WeHaveSentAResetPasswordToYourEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Open email app`
  String get OpenEmailApp {
    return Intl.message(
      'Open email app',
      name: 'OpenEmailApp',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get CreateNewPassword {
    return Intl.message(
      'Create new password',
      name: 'CreateNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Set your new password so you can login and acces Jobsque`
  String get SetYourNewPasswordSoYouCanLoginAndAccesJobsque {
    return Intl.message(
      'Set your new password so you can login and acces Jobsque',
      name: 'SetYourNewPasswordSoYouCanLoginAndAccesJobsque',
      desc: '',
      args: [],
    );
  }

  /// `Both password must match`
  String get BothPasswordMustMatch {
    return Intl.message(
      'Both password must match',
      name: 'BothPasswordMustMatch',
      desc: '',
      args: [],
    );
  }

  /// `Rest Password`
  String get RestPassword {
    return Intl.message(
      'Rest Password',
      name: 'RestPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password  changed  successfully!`
  String get PasswordChangedSuccessfully {
    return Intl.message(
      'Password  changed  successfully!',
      name: 'PasswordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Your password has been changed successfully, we will let you know if there are more problems with your account`
  String
      get YourPasswordHasBeenChangedSuccessfullyWeWillLetYouKnowIfThereAreMoreProblemsWithYourAccount {
    return Intl.message(
      'Your password has been changed successfully, we will let you know if there are more problems with your account',
      name:
          'YourPasswordHasBeenChangedSuccessfullyWeWillLetYouKnowIfThereAreMoreProblemsWithYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address you used when you       joined and we’ll send you instructions to reset       your password.`
  String
      get EnterTheEmailAddressYouUsedWhenYouJoinedAndWellSendYouInstructionsToResetYourPassword {
    return Intl.message(
      'Enter the email address you used when you       joined and we’ll send you instructions to reset       your password.',
      name:
          'EnterTheEmailAddressYouUsedWhenYouJoinedAndWellSendYouInstructionsToResetYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `You remember your password`
  String get YouRememberYourPassword {
    return Intl.message(
      'You remember your password',
      name: 'YouRememberYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Request password reset`
  String get RequestPasswordReset {
    return Intl.message(
      'Request password reset',
      name: 'RequestPasswordReset',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email....`
  String get EnterYourEmail {
    return Intl.message(
      'Enter your email....',
      name: 'EnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Set Filter`
  String get SetFilter {
    return Intl.message(
      'Set Filter',
      name: 'SetFilter',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get Reset {
    return Intl.message(
      'Reset',
      name: 'Reset',
      desc: '',
      args: [],
    );
  }

  /// `ShowResult`
  String get ShowResult {
    return Intl.message(
      'ShowResult',
      name: 'ShowResult',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message(
      'Skip',
      name: 'Skip',
      desc: '',
      args: [],
    );
  }

  /// `yourcareer from now on`
  String get YourCareerFromNowOn {
    return Intl.message(
      'yourcareer from now on',
      name: 'YourCareerFromNowOn',
      desc: '',
      args: [],
    );
  }

  /// `Find a job, and `
  String get FindAJobAnd {
    return Intl.message(
      'Find a job, and ',
      name: 'FindAJobAnd',
      desc: '',
      args: [],
    );
  }

  /// `start building`
  String get StartBuilding {
    return Intl.message(
      'start building',
      name: 'StartBuilding',
      desc: '',
      args: [],
    );
  }

  /// `Explore over 25,924 available job roles and upgrade your operator now.`
  String get ExploreOver25924AvailableJobRolesAndUpgradeYourOperatorNow {
    return Intl.message(
      'Explore over 25,924 available job roles and upgrade your operator now.',
      name: 'ExploreOver25924AvailableJobRolesAndUpgradeYourOperatorNow',
      desc: '',
      args: [],
    );
  }

  /// `Hundreds of jobs are waiting for you`
  String get HundredsOfJobsAreWaitingForYou {
    return Intl.message(
      'Hundreds of jobs are waiting for you',
      name: 'HundredsOfJobsAreWaitingForYou',
      desc: '',
      args: [],
    );
  }

  /// `join together`
  String get JoinTogether {
    return Intl.message(
      'join together',
      name: 'JoinTogether',
      desc: '',
      args: [],
    );
  }

  /// `Immediately join us and start applying for the job you are interested in.`
  String get ImmediatelyJoinUsAndStartApplyingForTheJobYouAreInterestedIn {
    return Intl.message(
      'Immediately join us and start applying for the job you are interested in.',
      name: 'ImmediatelyJoinUsAndStartApplyingForTheJobYouAreInterestedIn',
      desc: '',
      args: [],
    );
  }

  /// `Get the best`
  String get GetTheBest {
    return Intl.message(
      'Get the best',
      name: 'GetTheBest',
      desc: '',
      args: [],
    );
  }

  /// `choice for the job`
  String get ChoiceForTheJob {
    return Intl.message(
      'choice for the job',
      name: 'ChoiceForTheJob',
      desc: '',
      args: [],
    );
  }

  /// `you've always dreamed of`
  String get YouHaveAlwaysDreamedOf {
    return Intl.message(
      'you\'ve always dreamed of',
      name: 'YouHaveAlwaysDreamedOf',
      desc: '',
      args: [],
    );
  }

  /// `The better the skills you have, the greater the good job opportunities for you.`
  String get TheBetterTheSkillsYouHaveTheGreaterTheGoodJobOpportunitiesForYou {
    return Intl.message(
      'The better the skills you have, the greater the good job opportunities for you.',
      name: 'TheBetterTheSkillsYouHaveTheGreaterTheGoodJobOpportunitiesForYou',
      desc: '',
      args: [],
    );
  }

  /// `Thank you very much`
  String get ThankYouVeryMuch {
    return Intl.message(
      'Thank you very much',
      name: 'ThankYouVeryMuch',
      desc: '',
      args: [],
    );
  }

  /// `Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer.`
  String get NowHowShowDrink {
    return Intl.message(
      'Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer.',
      name: 'NowHowShowDrink',
      desc: '',
      args: [],
    );
  }

  /// `Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it's advertising, it's important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at`
  String get NowHowShowDrinkInFact {
    return Intl.message(
      'Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at The customer is very important, the customer will be followed by the customer. In fact, even if it\'s advertising, it\'s important to have a cartoon employee. Now who should drink the medicine? Donec feugiat massa mi, at hendrerit mauris rutrum at',
      name: 'NowHowShowDrinkInFact',
      desc: '',
      args: [],
    );
  }

  /// `month`
  String get Month {
    return Intl.message(
      'month',
      name: 'Month',
      desc: '',
      args: [],
    );
  }

  /// `ApplyNow`
  String get ApplyNow {
    return Intl.message(
      'ApplyNow',
      name: 'ApplyNow',
      desc: '',
      args: [],
    );
  }

  /// `Error is happened please try again or check your network`
  String get ErrorIsHappened {
    return Intl.message(
      'Error is happened please try again or check your network',
      name: 'ErrorIsHappened',
      desc: '',
      args: [],
    );
  }

  /// `Job description`
  String get JobDescription {
    return Intl.message(
      'Job description',
      name: 'JobDescription',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get ContactsUs {
    return Intl.message(
      'Contact us',
      name: 'ContactsUs',
      desc: '',
      args: [],
    );
  }

  /// `Skill required`
  String get SkillRequired {
    return Intl.message(
      'Skill required',
      name: 'SkillRequired',
      desc: '',
      args: [],
    );
  }

  /// `Work during`
  String get WorkDuring {
    return Intl.message(
      'Work during',
      name: 'WorkDuring',
      desc: '',
      args: [],
    );
  }

  /// `About company`
  String get AboutCompany {
    return Intl.message(
      'About company',
      name: 'AboutCompany',
      desc: '',
      args: [],
    );
  }

  /// `Saved Job Is deleted`
  String get SavedJobIsDeleted {
    return Intl.message(
      'Saved Job Is deleted',
      name: 'SavedJobIsDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Please Check Your Network And Try Again`
  String get PleaseCheckYourNetworkAndTryAgain {
    return Intl.message(
      'Please Check Your Network And Try Again',
      name: 'PleaseCheckYourNetworkAndTryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Your Job Search Alert`
  String get YourJobSearchAlert {
    return Intl.message(
      'Your Job Search Alert',
      name: 'YourJobSearchAlert',
      desc: '',
      args: [],
    );
  }

  /// `Job Application Update`
  String get JobApplicationUpdate {
    return Intl.message(
      'Job Application Update',
      name: 'JobApplicationUpdate',
      desc: '',
      args: [],
    );
  }

  /// `Job Application Reminders`
  String get JobApplicationReminders {
    return Intl.message(
      'Job Application Reminders',
      name: 'JobApplicationReminders',
      desc: '',
      args: [],
    );
  }

  /// `Jobs You May Be Interested In`
  String get JobsYouMayBeInterestedIn {
    return Intl.message(
      'Jobs You May Be Interested In',
      name: 'JobsYouMayBeInterestedIn',
      desc: '',
      args: [],
    );
  }

  /// `Job Seeker Updates`
  String get JobSeekerUpdates {
    return Intl.message(
      'Job Seeker Updates',
      name: 'JobSeekerUpdates',
      desc: '',
      args: [],
    );
  }

  /// `Show Profile`
  String get ShowProfile {
    return Intl.message(
      'Show Profile',
      name: 'ShowProfile',
      desc: '',
      args: [],
    );
  }

  /// `All Message`
  String get AllMessage {
    return Intl.message(
      'All Message',
      name: 'AllMessage',
      desc: '',
      args: [],
    );
  }

  /// `Message Nudges`
  String get MessageNudges {
    return Intl.message(
      'Message Nudges',
      name: 'MessageNudges',
      desc: '',
      args: [],
    );
  }

  /// `Use the phone number to reset your \n password`
  String get UseThePhoneNumberToResetYourPassword {
    return Intl.message(
      'Use the phone number to reset your \n password',
      name: 'UseThePhoneNumberToResetYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Old Password please`
  String get CheckYourOldPassword {
    return Intl.message(
      'Check Your Old Password please',
      name: 'CheckYourOldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Password please`
  String get CheckYourPassword {
    return Intl.message(
      'Check Your Password please',
      name: 'CheckYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password Is Empty`
  String get PasswordIsEmpty {
    return Intl.message(
      'Password Is Empty',
      name: 'PasswordIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password Is Least`
  String get PasswordIsLeast {
    return Intl.message(
      'Password Is Least',
      name: 'PasswordIsLeast',
      desc: '',
      args: [],
    );
  }

  /// `password Not Equal New Password`
  String get passwordNotEqualNewPassword {
    return Intl.message(
      'password Not Equal New Password',
      name: 'passwordNotEqualNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please Check Your Network And Try Again`
  String get PleaseCheckYourNetwork {
    return Intl.message(
      'Please Check Your Network And Try Again',
      name: 'PleaseCheckYourNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get LogOut {
    return Intl.message(
      'Log Out',
      name: 'LogOut',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Cancel {
    return Intl.message(
      'Cancel',
      name: 'Cancel',
      desc: '',
      args: [],
    );
  }

  /// `Log out of your account?`
  String get LogOutOfYourAccount {
    return Intl.message(
      'Log out of your account?',
      name: 'LogOutOfYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Check Your Account Or Your Network Please`
  String get CheckYourAccountOrNetwork {
    return Intl.message(
      'Check Your Account Or Your Network Please',
      name: 'CheckYourAccountOrNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Or Sign up With Account`
  String get OrSignUpWithAccount {
    return Intl.message(
      'Or Sign up With Account',
      name: 'OrSignUpWithAccount',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get SendCode {
    return Intl.message(
      'Send Code',
      name: 'SendCode',
      desc: '',
      args: [],
    );
  }

  /// `Name Is Least`
  String get NameIsLeast {
    return Intl.message(
      'Name Is Least',
      name: 'NameIsLeast',
      desc: '',
      args: [],
    );
  }

  /// `Name Is Empty`
  String get NameIsEmpty {
    return Intl.message(
      'Name Is Empty',
      name: 'NameIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Work From Office`
  String get WorkFromOffice {
    return Intl.message(
      'Work From Office',
      name: 'WorkFromOffice',
      desc: '',
      args: [],
    );
  }

  /// `Job Title`
  String get JobTitle {
    return Intl.message(
      'Job Title',
      name: 'JobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Location `
  String get Location {
    return Intl.message(
      'Location ',
      name: 'Location',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get Salary {
    return Intl.message(
      'Salary',
      name: 'Salary',
      desc: '',
      args: [],
    );
  }

  /// `JobType`
  String get JobType {
    return Intl.message(
      'JobType',
      name: 'JobType',
      desc: '',
      args: [],
    );
  }

  /// `FullTime`
  String get FullTime {
    return Intl.message(
      'FullTime',
      name: 'FullTime',
      desc: '',
      args: [],
    );
  }

  /// `Remote`
  String get Remote {
    return Intl.message(
      'Remote',
      name: 'Remote',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get Contract {
    return Intl.message(
      'Contract',
      name: 'Contract',
      desc: '',
      args: [],
    );
  }

  /// `PartTime`
  String get PartTime {
    return Intl.message(
      'PartTime',
      name: 'PartTime',
      desc: '',
      args: [],
    );
  }

  /// `OnSite`
  String get OnSite {
    return Intl.message(
      'OnSite',
      name: 'OnSite',
      desc: '',
      args: [],
    );
  }

  /// `InternShip`
  String get InternShip {
    return Intl.message(
      'InternShip',
      name: 'InternShip',
      desc: '',
      args: [],
    );
  }

  /// `Start year is required`
  String get StartYearIsEmpty {
    return Intl.message(
      'Start year is required',
      name: 'StartYearIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `end year is required`
  String get EndYearIsEmpty {
    return Intl.message(
      'end year is required',
      name: 'EndYearIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Experience`
  String get Experience {
    return Intl.message(
      'Experience',
      name: 'Experience',
      desc: '',
      args: [],
    );
  }

  /// `position *`
  String get Position {
    return Intl.message(
      'position *',
      name: 'Position',
      desc: '',
      args: [],
    );
  }

  /// `Company Name *`
  String get CompanyName {
    return Intl.message(
      'Company Name *',
      name: 'CompanyName',
      desc: '',
      args: [],
    );
  }

  /// `I am currently working in this role`
  String get IAmCurrentlyWorkingInThisRole {
    return Intl.message(
      'I am currently working in this role',
      name: 'IAmCurrentlyWorkingInThisRole',
      desc: '',
      args: [],
    );
  }

  /// `subTitle`
  String get SubTitle {
    return Intl.message(
      'subTitle',
      name: 'SubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create your portfolio. Applying for various types of jobs is easier.`
  String get CreateYourPortFolioApplyingForVariousTypesOfJobsIsEasier {
    return Intl.message(
      'Create your portfolio. Applying for various types of jobs is easier.',
      name: 'CreateYourPortFolioApplyingForVariousTypesOfJobsIsEasier',
      desc: '',
      args: [],
    );
  }

  /// `Your CV `
  String get YourCv {
    return Intl.message(
      'Your CV ',
      name: 'YourCv',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'ch'),
      Locale.fromSubtags(languageCode: 'du'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'ga'),
      Locale.fromSubtags(languageCode: 'gr'),
      Locale.fromSubtags(languageCode: 'id'),
      Locale.fromSubtags(languageCode: 'ko'),
      Locale.fromSubtags(languageCode: 'po'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
