// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';


class FaqQuestion extends StatefulWidget {
  @override
  _FaqQuestionState createState() => _FaqQuestionState();
}

class _FaqQuestionState extends State<FaqQuestion> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ExpansionTile(
        title: Text('How do I know what I am covered for on my Medical Cover?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('UAP covers you for both inpatient and Outpatient treatments on credit basis at the approved service providers. You will be required to present you SMART card each time you visit the approved service provider. Each of the benefits will be covered up to a maximum amount of money per person per year.\n \nPlease visit our website to see the different benefits and limits under each package of Diaspora Health Connect.',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
          
        ],),
        ExpansionTile(
        title: Text('What is a main benefit?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('The main benefit is a financial entitlement that UAP offers you when you join our cover for which a premium needs to be paid. Examples include: Inpatient Benefit, Outpatient Benefit, Dental, and Optical Benefits. On the contrary, a sublimit is an entitlement for which no premium is charged by UAP-OM but any medical treatments that fall within that type of entitlement will be paid up to the specified sublimit amount only in the year. When claims are paid under a sublimit, the amount of money is deducted from both the sublimit balance and from the main benefit balance.',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
          
        ],),
        ExpansionTile(
        title: Text('Which medical conditions are covered by Diaspora Health Connect?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('You are covered for any medical condition whether it is an emergency or a chronic disease. UAP-OM does however have a list of excluded conditions (mostly cosmetic and self inflicted injuries) and the full list is available on our website or your brochure.',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
          
        ],),
        ExpansionTile(
        title: Text('What if I change my mobile number?',style:TextStyle(color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0, ),),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Update it on the profile then try loggin in again. Remember to update the insurance also. However, If you encounter any challenges please reach out for assistance.',
            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0, ),),
          ),
           
          
        ],)
        ]
      
    );
  }
}

   
