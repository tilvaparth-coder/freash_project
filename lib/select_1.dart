import 'package:flutter/material.dart';
import 'package:song_app/select_2.dart';

class Select1 extends StatelessWidget {
  const Select1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// 🔹 FULL BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              'assets/images/select1.jpg',
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 MAIN CONTENT
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [

                const Spacer(),

                /// 🔹 MIDDLE CONTENT
                Column(
                  children:
                    Container(
                      child: Text(
                        'Welcome! Every step you take brings '
                                 'you closer to your goals. '
                                  'Keep pushing forward!',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                ),

                const Spacer(),

                /// 🔹 BOTTOM BUTTONS (SAME LINE)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    /// SKIP BUTTON WITH BOX DECORATION
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white24,// background
                        borderRadius: BorderRadius.circular(20),

                        border: Border.all(
                          color: const Color(0xFFD6B585),
                          width: 1,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Select2(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),


                    /// NEXT BUTTON ( > )
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Select2(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(0xFFD6B585),
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
