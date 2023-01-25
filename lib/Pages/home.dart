import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f4cc4),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
            child: Container(
          decoration: const BoxDecoration(
            color: Color(0xfff9fafc),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SectionOne(),
                SizedBox(
                  height: 20,
                ),
                SectionTwo(),
                SizedBox(
                  height: 20,
                ),
                SectionThree(),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class SectionThree extends StatelessWidget {
  const SectionThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  "Total Team Members",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff5d6591),
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.info_outline,
                  size: 20,
                  color: Colors.grey,
                )
              ],
            ),
            const Divider(
              height: 40,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "86",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff072645),
                  ),
                ),
                //Image(image: AssetImage("lib/images/1.jpeg")),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const AddTeamButton(),
          ],
        ),
      ),
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome back",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xff010643),
          ),
        ),
        Row(
          children: const [
            Text(
              "Valeria",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff0056f5),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            SizedBox(
              height: 30,
              width: 40,
              child: Image(
                image: AssetImage("lib/images/Waving.png"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SectionOne extends StatelessWidget {
  const SectionOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          height: 40,
          width: 40,
          child: Image(
            image: AssetImage("lib/images/Logo.png"),
          ),
        ),
        SizedBox(
          width: 290,
        ),
        Expanded(child: Icon(Icons.menu_rounded, size: 40))
      ],
    );
  }
}

class AddTeamButton extends StatelessWidget {
  const AddTeamButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff072645),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Add team members",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.person_add_alt_outlined)
          ],
        ),
      ),
    );
  }
}
