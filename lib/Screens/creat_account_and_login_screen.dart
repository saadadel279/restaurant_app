import 'package:flutter/material.dart';
import 'package:restaurant_app/widgets/Custom_column.dart';

// ignore: must_be_immutable
class BodyOfShowModelBottomSheet extends StatelessWidget {
   BodyOfShowModelBottomSheet({
    super.key,
    required this.creatAccount
  });

  bool? creatAccount; 
  @override
  Widget build(BuildContext context) {
    if(creatAccount ==true)
    {
      return SizedBox(
    height:600,
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 15),
      child: ListView(children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 0,
              ),
              width: 120,
              height: 31,
              decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 3, color: Color(0xFF32B768))),
              ),
              child: const Text(
                'Creat Account',
                style: TextStyle(
                    color: Color(0xFF32B768),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 0, left: 85),
              width: 130,
              height: 31,
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Color.fromARGB(255, 173, 176, 174),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        const CustomColumn(
          hintText: 'Enter your full name',
          AddresText: 'Full Name',
        ),
        const CustomColumn(
          hintText: 'Ex name@gmail.com',
          AddresText: 'Email adress',
        ),
        const CustomColumn(
          hintText: 'Enter your full name',
          AddresText: 'Password',
        ),
             Column(
               children: [
                 Container(
                     width: 250,
                     height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff32B768), // You can replace this with your desired color
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Registration',
                            style: TextStyle(
                                color: Color.fromARGB(255, 249, 249, 249),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                     Container(
                     width: 250,
                     height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF4F4F4), // You can replace this with your desired color
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/LoginAndRegister/ic_google.png'),
                          const Text(
                            'Sign up with Google',
                            style: TextStyle(
                                color: Color.fromARGB(255, 159, 158, 158),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
               ],
             ),
        
      ]),
    ),
          );
  
    }else{
      return  SizedBox(
    height:600,
    child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 15),
      child: ListView(children: [
        Row(
          children: [
            const SizedBox(
              width: 120,
              height: 31,
             
              child: Text(
                'Creat Account',
                style: TextStyle(
                    color: Color.fromARGB(255, 173, 176, 174),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const SizedBox(width: 100,),
            Container(
               decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(width: 3, color: Color(0xFF32B768))),
              ),
              //padding: const EdgeInsets.only(right: 0, left: 85),
              width: 47,
              height: 31,
              child: const Text(
                'Login',
                 style: TextStyle(
                    color: Color(0xFF32B768),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
       
        const CustomColumn(
          hintText: 'Ex name@gmail.com',
          AddresText: 'Email adress',
        ),
        const CustomColumn(
          hintText: '*** *** ***',
          AddresText: 'Password',
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                
                },
                child: const Text('Forget Password?',
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff32B768),fontSize: 14),)),
        
          ]),
        ),
        const SizedBox(height: 10,),
             Column(
               children: [
                 Container(
                     width: 250,
                     height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff32B768), // You can replace this with your desired color
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'login',
                            style: TextStyle(
                                color: Color.fromARGB(255, 249, 249, 249),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                     Container(
                     width: 250,
                     height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffF4F4F4), // You can replace this with your desired color
                      ),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset('assets/LoginAndRegister/ic_google.png'),
                          const Text(
                            'Login up with Google',
                            style: TextStyle(
                                color: Color.fromARGB(255, 159, 158, 158),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
               ],
             ),
        
      ]),
    ),
          );
  
    
    }
    }
}