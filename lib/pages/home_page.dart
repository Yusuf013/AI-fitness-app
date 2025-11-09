import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  // 👇 Hier kun je makkelijk je eigen afbeeldingen en teksten toevoegen
  final List<Map<String, String>> _slides = [
    {
      'image': 'assets/images/homeslide1.png',
      'text':
          'Weet je niet zeker of je je oefening goed uitvoert?”\nJe bent niet de enige.',
    },
    {
      'image': 'assets/images/homeslide2.png',
      'text':
          'Maak een foto van je oefening — onze AI herkent wat je doet.”Zo leer je precies wat goed of fout gaat.',
    },
    {
      'image': 'assets/images/homeslide3.png',
      'text':
          '“Ontvang directe feedback en leer welke spieren je traint.”Train slimmer, niet harder.',
    },
    {
      'image': 'assets/images/homeslide4.png',
      'text':
          'Neem een kijkje achter de schermen over de nauwekeurigheid van de AI',
    },
    {
      'image': 'assets/images/homeslide5.png',
      'text':
          '“Volg je vooruitgang en verbeter elke training.”Jouw persoonlijke AI-coach, altijd bij je.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E1412), // Donkere achtergrond
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // bovenaan beginnen
            crossAxisAlignment:
                CrossAxisAlignment.center, // horizontaal centreren
            children: [
              const SizedBox(height: 20),
              const Text(
                'FitAI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Welkom bij FitAI',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                '“Weet je niet zeker of je je oefening goed uitvoert?”\nJe bent niet de enige.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 40),

              // 👇 De carrousel slider
              SizedBox(
                height: 475,
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _slides.length,
                  itemBuilder: (context, index) {
                    final slide = _slides[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Afbeelding
                        Container(
                          width: 280,
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(0xFF7BA17B), // placeholderkleur
                            image: DecorationImage(
                              image: AssetImage(slide['image']!),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Tekst onder afbeelding
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 25,
                          ),
                          child: Text(
                            slide['text']!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              const SizedBox(height: 25),

              // 👇 Puntjes onderaan
              SmoothPageIndicator(
                controller: _controller,
                count: _slides.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.white24,
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
