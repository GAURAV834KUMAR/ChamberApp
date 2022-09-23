import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? name = '',
    String? phoneNo = '',
    String? bussName = '',
    String? bussAddress = '',
    String? type = '',
    String? regNo = '',
    String? area = '',
    String? verify = '',
    String? admin = '',
    int? paymentAmount,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'name': name,
        'phone_no': phoneNo,
        'buss_name': bussName,
        'buss_address': bussAddress,
        'type': type,
        'reg_no': regNo,
        'area': area,
        'verify': verify,
        'admin': admin,
        'payment_amount': paymentAmount,
      },
      returnBody: true,
    );
  }
}

class SearchCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? text = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Search',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'text': text,
      },
      returnBody: true,
    );
  }
}

class ListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'List',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class VerifiedCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? verify = '',
    String? regNo = '',
    String? type = '',
    String? admin = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Verified',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'verify': verify,
        'reg_no': regNo,
        'type': type,
        'admin': admin,
        'id': id,
      },
      returnBody: true,
    );
  }
}

class NotVerifyListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Not Verify List',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class VerifyListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Verify List',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class BusinessTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? type = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'BusinessType',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'type': type,
      },
      returnBody: true,
    );
  }
}

class SearchVerifyCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? phoneNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchVerify',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'phone_no': phoneNo,
      },
      returnBody: true,
    );
  }
}

class CreateEnquiryCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? bussRefId,
    String? eqText = '',
    String? eqType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateEnquiry',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'buss_ref_id': bussRefId,
        'eq_text': eqText,
        'eq_type': eqType,
      },
      returnBody: true,
    );
  }
}

class EnquiryListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EnquiryList',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class CreatePostCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? bussRefId,
    String? psText = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePost',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'buss_ref_id': bussRefId,
        'ps_text': psText,
      },
      returnBody: true,
    );
  }
}

class PostListCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostList',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class CountPostCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CountPost',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
      },
      returnBody: true,
    );
  }
}

class DeletePostCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? psId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeletePost',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ps_id': psId,
      },
      returnBody: true,
    );
  }
}

class DeleteEnquiryCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? eqId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteEnquiry',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'eq_id': eqId,
      },
      returnBody: true,
    );
  }
}

class PostListByBusinessCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? bussRefId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostListByBusiness',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'buss_ref_id': bussRefId,
      },
      returnBody: true,
    );
  }
}

class EnquiryListByBusinessCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? bussRefId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EnquiryListByBusiness',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'buss_ref_id': bussRefId,
      },
      returnBody: true,
    );
  }
}

class EnquiryTypeCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? eqType = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EnquiryType',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'eq_type': eqType,
      },
      returnBody: true,
    );
  }
}

class SelectBusinessCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SelectBusiness',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'id': id,
      },
      returnBody: true,
    );
  }
}

class BussidCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? phoneNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Bussid',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'phone_no': phoneNo,
      },
      returnBody: true,
    );
  }
}

class PostIdCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? psText = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostId',
      apiUrl: 'https://chamber.gauravtractor.in/api/Post/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'ps_text': psText,
      },
      returnBody: true,
    );
  }
}

class EnquiryIdCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? eqText = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'EnquiryId',
      apiUrl: 'https://chamber.gauravtractor.in/api/Enquiry/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'eq_text': eqText,
      },
      returnBody: true,
    );
  }
}

class PhoneVerifyCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? phoneNo = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PhoneVerify',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'phone_no': phoneNo,
      },
      returnBody: true,
    );
  }
}

class UpdateBussCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    String? name = '',
    String? phoneNo = '',
    String? bussName = '',
    String? bussAddress = '',
    String? type = '',
    String? area = '',
    int? id,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateBuss',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'name': name,
        'phone_no': phoneNo,
        'buss_name': bussName,
        'buss_address': bussAddress,
        'type': type,
        'area': area,
        'id': id,
      },
      returnBody: true,
    );
  }
}

class CreateOrderIdCall {
  static Future<ApiCallResponse> call({
    int? amount,
    String? currency = '',
    String? receipt = '',
    String? notes = '',
    bool? partialPayment,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CreateOrderId',
      apiUrl: 'https://api.razorpay.com/v1/orders/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'amount': amount,
        'currency': currency,
        'receipt': receipt,
        'notes': notes,
        'partial_payment': partialPayment,
      },
      returnBody: true,
    );
  }
}

class UpdateRegisterCall {
  static Future<ApiCallResponse> call({
    String? stype = '',
    int? id,
    String? admin = '',
    int? paymentAmount,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateRegister',
      apiUrl: 'https://chamber.gauravtractor.in/api/Business/?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'stype': stype,
        'id': id,
        'admin': admin,
        'payment_amount': paymentAmount,
      },
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
