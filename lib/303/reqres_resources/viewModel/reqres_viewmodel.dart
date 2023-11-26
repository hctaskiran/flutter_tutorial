import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/303/reqres_resources/services/reqres_service.dart';
import 'package:flutter_tutorial/303/reqres_resources/view/reqres_view.dart';
import 'package:flutter_tutorial/product/service.dart';

abstract class ReqresViewModel extends State<ReqResView> with ProjectDioMixin{
  late final IReqresService reqresService;
  @override
  void initState() {
    super.initState();
    reqresService = ReqresService(dio: service);
  }
}
