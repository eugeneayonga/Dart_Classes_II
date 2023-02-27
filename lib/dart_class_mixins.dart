// MIXINS are a way to reuse a class's code in multiple class hierarchies.
// The class whose code is being reused is called a MIXIN.
// The classes that inherit the code are called MIXIN-APPLICATIONS.

class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist {
  void playGuitar() => print('Playing the guitar!');
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print('Playing the drums!');
  void perform() => playDrums();
}

class Musician extends Performer with Guitarist, Drummer {}

dynamic mixinsDisplay() {
  Musician musician = Musician();
  musician.playDrums();
  musician.playGuitar();
}
