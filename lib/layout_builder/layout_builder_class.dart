import 'package:flutter/material.dart';

class LayoutBuilderClass extends StatelessWidget {
  const LayoutBuilderClass({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
      if (constraints.maxWidth <= 500) { // if the max width of the current screen is equal or less than 500 return mobile layout
          return const MobileLayout();
        } else if (constraints.maxWidth < 1500  ) {  // if the max width of the current screen is less than 1500 return destop layout
          return const DesktopLayout();
        }
        return const Center(
          child: Text("another layout", style: TextStyle(fontSize: 20)),
        );
      },
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailsContainer(num: index + 1),
                ),
              );
            },
            child: Container(
              color: Colors.green,
              margin: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: Text((index + 1).toString()),
            ),
          );
        },
      ),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({super.key, required this.num});
  final int num;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(num.toString(), style: const TextStyle(fontSize: 40))),
    );
  }
}

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    num = index + 1;
                    setState(() {});
                  },
                  child: Container(
                    color: Colors.green,
                    margin: const EdgeInsets.only(
                      bottom: 16,
                      left: 16,
                      right: 16,
                    ),
                    child: Text((index + 1).toString()),
                  ),
                );
              },
            ),
          ),
          Expanded(child: Center(child: Text(num.toString(), style: const TextStyle(fontSize: 40)))),
        ],
      ),
    );
  }
}
