import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_usermodel.freezed.dart';
part 'freezed_usermodel.g.dart';

@freezed
class FreezedModel with _$FreezedModel {
  factory FreezedModel({
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "code") final String? code,
    @JsonKey(name: "is_customer") final int? isCustomer,
    @JsonKey(name: "customer_id") final int? customerId,
    @JsonKey(name: "profile") final String? profile,
    @JsonKey(name: "first_name") final String? firstName,
    @JsonKey(name: "last_name") final String? lastName,
    @JsonKey(name: "full_name") final String? fullName,
    @JsonKey(name: "second_name") final String? secondName,
    @JsonKey(name: "date_of_birth") final String? dateOfBirth,
    @JsonKey(name: "phone") final String? phone,
    @JsonKey(name: "email") final String? email,
    @JsonKey(name: "pin_code") final String? pinCode,
    @JsonKey(name: "company_name") final String? companyName,
    @JsonKey(name: "title") final String? title,
    @JsonKey(name: "position") final Map<String, dynamic>? position,
    @JsonKey(name: "screen_lock") final Map<String, dynamic>? screenLock,
    @JsonKey(name: "enable_notification") final bool? enableNotification,
    @JsonKey(name: "is_agree") final bool? isAgree,
    @JsonKey(name: "recommended") final String? recommended,
    @JsonKey(name: "percentage") final int? percentage,
    @JsonKey(name: "number_share") final int? numberShare,
    @JsonKey(name: "block_share") final String? blockShare,
    @JsonKey(name: "member_type") final List? memberType,
    @JsonKey(name: "investor_type") final String? investorType,
    @JsonKey(name: "qiid") final String? qiid,
    @JsonKey(name: "about") final String? about,
    @JsonKey(name: "address") final String? address,
    @JsonKey(name: "companies") final Map<String, dynamic>? companies,
    @JsonKey(name: "gender") final Map<String, dynamic>? gender,
    @JsonKey(name: "employment_status")
        final Map<String, dynamic>? employmentStatus,
    @JsonKey(name: "income") final String? income,
    @JsonKey(name: "company") final String? company,
    @JsonKey(name: "house_no") final String? houseNo,
    @JsonKey(name: "street_no") final String? streetNo,
    @JsonKey(name: "current_address")
        final Map<String, dynamic>? currentAddress,
    @JsonKey(name: "permanent_house_no") final String? permanentHouseNo,
    @JsonKey(name: "permanent_street_no") final String? permanentStreetNo,
    @JsonKey(name: "permanent_address")
        final Map<String, dynamic>? permanentAddress,
    @JsonKey(name: "id_card") final String? idCard,
    @JsonKey(name: "family_book") final String? familyBook,
    @JsonKey(name: "residence_book") final String? residenceBook,
    @JsonKey(name: "selfies_photo") final String? selfiesPhoto,
    @JsonKey(name: "letter_of_birth_photo") final String? letterOfBirthPhoto,
    @JsonKey(name: "number_of_children") final int? numberOfChildren,
    @JsonKey(name: "number_of_family_member") final int? numberOfFamilyMember,
    @JsonKey(name: "cbc_check") final String? cbcCheck,
    @JsonKey(name: "cbc_scores") final int? cbcScores,
    @JsonKey(name: "shift_works") final Map<String, dynamic>? shiftWorks,
    @JsonKey(name: "businesses_income") final String? businessesIncome,
    @JsonKey(name: "type_of_business_activities")
        final Map<String, dynamic>? typeOfBusinessActivities,
    @JsonKey(name: "general_expenses") final String? generalExpenses,
    @JsonKey(name: "yes_or_no_loan_leasing_repayment_expenses")
        final int? yesOrNoLoanLeasingRepaymentExpenses,
    @JsonKey(name: "loan_leasing_repayment_expenses")
        final String? loanLeasingRepaymentExpenses,
    @JsonKey(name: "certificate_or_contract_of_employment")
        final String? certificateOrContractOfEmployment,
    @JsonKey(name: "salary_slip") final String? salarySlip,
    @JsonKey(name: "back_id_card") final String? backIdCard,
    @JsonKey(name: "name_of_institution") final String? nameOfInstitution,
    @JsonKey(name: "confirmation_all_information")
        final int? confirmationAllInformation,
    @JsonKey(name: "purpose") final Map<String, dynamic>? purpose,
  }) = _FreezedModel;

  factory FreezedModel.fromJson(Map<String, dynamic> json) =>
      _$FreezedModelFromJson(json);
}
