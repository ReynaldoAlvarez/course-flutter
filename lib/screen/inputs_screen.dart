import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'vidal',
      'last_name': 'alvarez',
      'email': 'email',
      'password': 'password',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs'),
        ),
        // widget que nos permite hacer sclroller
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(children: [
                CustomInputField(
                  labelText: 'Nombres',
                  hintText: 'Nombre del usuario',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Apellidos',
                  hintText: 'Apellido del usuario',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'Correo Del Usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Password Del Usuario',
                  formProperty: 'password',
                  formValues: formValues,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                    items: const [
                      DropdownMenuItem(child: Text('Admin'), value: 'Admin'),
                      DropdownMenuItem(child: Text('User'), value: 'User'),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    }),
                ElevatedButton(
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario No Valido');
                        return;
                      }
                      print(formValues);
                    },
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('guardar'))))
              ]),
            ),
          ),
        ));
  }
}
