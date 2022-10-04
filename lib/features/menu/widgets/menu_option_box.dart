import 'package:flutter/material.dart';

class MenuOptionBox extends StatelessWidget {
  final String optionMenu;

  const MenuOptionBox({Key? key, required this.optionMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: Material(
            borderRadius: BorderRadius.circular(7),
            elevation: 1,
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 42,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          optionMenu,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.arrow_drop_down),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
