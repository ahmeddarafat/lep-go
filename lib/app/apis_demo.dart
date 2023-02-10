import '../domain/models/product_details_model.dart';
import '../domain/models/seller_model.dart';
import '../presentation/resources/constants/app_assets.dart';
import '../presentation/resources/constants/app_strings.dart';

//* Home
/// categories
const List<String> imagesOFCategories = [
  AppAssets.car,
  AppAssets.bicycle,
  AppAssets.buildingAmico,
  AppAssets.consulting,
  AppAssets.microScope,
  AppAssets.smartHome,
];

const List<String> titleOfCategories = [
  AppString.cars,
  AppString.bicycle,
  AppString.apartments,
  AppString.consultings,
  AppString.medicalTools,
  AppString.smartHome
];

/// offers
const List<String> offersImg = [
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
];
const List<String> offersTitles = [
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
];

/// suggestion
const List<String> suggestionImg = [
  AppAssets.bicycleImg,
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
  AppAssets.carImg,
  AppAssets.playstation,
  AppAssets.apartment,
];
const List<String> suggestionTitle = [
  AppString.bicycle,
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
  AppString.cars,
  AppString.playstation5,
  AppString.apartments,
];

//* categories

const List<String> categoriesImg = [
  AppAssets.bicycleCate,
  AppAssets.buildingCate,
  AppAssets.carCate,
  AppAssets.consultingCate,
  AppAssets.fishingCate,
  AppAssets.manufacturingCate,
  AppAssets.shopsCate,
  AppAssets.smartHomeCate,
  AppAssets.weddingPlannerCate,
  AppAssets.worldHepatitisCate,
];
const List<String> categoriesTitle = [
  AppString.bicycle,
  AppString.apartments,
  AppString.cars,
  AppString.consultings,
  AppString.fishing,
  AppString.manufacturing,
  AppString.shops,
  AppString.smartHome,
  AppString.weddingPlanner,
  AppString.medicalTools,
];

// product details

const List<String> imgs = [
  AppAssets.carImg,
  AppAssets.carImg
];

const  productDetails = ProductDetailsModel(
  images: imgs,
  name: "BMW",
  price: 1500,
  place: "5 street Mansoura",
  description:
      "BMW is the best car in Munich and produces motor vehicles ",
  conditions:
      "BMW is the best car in Munich and produces motor vehicles ",
);

// seller
const sellerDemo = SellerModel(
  image: AppAssets.seller,
  name: "Ahmed Arafat",
  place: "Mansoura"
);


