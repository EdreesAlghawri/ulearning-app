import 'package:flutter/material.dart';

class Con extends StatefulWidget {
  const Con({super.key});

  @override
  State<Con> createState() => _ConState();
}

class _ConState extends State<Con> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 872,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/aa.jfif"),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 237,
                left: 14,
                right: 14,
                bottom: 236,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Color(0x4C05A1E6)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 399,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 24),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 278,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment:
                                MainAxisAlignment.start,
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 141,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize:
                                            MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding:
                                                const EdgeInsets.only(
                                                    right: 0.21,
                                                    bottom: 0.09),
                                            clipBehavior:
                                                Clip.antiAlias,
                                            decoration:
                                                const BoxDecoration(),
                                            child: const Row(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                              children: [
                                                SizedBox(
                                                  width: 119.76,
                                                  height: 52.35,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize
                                                            .min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 101.75,
                                                        height: 11.24,
                                                        child:
                                                            FlutterLogo(),
                                                      ),
                                                      SizedBox(
                                                        width: 105.49,
                                                        height: 17.35,
                                                        child:
                                                            FlutterLogo(),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                    width: 11.74),
                                                SizedBox(
                                                  width: 67.78,
                                                  height: 67.91,
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize
                                                            .min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          const Text(
                                            'مرحبا بعودتك',
                                            textAlign:
                                                TextAlign.right,
                                            style: TextStyle(
                                              color:
                                                  Color(0xFF05A1E6),
                                              fontSize: 18,
                                              fontFamily: 'Tajawal',
                                              fontWeight:
                                                  FontWeight.w700,
                                              height: 0.09,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const SizedBox(
                                      width: 283,
                                      child: Text(
                                        'مرحبًا بكم في تطبيق الشحن نورتم مساحتنا الرقمية. دعونا نبدأ رحلة الشحن معًا بسلاسة وسرعة',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF38B5F7),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 24),
                              SizedBox(
                                width: double.infinity,
                                height: 113,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          top: 4,
                                          left: 8,
                                          right: 12,
                                          bottom: 4),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFF6FAFF),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    8)),
                                      ),
                                      child: Row(
                                        mainAxisSize:
                                            MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets
                                                .symmetric(
                                                horizontal: 6,
                                                vertical: 4),
                                            decoration:
                                                ShapeDecoration(
                                              color: Colors.white,
                                              shape:
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                                  5)),
                                            ),
                                            child: const Row(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                              children: [
                                                Text(
                                                  '+967',
                                                  style: TextStyle(
                                                    color: Color(
                                                        0xFFAEAEAE),
                                                    fontSize: 14,
                                                    fontFamily:
                                                        'Cairo',
                                                    fontWeight:
                                                        FontWeight
                                                            .w600,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 42,
                                              padding:
                                                  const EdgeInsets
                                                      .only(
                                                      bottom: 8),
                                              child: const Column(
                                                mainAxisSize:
                                                    MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                children: [
                                                  SizedBox(
                                                    width: double
                                                        .infinity,
                                                    child: Text(
                                                      'رقم الهاتف',
                                                      textAlign:
                                                          TextAlign
                                                              .right,
                                                      style:
                                                          TextStyle(
                                                        color: Color(
                                                            0xFFABACA5),
                                                        fontSize: 16,
                                                        fontFamily:
                                                            'Tajawal',
                                                        fontWeight:
                                                            FontWeight
                                                                .w500,
                                                        height: 0.10,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Container(
                                      width: double.infinity,
                                      padding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 10),
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF38B5F7),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(
                                                    8)),
                                      ),
                                      child: const Row(
                                        mainAxisSize:
                                            MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 27,
                                            child: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                              children: [
                                                Text(
                                                  'تحقق',
                                                  textAlign:
                                                      TextAlign.right,
                                                  style: TextStyle(
                                                    color:
                                                        Colors.white,
                                                    fontSize: 16,
                                                    fontFamily:
                                                        'Tajawal',
                                                    fontWeight:
                                                        FontWeight
                                                            .w500,
                                                    height: 0.12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 333,
                          height: 1,
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(color: Color(0xFFC7E7FF)),
                        ),
                        const SizedBox(height: 20),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'اذا لم يكن لديك حساب؟   ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 0.16,
                                ),
                              ),
                              TextSpan(
                                text: 'انشاء حساب',
                                style: TextStyle(
                                  color: Color(0xFF009AD8),
                                  fontSize: 14,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 0.10,
                                  letterSpacing: 0.10,
                                ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(
                                  color: Color(0xFF009AD8),
                                  fontSize: 16,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  decoration:
                                      TextDecoration.underline,
                                  height: 0.12,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
