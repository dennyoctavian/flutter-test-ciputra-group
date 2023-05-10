part of 'widgets.dart';

class CardElixir extends StatelessWidget {
  final Elixir elixir;

  const CardElixir(this.elixir, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AttributeWizard(
            "ID Elixir",
            elixir.id ?? 'No ID',
          ),
          AttributeWizard(
            "Name",
            elixir.name ?? 'Anonymous',
          ),
        ],
      ),
    );
  }
}
