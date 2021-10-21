// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/business_logic/bloc/weather_repository.dart';
import 'package:weather_bloc/locator.dart';

import 'business_logic/bloc/weather_bloc.dart';
import 'business_logic/models/weather.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final weatherBloc = WeatherBloc();
  final weatherRepo = WeatherRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fake Weather App"),
      ),
      body: BlocProvider<WeatherBloc>(
        create: (context) => weatherBloc,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            alignment: Alignment.center,
            child: BlocBuilder(
              bloc: weatherBloc,
              builder: (BuildContext context, WeatherState state) {
                if (state is WeatherLoading) {
                  return buildLoading();
                } else if (state is WeatherLoaded) {
                  return buildColumnWithData(state.weather);
                }
                return buildInitialInput();
              },
            )),
      ),
    );
  }

  Widget buildInitialInput() {
    return Center(
      child: CityInputField(),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  // Builds widgets from the starter UI with custom weather data
  Column buildColumnWithData(WeatherResult weather) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          weather.weatherStateName!,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          // Display the temperature with 1 decimal place
          "${weather.theTemp?.toStringAsFixed(1)} °C",
          style: TextStyle(fontSize: 80),
        ),
        CityInputField(),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    // Don't forget to call dispose on the Bloc to close the Streams!
    weatherBloc.close();
  }
}

class CityInputField extends StatefulWidget {
  const CityInputField({
    Key? key,
  }) : super(key: key);

  @override
  _CityInputFieldState createState() => _CityInputFieldState();
}

class _CityInputFieldState extends State<CityInputField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextField(
        onSubmitted: submitCityName,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: "Enter a city",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  void submitCityName(String cityName) {
    // We will use the city name to search for the fake forecast
    final weatherBloc = BlocProvider.of<WeatherBloc>(context);

    // final repo = WeatherRepository();
    // repo.getWoeid(cityName);
    // repo.fetchWeather(44418);
    // final weatherBloc = context.read<WeatherBloc>();
    // Initiate getting the weather
    weatherBloc.add(GetWoeid(cityName));
    // weatherBloc.
  }
}
