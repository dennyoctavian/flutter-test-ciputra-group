part of 'widgets.dart';

class CardWizard extends StatelessWidget {
  final Wizard wizard;
  const CardWizard(this.wizard, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: double.infinity,
      height: 340,
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
            "ID Wizard",
            wizard.id ?? 'No ID',
          ),
          AttributeWizard(
            "First Name",
            wizard.firstName ?? 'Anonymous',
          ),
          AttributeWizard(
            "Last Name",
            wizard.lastName ?? 'Anonymous',
          ),
          AttributeWizard(
            "Total ELixirs",
            wizard.elixirs!.length.toString(),
          ),
        ],
      ),
    );
  }
}
