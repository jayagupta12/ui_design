part of signup_view;

class _SignupMobile extends StatefulWidget {
  final SignupViewModel viewModel;

  _SignupMobile(this.viewModel);

  @override
  __SignupMobileState createState() => __SignupMobileState();
}

class __SignupMobileState extends State<_SignupMobile> {
   final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var fname,lname,email, password,cpaasword,phoneno,zipcode;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          
          backgroundColor: Colors.white,
          body: formSetup(context)),
    );
  }

  Widget formSetup(BuildContext context) {
    return new Form(
        key: _formKey,
        child: SingleChildScrollView(
                  child: Column(
          
          
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child:Image.asset("assets/images/logo1.PNG")
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 50, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Signup",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.w600,fontSize: 30),),
                  Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextFormField(
                        autocorrect: false,
                      
                        onSaved: (val) => fname = val,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "First Name",
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextFormField(
                        autocorrect: false,
                       
                        onSaved: (val) => lname = val,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "Last Name",
                        ),
                      ),
                    ),
                   
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child:    TextFormField(
                      autocorrect: false,
                      validator: (val) {
                        if (val.length == 0)
                          return "Please enter email";
                        else if (!val.contains("@"))
                          return "Please enter valid email";
                        else
                          return null;
                      },
                      onSaved: (val) => email = val,
                      style: TextStyle(color: Colors.black),
                      decoration: new InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black)),
                        filled: true,
                        contentPadding: EdgeInsets.only(
                            bottom: 10.0, left: 10.0, right: 10.0),
                        labelText: "Email ID",
                      ),
                    ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextFormField(
                        autocorrect: false,
                        validator: (val) {
                          if (val.length == 0)
                            return "Please enter phone no";
                         else
                            return null;
                        },
                        onSaved: (val) => phoneno = val,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "Phone No.",
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextFormField(
                        autocorrect: false,
                      
                        onSaved: (val) => zipcode = val,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "ZipCode",
                        ),
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: TextFormField(
                        autocorrect: false,
                        validator: (val) {
                          if (val.length == 0)
                            return "Please enter password";
                          else if (val.length <= 5)
                            return "Your password should be more then 6 char long";
                          else
                            return null;
                        },
                        onSaved: (val) => password = val,
                        style: TextStyle(color: Colors.black),
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: Colors.black)),
                          filled: true,
                          contentPadding: EdgeInsets.only(
                              bottom: 10.0, left: 10.0, right: 10.0),
                          labelText: "Create Password",
                        ),
                      ),
                    ),
                    
                  Padding(
                      padding:
                          const EdgeInsets.only( top: 30),
                      child: RaisedButton(
                          splashColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();

                        widget.viewModel.registerUser(fname,lname,email,phoneno,zipcode,password);
                              _scaffoldKey.currentState
                                  .showSnackBar(new SnackBar(
                                content: new Text(
                                    "Your email: $email and Password: $password"),
                              ));
                            }
                          },
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'SIGNUP',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                
                              ],
                            ),
                          )),
                    ),
                   
                  ],
                ),
              )
            ],
          ),
        ));
  }
}