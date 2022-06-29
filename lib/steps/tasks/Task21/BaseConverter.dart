class BaseConverter{
  static double convertKelvin(double Celsius){
    return Celsius + 273.15;
  }
  static double convertFahrenheit(double Celsius){
    return Celsius * 1.8 + 32;
  }
}