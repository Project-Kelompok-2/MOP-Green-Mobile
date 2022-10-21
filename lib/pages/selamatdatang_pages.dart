part of 'pages.dart';

class selamatdatang extends StatelessWidget {
  const selamatdatang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset('assets/images/logo.png',
                height: 300, fit: BoxFit.fill),
            SizedBox(
              height: 36,
            ),
            Text(
              "Selamat Datang",
              style: selamatdatangTextStyle.copyWith(fontSize: 36),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "MOP GREEN adalah Sistem informasi dan prediksi \nuntuk memudahkan pengguna dalam melakukan \nmonitoring, kontroling dan pengolahan data pada \ngreenhouse berbasis website dan mobile.",
              style: deskripsiTextStyle.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 51,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Wrap(
                                children: [
                                  //Bagian Modal
                                  Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: backgroundColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultmargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              //jarak
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Hello...",
                                                        style: deskripsiTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                color:
                                                                    guestColor),
                                                      ),
                                                      Text(
                                                        "Registrasi",
                                                        style:
                                                            registrasiTextStyle
                                                                .copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        //!Ketika Icon di tekan maka popup akan close
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                          'assets/images/close.png',
                                                          height: 24,
                                                          width: 24),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 25,
                                              )
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              );
                            });
                          });
                    },
                    child: Text(
                      'Create Account',
                      style: deskripsiTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultmargin,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: deskripsiTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: guestColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: secondaryColor, width: 3),
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(height: 8),
            Text(
              'Hanya Pengunjung?',
              style:
                  deskripsiTextStyle.copyWith(color: guestColor, fontSize: 14),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
