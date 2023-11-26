import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_tutorial/303/reqres_resources/model/resource_model.dart';

abstract class IReqresService {
  IReqresService({required this.dio});
  final Dio dio;

  Future<List<ResourceModel>?> fetchResourceItem();
}

enum _ReqresPath { resource }

class ReqresService extends IReqresService {
  ReqresService({required super.dio});

  @override
  Future<List<ResourceModel>?> fetchResourceItem() async {
    final response = await dio.get('/${_ReqresPath.resource.name}');

    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is List) {
        return jsonBody.map((json) => ResourceModel.fromJson(json)).toList();
      }
    }
    return null;
  }
}
