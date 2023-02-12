import 'package:flutter/material.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({super.key});

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Color.fromARGB(100, 171, 38, 50),
        title: Text(
          'Share Your Story',
          style: TextStyle(
            color: Color.fromARGB(255, 35, 34, 34),
            fontSize: 18.0,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'home_page');
          },
          child: Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Color.fromARGB(255, 35, 34, 34),
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 45.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'I am Kirti, a 32-year-old LGBTQ+ woman from Mumbai. I has been with my partner for 5 years and we recently decided to get married. However, when we approached a lawyer to start the process, we were told that same-sex marriage is not recognized in India.One day, I stumbled upon your app and found a community of people facing similar challenges. I joined the forum and started reading about the experiences of others in the LGBTQ+ community. I was inspired by their resilience and determination to fight for their rights.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'I am a member of the LGBTQ+ community and I have been experiencing discrimination in the workplace because of my sexual orientation. My employer has made it clear that they do not support LGBTQ+ employees and I am not sure what my rights are in this situation. Can anyone offer advice or connect me with a lawyer who has expertise in this area?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'I am interested in staying informed about the progress of legal cases related to LGBTQ+ rights in India. Can anyone share any updates or connect me with a lawyer or organization that is following these cases closely? I am particularly interested in cases related to marriage equality, discrimination in the workplace, and transgender rights. Any information would be greatly appreciated!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'I wanted to share my story as an LGBTQ+ individual in India. Growing up, I always felt like I was different from everyone else, but I did not have the words to describe it. It was not until I was in my late teens that I discovered the concept of being gay and finally felt like I had a label for who I was. However, coming out was a difficult process for me. I was met with a lot of resistance from my family and friends, who did not understand my sexual orientation. I felt isolated and like I did not have a place in the world. But over time, I have come to embrace my identity and find support from other members of the LGBTQ+ community. I have also become more aware of the laws and acts related to LGBTQ+ rights in India, which has given me hope for a better future. I wanted to share my story in the hopes that it will help others who are going through similar experiences. Remember, you are not alone! There is a community of people who support and care for you.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 18.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 171, 38, 50),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'I wanted to share my journey as a transgender individual in India. Growing up, I always felt like I was in the wrong body and struggled to express my true self. It was not until I was in my late twenties that I finally started to transition and become the person I was meant to be. However, this journey has not been easy. I have faced a lot of discrimination and prejudice from society, as well as challenges in accessing medical care and legal recognition of my identity. Despite these obstacles, I have continued to fight for my rights and the rights of other transgender individuals in India. I have become involved with organizations that are working to raise awareness and advocate for transgender rights, and I have seen some progress in recent years. I wanted to share my story in the hopes that it will help others who are going through similar experiences. Remember, you are not alone! There is a community of people who support and care for you.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
