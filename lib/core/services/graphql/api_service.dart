import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rim_stor/features/auth/data/login_request_body.dart';
import 'package:rim_stor/features/auth/data/login_response.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(graphql)
  Future<LoginResponse> login(
    @Body() Map<String, dynamic> mutasion,
  );
  @GET('/api/v1/auth/profile')
  Future<LoginResponse> userRole(
    @Body() Map<String, dynamic> getUserRole,
  );
}
