
import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/models/school.dart';

class DashboardProvider extends ChangeNotifier{

  PageController pageController = PageController();

  void setPageController(){
    pageController = PageController();
  }

  void changePage( int index ){
    //pageController.jumpToPage(index);
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  String textSkills = "⚜ Sistemas web implementando Angular, ReactJs, Flutter Web"
      "\n⚜ Backend con Nodejs, Laravel, Express"
      "\n⚜ Desarrollo movil nativo java/kotlin y multiplataforma con Flutter"
      "\n⚜ Base de datos: MySql, PosgreSql, MongoDB, Firestore"
      "\n⚜ Integración de servicios con Firebase/ Heroku/ DigitalOsean"
      "\n⚜ Experiencia trabajando con Gestion de versiones GIT";

  List<School> listSchools = [
    School(
        title: "Técnico Bachiller En Informatica",
        description: "Colegio Nacional De Bachilleres Tizimín, Yucatán.",
        year: "2011",
      link: "https://www.conalep.edu.mx/"
    ),
    School(
        title: "Licenciatura En Ciencias De La Computación",
        description: "Universidad Autonoma De Yucatán Tizimín, Yucatán",
        year: "2015",
        link: "https://www.matematicas.uady.mx/planes-de-estudio/licenciaturas/licenciatura-en-ciencias-de-la-computacion"
    ),
    School(
        title: "Cursos en linea",
        description: "Platzi",
        year: "2019",
        link: "https://platzi.com/p/JesusMarfil/"
    ),
    /*School(
        title: "Secundaria",
        description: "Técnica 33 Sucilá, Yucatán",
        year: "2008"
    ),*/
  ];

  List<Project> listProjects = [
    Project(
      company: "Filup",
      title: "Filup Check",
      description: "Desarrollo movil multiplataforma.",
      imageAsset: "assets/images/checker.jpg",
      url: "https://play.google.com/store/apps/details?id=mx.filup.checador&hl=es_419",
      color : const Color(0xff629E4C)
    ),
    Project(
      company: "Freelancer",
      title: "Chan Talkú",
      description: "Desarrollo móvil multiplataforma.",
      imageAsset: "assets/images/miahorro.png",
      url: "https://play.google.com/store/apps/details?id=com.kripton.miahorro&hl=es_419",
        color : const Color(0xffFAB95D)
    ),
    Project(
      company: "Creatibot",
      title: "TinBin Encargos",
      description: "Desarrollo móvil multiplataforma.",
      imageAsset: "assets/images/tinbin.png",
      url: "https://apps.apple.com/mx/app/tinbin-encargos/id1536179569?l=en",//"https://play.google.com/store/apps/details?id=com.creatibot.tinbinencargos&hl=es_419",
        color : const Color(0xff268290)
    ),
    Project(
      company: "Freelancer",
      title: "City",
      description: "Desarrollo móvil nativo.",
      imageAsset: "assets/images/city.png",
      url: "https://play.google.com/store/apps/details?id=mx.com.aluminati.city&hl=es_419",
        color : const Color(0xff217377)
    ),
    Project(
        company: "Freelancer",
        title: "Ecoclean-car",
        description: "Desarrollo móvil multiplataforma.",
        imageAsset: "assets/images/ecocleancar.jpeg",
        url: "https://play.google.com/store/apps/details?id=xyz.kripton.ecocleancar&hl=es_419",
        color : const Color(0xffAFD766)
    ),
  ];

  List<Experience> listExperience = [
    Experience(
      company: "Filup",
      title: "Desarrollador de aplicaciones Moviles",
      description: "Agosto de 2021 - Hasta ahora",
      imageAsset: "assets/images/filup_logo.jpg",
      color: Colors.green
    ),
    Experience(
        company: "Creatibot",
        title: "FullStack Developer",
        description: "Enero 2017 - Junio 2021",
        imageAsset: "assets/images/cb.png",
        color: Colors.grey
    ),
    Experience(
        company: "Freelancer",
        title: "FullStack Developer",
        description: "Desde el 2016 - Hasta ahora",
        imageAsset: "assets/logo_bg.png",
      color: Colors.blueAccent
    ),
    Experience(
        company: "Uady",
        title: "Practicas profesionales",
        description: "Enero de 2016 - Julio de 2016",
        imageAsset: "assets/images/uady.png",
      color: Colors.amber
    ),
  ];
}