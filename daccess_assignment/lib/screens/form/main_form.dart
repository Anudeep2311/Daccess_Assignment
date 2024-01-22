import 'package:daccess_assignment/api/get_daily_activity.dart';
import 'package:daccess_assignment/api/post_daily_activity.dart';
import 'package:daccess_assignment/model/form_model.dart';
import 'package:daccess_assignment/model/post_data_model.dart';
import 'package:daccess_assignment/screens/form/second_screen.dart';
import 'package:daccess_assignment/screens/widgets/common_button.dart';
import 'package:daccess_assignment/screens/widgets/common_card.dart';
import 'package:daccess_assignment/screens/widgets/common_sizedbox.dart';
import 'package:daccess_assignment/screens/widgets/common_textfield.dart';
import 'package:daccess_assignment/screens/widgets/small_buttons.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late PostDataModel postDataModel;
  late FormModel formDataModel;
  @override
  void initState() {
    postDataModel = PostDataModel();
    formDataModel = FormModel();
    super.initState();
  }

//   List<int> imageBytes = formDataModel.
// print(imageBytes);
// String base64Image = base64Encode(imageBytes);

  @override
  Widget build(BuildContext context) {
    final TextEditingController dateController = TextEditingController();
    final TextEditingController thoughtController = TextEditingController();

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.030, right: width * 0.030, top: height * 0.030),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Date',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              CommonTextField(
                hintText: 'Enter Date',
                controller: dateController,
              ),
              const SmallSizedBox(),
              const Text(
                'Thought of the day',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              CommonTextField(
                hintText: 'Paste thought here',
                controller: thoughtController,
              ),
              const CommonSizedBox(),
              const Text(
                'Birthday Card',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Expanded(child: CommonCard()),
                  CommonButton(onPressed: () {}, text: 'Browse')
                ],
              ),
              const CommonSizedBox(),
              const Text(
                'Anniversary Card',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Expanded(child: CommonCard()),
                  CommonButton(onPressed: () {}, text: 'Browse')
                ],
              ),
              const CommonSizedBox(),
              const Text(
                'Welcome Card',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Expanded(child: CommonCard()),
                  CommonButton(onPressed: () {}, text: 'Browse')
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SmallButtons(
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    text: 'Reset',
                    onPressed: () {
                      postDailyActivity({});
                    },
                    borderColor: Colors.blueAccent.shade700,
                    textColor: Colors.blueAccent.shade700,
                  ),
                  SmallButtons(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent.shade700),
                      text: 'Save',
                      onPressed: () {
                        print(fetchDailyActivity());
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SecondScreen(),
                          ),
                        );
                      },
                      borderColor: Colors.blueAccent.shade700,
                      textColor: Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
