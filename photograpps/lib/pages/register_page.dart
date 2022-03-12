part of 'pages.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                Row(
                  children: [
                    const Icon(Icons.arrow_back_ios),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 18,
                          color: blackColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  "Register to create an account",
                  style: TextStyle(color: greyColor),
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  "Name",
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
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Name",
                    ),
                    style: TextStyle(color: blackColor2),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Email",
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
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Email",
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
                Container(
                  width: double.infinity,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: greyColor2),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 145,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: greyColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Log in",
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
