import 'package:flutter/material.dart';

void main() => runApp(new FormApp());

class FormApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Form Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FormPage(title: 'Flutter Form Demo Page'),
    );
  }
}

class FormPage extends StatefulWidget {
  FormPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Container(
          padding: new EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: new SignUpForm()),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => new _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormFieldState>();

  String _name = '';
  String _email = '';
  int _age = -1;
  String _maritalStatus = 'single';
  int _selectedGender = 0;
  String _password = '';
  bool _termsChecked = true;

  List<DropdownMenuItem<int>> genderList = [];

  void loadGenderList() {
    genderList = [];
    genderList.add(new DropdownMenuItem(
      child: new Text('Male'),
      value: 0,
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Female'),
      value: 1,
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Others'),
      value: 2,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadGenderList();
    // Build a Form widget using the _formKey we created above
    return Form(
        key: _formKey,
        child: new ListView(
          children: getFormWidget(),
        ));
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = new List();

    formWidget.add(new TextFormField(
      decoration: InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter a name';
        }
        return null;
      },
      onSaved: (value) {
        setState(() {
          _name = value;
        });
      },
    ));

    String validateEmail(String value) {
      if (value.isEmpty) {
        return 'Please enter mail';
      }

      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = new RegExp(pattern);
      if (!regex.hasMatch(value))
        return 'Enter Valid Email';
      else
        return null;
    }

    formWidget.add(new TextFormField(
      decoration: InputDecoration(labelText: 'Enter Email', hintText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,
      onSaved: (value) {
        setState(() {
          _email = value;
        });
      },
    ));

    formWidget.add(new TextFormField(
      decoration: InputDecoration(hintText: 'Age', labelText: 'Enter Age'),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value.isEmpty)
          return 'Enter age';
        else
          return null;
      },
      onSaved: (value) {
        setState(() {
          _age = int.tryParse(value);
        });
      },
    ));

    formWidget.add(new DropdownButton(
      hint: new Text('Select Gender'),
      items: genderList,
      value: _selectedGender,
      onChanged: (value) {
        setState(() {
          _selectedGender = value;
        });
      },
      isExpanded: true,
    ));

    formWidget.add(new Column(
      children: <Widget>[
        RadioListTile<String>(
          title: const Text('Single'),
          value: 'single',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value;
            });
          },
        ),
        RadioListTile<String>(
          title: const Text('Married'),
          value: 'married',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value;
            });
          },
        ),
      ],
    ));

    formWidget.add(
      new TextFormField(
          key: _passKey,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Password', labelText: 'Enter Password'),
          validator: (value) {
            if (value.isEmpty)
              return 'Please Enter password';
            else if (value.length < 8)
              return 'Password should be more than 8 characters';
            else
              return null;
          }),
    );

    formWidget.add(
      new TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'Confirm Password',
              labelText: 'Enter Confirm Password'),
          validator: (confirmPassword) {
            if (confirmPassword.isEmpty) return 'Enter confirm password';
            var password = _passKey.currentState.value;
            if (confirmPassword.compareTo(password) != 0)
              return 'Password mismatch';
            else
              return null;
          },
          onSaved: (value) {
            setState(() {
              _password = value;
            });
          }),
    );

    formWidget.add(CheckboxListTile(
      value: _termsChecked,
      onChanged: (value) {
        setState(() {
          _termsChecked = value;
        });
      },
      subtitle: !_termsChecked
          ? Text(
              'Required',
              style: TextStyle(color: Colors.red, fontSize: 12.0),
            )
          : null,
      title: new Text(
        'I agree to the terms and condition',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));

    void onPressedSubmit() {
      if (_formKey.currentState.validate() && _termsChecked) {
        _formKey.currentState.save();

        print("Name " + _name);
        print("Email " + _email);
        print("Age " + _age.toString());
        switch (_selectedGender) {
          case 0:
            print("Gender Male");
            break;
          case 1:
            print("Gender Female");
            break;
          case 3:
            print("Gender Others");
            break;
        }
        print("Marital Status " + _maritalStatus);
        print("Password " + _password);
        print("Termschecked " + _termsChecked.toString());
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Form Submitted')));
      }
    }

    formWidget.add(new RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: new Text('Sign Up'),
        onPressed: onPressedSubmit));

    return formWidget;
  }
}
