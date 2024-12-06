class PlanetsModel {
  String? name,
      image,
      image_3d,
      title,
      info,
      distance,
      gravity,
      length,
      year,
      mass,
      radius,
      area;
  PlanetsModel(
      {this.name,
      this.image,
      this.image_3d,
      this.title,
      this.info,
      this.distance,
      this.gravity,
      this.length,
      this.year,
      this.mass,
      this.radius,
      this.area});
}

List<PlanetsModel> plants = [
  PlanetsModel(
    name: 'Sun',
    image: 'assets/images/sun.png',
    image_3d: 'assets/images/images3D/sun.glb',
    title: 'The Sun: Our Solar System\'s Star',
    info:
        'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun\'s magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.',
    distance: "0",
    length: '0',
    year: '0',
    radius: '695,700',
    mass: '1.989 × 10³⁰',
    gravity: '274',
    area: '6.09 × 10¹²',
  ),
  PlanetsModel(
    name: 'Mercury',
    image: 'assets/images/mercury.png',
    image_3d: 'assets/images/images3D/mercury.glb',
    title: 'Mercury: The Closest Planet',
    info:
        'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth\'s Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter.',
    distance: '57,909,227',
    length: '1,407.6',
    year: '0.24',
    radius: '2,439.7',
    mass: '3.301 × 10²³',
    gravity: '3.7',
    area: '7.48 × 10⁷',
  ),
  PlanetsModel(
    name: 'Venus',
    image: 'assets/images/venus.png',
    image_3d: 'assets/images/images3D/venus.glb',
    title: 'Venus: Earth\'s Toxic Twin',
    info:
        'Venus is often referred to as Earth\'s twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.',
    distance: '108,209,072',
    length: '5,832.2',
    year: '0.62',
    radius: '6,051.8',
    mass: '4.867 × 10²⁴',
    gravity: '8.87',
    area: '4.60 × 10⁸',
  ),
  PlanetsModel(
    name: 'Earth',
    image: 'assets/images/earth.png',
    image_3d: 'assets/images/images3D/earth.glb',
    title: 'Earth: Our Blue Marble',
    info:
        'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
    distance: '149,598,026',
    length: '23.93',
    year: '1',
    radius: '6,371',
    mass: '5.972 × 10²⁴',
    gravity: '9.81',
    area: '5.10 × 10⁸',
  ),
  PlanetsModel(
    name: 'Mars',
    image: 'assets/images/mars.png',
    image_3d: 'assets/images/images3D/mars.glb',
    title: 'Mars: The Red Planet',
    info:
        'Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA\'s Perseverance rover is currently searching for signs of ancient microbial life on the planet\'s surface.',
    distance: '227,943,824',
    length: '24.62',
    year: '1.88',
    radius: '3,389.5',
    mass: '6.39 × 10²³',
    gravity: '3.71',
    area: '1.45 × 10⁸',
  ),
  PlanetsModel(
    name: 'Jupiter',
    image: 'assets/images/jupiter.png',
    image_3d: 'assets/images/images3D/jupiter.glb',
    title: 'Jupiter: The Gas Giant',
    info:
        'Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.',
    distance: '778,547,669',
    length: '9.92',
    year: '11.86',
    radius: '69,911',
    mass: '1.898 × 10²⁷',
    gravity: '24.79',
    area: '6.21 × 10¹⁵',
  ),
  PlanetsModel(
    name: 'Saturn',
    image: 'assets/images/saturn.png',
    image_3d: 'assets/images/images3D/saturn.glb',
    title: 'Saturn: The Ringed Planet',
    info:
        'Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn\'s largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.',
    distance: '1,426,666,422',
    length: '10.66',
    year: '29.46',
    radius: '58,232',
    mass: '5.683 × 10²⁶',
    gravity: '10.44',
    area: '4.27 × 10¹⁵',
  ),
  PlanetsModel(
    name: 'Uranus',
    image: 'assets/images/uranus.png',
    image_3d: 'assets/images/images3D/uranus.glb',
    title: 'Uranus: The Tilted Planet',
    info:
        'Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus\'s atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.',
    distance: '2,870,990,000',
    length: '17.24',
    year: '84.01',
    radius: '25362',
    mass: '8.681 × 10²⁵',
    gravity: '8.69',
    area: '8.1 × 10¹⁵',
  ),
  PlanetsModel(
    name: 'neptune',
    image: 'assets/images/neptune.png',
    image_3d: 'assets/images/images3D/neptune.glb',
    title: 'Neptune: The Distant World',
    info:
        'Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.',
    distance: '4,498,252,900',
    length: '16.11',
    year: '164.8',
    radius: '24622',
    mass: '1.024 × 10²⁶',
    gravity: '11.15',
    area: '7.65 × 10¹⁵',
  ),
];
