import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/constants.dart';

class CountriesModel
{
  final String flag;
  final String country;
  final String number;

  CountriesModel({
    this.flag,
    this.country,
    this.number,
  });
}

class CountriesScreen extends StatelessWidget
{
  List<CountriesModel> countries = [];

  @override
  Widget build(BuildContext context) {
    fillData();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            size: 18.0,
            color: Colors.grey,
          ),
        ),
        title: Text(
          'Countries',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
        ),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => buildCountryItem(
            index,
            countries[index],
          ),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: buildDivider(),
          ),
          itemCount: countries.length,
        ),
      ),
    );
  }

  void fillData() {
    countries.add(
      CountriesModel(
        country: 'Egypt',
        flag:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGs4pPDmwBqiiwCt8W4g7fMaVeyk4C5alxw&usqp=CAU',
        number: '13',
      ),
    );

    countries.add(
      CountriesModel(
        country: 'England',
        flag:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGs4pPDmwBqiiwCt8W4g7fMaVeyk4C5alxw&usqp=CAU',
        number: '15',
      ),
    );

    countries.add(
      CountriesModel(
        country: 'Austria',
        flag:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThGs4pPDmwBqiiwCt8W4g7fMaVeyk4C5alxw&usqp=CAU',
        number: '25',
      ),
    );
  }

  Widget buildCountryItem(int index, CountriesModel model) => InkWell(
        onTap: () {
          print('index $index clicked');
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: NetworkImage(
                  model.flag,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Text(
                  model.country,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                model.number,
              ),
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 18.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      );
}