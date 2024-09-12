import 'package:flutter/material.dart';
import 'package:personal_portfolio/provider/skills_provider.dart';
import 'package:personal_portfolio/utils/fontstyles.dart';
import 'package:personal_portfolio/widgets/reusable_button.dart';
import 'package:personal_portfolio/widgets/reusable_textformfield.dart';
import 'package:provider/provider.dart';

class AddSkillsContainer extends StatelessWidget {
  final TextEditingController skillsController;
  const AddSkillsContainer({super.key, required this.skillsController});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        margin: EdgeInsets.symmetric(horizontal: 200),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20)),
        child: Consumer<SkillsProvider>(
          builder: (context, skillprovider, child) {
            return Column(
              children: [
                Text(
                  "Edit skills section",
                  style: Fonstyles.HeadingTextStyle2(context),
                ),
                SizedBox(
                  height: 20,
                ),
    // Drop Down
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    style: Fonstyles.RegularTextStyle(context),
                    iconDisabledColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    iconEnabledColor:
                        Theme.of(context).colorScheme.inversePrimary,
                    value: skillprovider.selectedCategory,
                    items: ['UI-UX', 'Backend', 'API', 'Everything else']
                        .map((String category) {
                      return DropdownMenuItem<String>(
                        value: category,
                        child: Text(
                          category,
                          style: Fonstyles.RegularTextStyle(context),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        skillprovider.setCategory(value);
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                ReusableTextFormField(
                  cntrlr: skillsController,
                  hinttext: "Skills Description",
                  lines: 5,
                ),
                SizedBox(
                  height: 30,
                ),
                
                ReusableButton(
                    buttontext: "Update Skill",
                    onTap: () async {
                      await skillprovider.saveSkill(
                          skillsController.text, context);
                      skillsController.clear();
                    })
              ],
            );
          },
        ));
  }
}
