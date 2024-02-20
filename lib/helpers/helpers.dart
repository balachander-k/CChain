// ignore_for_file: avoid_classes_with_only_static_members

class CarbonFootPrint {
  // >> Emission unit = kg of CO2

  // Common electric devices consumptions

  // Assumming that power usage of fan per hour is 65 watts
  static const double kwhUsedByFanPerHour = 0.065;

  // Assumming the TV is LED and is 35 inches in size
  // Source: https://www.rtings.com/tv/learn/led-oled-power-consumption-and-electricity-cost
  static const double kwhUsedByTVPerHour = 0.03;

  // Assuming that power usage of fridge per hour is 250 watt
  static const double kwhUsedByFridgePerHour = 0.25;

  // Electricity(kWh)
  static const double emissionPerUnitElectricity = 0.475;

  // Water(L)
  static const double emissionPerUnitWater = 0.001;

  // Petrol(L)
  static const double emissionPerKmCar = 0.313;

  // Diesel(L)
  static const double emissionPerKmBike = 0.0687;

  static const double emissionPerKmBicycle = 0.016;

  // Meat, Fish, eggs (calories)
  static const double emissionPerUnitCalorieOfMeat = 219.67;

  // grain & baked food (calories)
  static const double emissionPerUnitCalorieOfGrain = 15.34;

  // Dairy(calories)
  static const double emissionPerUnitCalorieOfDairy = 1.9;

  // Fruits & vegetables (calories)
  static const double emissionPerUnitCalorieOfFruit = 1.55;

  // Average
  // TODO: DUMMY DATA, FOR EXPERIMENT
  static const double avgEmissionDueToHouseHoldPerDay = 10;
  static const double avgEmissionDueToFoodPerDay = 10;
  static const double avgEmissionDueToTravelPerDay = 10;

  // Get the daily carbon footprint of your household activities
  static double getDailyHouseHoldCarbonFootPrint(
    double hoursFanUsed,
    double hoursTVUsed,
    double hoursFridgeUsed,
    double litresOfWaterUsed,
  ) {
    final double electrictyComsunptioninKWH = hoursFanUsed * kwhUsedByFanPerHour +
        hoursTVUsed * kwhUsedByTVPerHour +
        hoursFridgeUsed * kwhUsedByFridgePerHour;

    final double emissionDueToElectricity =
        emissionPerUnitElectricity * electrictyComsunptioninKWH;
    final double emissionDueToWater = emissionPerUnitWater * litresOfWaterUsed;

    return emissionDueToElectricity + emissionDueToWater ;
  }

  // Get the daily footprint of your travel related activities
  static double getDailyTravelFootPrint(double distanceTravelledByBike,
      double distanceTravelledByCar, double distanceTravelledByBicycle,) {
    return emissionPerKmBike * distanceTravelledByBike +
            emissionPerKmCar * distanceTravelledByCar +
            emissionPerKmBicycle * distanceTravelledByBicycle;
  }

  // Get the daily footprint of your food related activities
  static double getDailyFoodCarbonFootPrint(
    double meatCalorieIntake,
    double grainCalorieIntake,
    double dairyCalorieIntake,
    double fruitCalorieIntake,
  ) {
    return (meatCalorieIntake * emissionPerUnitCalorieOfMeat +
            grainCalorieIntake * emissionPerUnitCalorieOfGrain +
            dairyCalorieIntake * emissionPerUnitCalorieOfDairy +
            fruitCalorieIntake * emissionPerUnitCalorieOfFruit) / 1000;
  }

  // Get total carbon footprint according to daily activities
  static double getTotalCarbonFootPrint(
    // Household
    double hoursFanUsed,
    double hoursTVUsed,
    double hoursFridgeUsed,
    double litresOfWaterUsed,

    // Travel
    double distanceTravelledByBike,
    double distanceTravelledByCar,
    double distanceTravelledByBicycle,

    // Food
    double meatCalorieIntake,
    double grainCalorieIntake,
    double dairyCalorieIntake,
    double fruitCalorieIntake,
  ) {
    return getDailyHouseHoldCarbonFootPrint(
            hoursFanUsed, hoursTVUsed, hoursFridgeUsed, litresOfWaterUsed,) +
        getDailyTravelFootPrint(distanceTravelledByBike, distanceTravelledByCar,
            distanceTravelledByBicycle,) +
        getDailyFoodCarbonFootPrint(meatCalorieIntake, grainCalorieIntake,
            dairyCalorieIntake, fruitCalorieIntake,);
  }
}
