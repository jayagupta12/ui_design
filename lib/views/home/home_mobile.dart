part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: Center(),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Center(),
                  ),
                  flex: 1,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 40.0, left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                           Image.asset('assets/images/logo.PNG'),
                            Padding(
                              padding: const EdgeInsets.only(top:50.0),
                              child: Text(
                                "Refill and get Delivered",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue)),
                                    color: Colors.white,
                                    textColor: Colors.blue,
                                    padding: EdgeInsets.all(8.0),
                                    onPressed: () {},
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(color: Colors.blue)),
                                    onPressed: () {},
                                    color: Colors.blue,
                                    textColor: Colors.white,
                                    child: Text("Login",
                                        style: TextStyle(fontSize: 14)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50.0)),
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
