import 'package:dio/dio.dart';
import 'agenda.dart';

class AgendaService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:8000/api',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 5),
  ));
  //final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8000/api'));

  Future<List<Agenda>> getAll() async {
    final response = await _dio.get('/agenda');
    return (response.data as List)
        .map((json) => Agenda.fromJson(json))
        .toList();
  }

  Future<void> create(Agenda agenda) async {
    await _dio.post('/agenda', data: agenda.toJson());
  }

  Future<void> update(int id, Agenda agenda) async {
    await _dio.put('/agenda/$id', data: agenda.toJson());
  }

  Future<void> delete(int id) async {
    await _dio.delete('/agenda/$id');
  }
}
