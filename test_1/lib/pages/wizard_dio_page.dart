part of 'pages.dart';

class WizardDioPage extends StatelessWidget {
  const WizardDioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WizardBloc()..add(GetAllWizardByDio()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "All Wizards",
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: BlocConsumer<WizardBloc, WizardState>(
          listener: (context, state) {
            if (state is WizardFailed) {
              Flushbar(
                duration: const Duration(milliseconds: 1500),
                flushbarPosition: FlushbarPosition.TOP,
                backgroundColor: const Color(0xffff5c83),
                message: state.e,
              ).show(context);
            }
          },
          builder: (context, state) {
            if (state is WizardSuccess) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  children: state.data!
                      .map((wizard) => GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DetailElixirPage(wizard),
                              ),
                            );
                          },
                          child: CardWizard(wizard)))
                      .toList(),
                ),
              );
            } else if (state is WizardFailed) {
              return ErrorPage(state.e);
            }
            return const Center(
              child: SpinKitDualRing(
                color: Color(0xff0B7A61),
                size: 80,
              ),
            );
          },
        ),
      ),
    );
  }
}
