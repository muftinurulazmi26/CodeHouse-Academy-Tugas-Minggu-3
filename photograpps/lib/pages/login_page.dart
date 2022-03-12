part of 'pages.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: fieldColor,
                  ),
                  child: TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Username",
                    ),
                    style: TextStyle(color: blackColor2),
                  ),
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
                Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: fieldColor,
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                    ),
                    style: TextStyle(color: blackColor2),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
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
    );
  }
}
