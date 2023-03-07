import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../commons/components/custom_button.dart';
import '../../../../../commons/components/snackbars.dart';
import '../../../../../core/error/error.dart';
import '../../../../../core/routes/app_router.dart';
import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../injector.dart';
import '../../cubits/login/login_cubit.dart';
import '../../cubits/verify/verify_cubit.dart';
import 'widgets/pinput_sms_auto_fill.dart';
import 'widgets/timer_widget.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key, required this.phone}) : super(key: key);
  final String phone;

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<VerifyCubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context).confirmCode,
                        style: AppTextStyles.styleW700S24Grey9),
                    const SizedBox(height: 12),
                    Text(
                        '${AppLocalizations.of(context).verifyPageMainText} +998${widget.phone}',
                        style: AppTextStyles.styleW500S14Grey7),
                    const SizedBox(height: 32),
                    BlocBuilder<VerifyCubit, VerifyState>(
                      builder: (context, state) {
                        return CustomPinPut(
                            textController: textController,
                            onChange: (_) {
                              context.read<VerifyCubit>().loadInitial();
                            },
                            forceErrorState: state ==
                                const VerifyState.error(WrongCodeFailure()));
                      },
                    ),
                    const SizedBox(height: 24),
                    TimeWidget(
                      onResend: () {
                        textController.clear();
                        sl<LoginCubit>().login(widget.phone);
                      },
                    ),
                  ],
                ),
              ),
              nextButton(widget.phone),
            ],
          ),
        ),
      ),
    );
  }

  Widget nextButton(String phone) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        minimum: const EdgeInsets.fromLTRB(20, 12, 20, 20),
        child: BlocConsumer<VerifyCubit, VerifyState>(
          listener: (context, state) {
            state.whenOrNull(
                success: () {
                  context.router.pushAndPopUntil(const MainRoute(),
                      predicate: (_) => false);
                },
                error: (failure) => showErrorMessage(
                    context, failure.getLocalizedMessage(context)));
          },
          builder: (context, state) {
            return CustomButton(
              text: AppLocalizations.of(context).confirm,
              isLoading: state == const VerifyState.loading(),
              onTap: () {
                context
                    .read<VerifyCubit>()
                    .verify(code: textController.text, phone: phone);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }
}
