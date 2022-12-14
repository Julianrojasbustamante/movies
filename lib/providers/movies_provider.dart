import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movies/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '58027cb615430cf3fa7dd737d75faf79';
  String _baseUrl = 'api.themoviedb.org';
  String _languaje = 'es-ES';
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];

  MoviesProvider() {
    print('Movies provider init');
    this.getOnDisplayMovies();
    this.getPopularMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _languaje,
      'page': '1',
    });
    final response = await http.get(url);
    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _languaje,
      'page': '1',
    });
    final response = await http.get(url);
    final popularResponse = PopularResponse.fromJson(response.body);
    popularMovies = [ ...popularMovies, ...popularResponse.results];
    notifyListeners();
  }
}