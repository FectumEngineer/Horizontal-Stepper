<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

This is a horizontal stepper can be used to indicate the progress in multiple stage.
<!-- |![Blink](https://github.com/imujtaba8488/showcase/blob/master/im_stepper/dot_stepper/effects/blink.gif) -->


## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

To integrate the HorizontalStepper into your app, you need to import the import 'package:horizontal_stepper_step/horizontal_stepper.dart';
 which contains HorizontalStepper widget.

// This is the sample data for the horizontal stepper
``` HorizontalStepper(
      totalStep: 4,
      completedStep: 3,
      selectedColor: Colors.red,
      backGroundColor: Colors.amber,
    );
```

## Widget Implementation

```class _MyHomePageState extends State<MyHomePage> {
     int _counter = 0;
     int _totalSteps = 5;

     void _incrementCounter() {
       setState(() {
         _counter < _totalSteps ? _counter++ : _counter--;
       });
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text(widget.title),
         ),
         body: Padding(
           padding: const EdgeInsets.only(top: 40.0),
           child: HorizontalStepper(
             totalStep: _totalSteps,
             completedStep: _counter,
             selectedColor: Colors.red,
             backGroundColor: Colors.blue,
           ),
         ),
         floatingActionButton: FloatingActionButton(
           onPressed: _incrementCounter,
           tooltip: 'Increment',
           child: const Icon(Icons.add),
         ), // This trailing comma makes auto-formatting nicer for build methods.
       );
     }
   }

```
