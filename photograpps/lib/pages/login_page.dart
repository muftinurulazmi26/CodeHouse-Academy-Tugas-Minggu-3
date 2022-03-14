part of 'pages.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool is_visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _key,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 18,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Sign In to continue",
                    style: TextStyle(color: greyColor),
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(color: blackColor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Username tidak boleh kosong!";
                      }
                      return null;
                    },
                    controller: usernameController,
                    decoration: InputDecoration(
                      fillColor: fieldColor,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: "Enter Username",
                    ),
                    style: TextStyle(color: blackColor2),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(color: blackColor),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Password tidak boleh kosong!";
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: is_visible,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          if (is_visible) {
                            is_visible = false;
                          } else {
                            is_visible = true;
                          }
                          setState(() {});
                        },
                        child: (is_visible) ? Image.asset("assets/icons/ic_eye.png") : Image.asset("assets/icons/ic_hidden_eye.png"),
                      ),
                      fillColor: fieldColor,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: "Enter Password",
                    ),
                    style: TextStyle(color: blackColor2),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_key.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                    },
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: greyColor2),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 234,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont’t have an account? ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: greyColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
