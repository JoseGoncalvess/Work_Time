import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';

class CustomBottomVavigator extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;
  final double iconSpacing;
  final List<Widget>? pages;

  const CustomBottomVavigator({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.iconSpacing = 24.0,
    this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: MediaQuery.sizeOf(context).height * 0.08,
      shape: CircularNotchedRectangle(),
      notchMargin: 1.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIcon(Icons.note_alt, 'Solicitações', 1, pages![0]),
          _buildIcon(Icons.person, 'Perfil', 2, pages![1]),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String label, int index, Widget? page) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page!,
            )),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.22,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: index == selectedIndex
                    ? primaryColorVariant
                    : secundaryColor,
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: index == selectedIndex
                        ? primaryColor
                        : secundaryColorVariant,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
