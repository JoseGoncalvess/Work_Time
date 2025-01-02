import 'package:flutter/material.dart';
import 'package:work_time/core/consts.dart';

class CustomBottomVavigator extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;
  final double iconSpacing;

  const CustomBottomVavigator({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.iconSpacing = 24.0, // Valor padrão para espaçamento
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: MediaQuery.sizeOf(context).height * 0.08,
      shape: CircularNotchedRectangle(),
      notchMargin: 1.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIcon(Icons.home, 'Home', 0),
          _buildIcon(Icons.note_alt, 'Solicitações', 1),
          SizedBox(width: iconSpacing),
          _buildIcon(Icons.person, 'Perfil', 2),
          _buildIcon(Icons.settings, 'Ajustes', 3),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, String label, int index) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () => onItemTapped(index),
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.2,
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
