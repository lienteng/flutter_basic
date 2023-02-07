import 'package:flutter/material.dart';

// dropdown not working
class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? _selectedProvince;
  String? _selectedDistrict;
  String? _selectedVillage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DropdownButton(
          hint: Text('Select Province'),
          value: _selectedProvince,
          onChanged: (value) {
            setState(() {
              _selectedProvince = value;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text('Province 1'),
              value: 'province_1',
            ),
            DropdownMenuItem(
              child: Text('Province 2'),
              value: 'province_2',
            ),
            DropdownMenuItem(
              child: Text('Province 3'),
              value: 'province_3',
            ),
          ],
        ),
        DropdownButton(
          hint: Text('Select District'),
          value: _selectedDistrict,
          onChanged: (value) {
            setState(() {
              _selectedDistrict = value;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text('District 1'),
              value: 'district_1',
            ),
            DropdownMenuItem(
              child: Text('District 2'),
              value: 'district_2',
            ),
            DropdownMenuItem(
              child: Text('District 3'),
              value: 'district_3',
            ),
          ],
        ),
        DropdownButton(
          hint: Text('Select Village'),
          value: _selectedVillage,
          onChanged: (value) {
            setState(() {
              _selectedVillage = value;
            });
          },
          items: [
            DropdownMenuItem(
              child: Text('Village 1'),
              value: 'village_1',
            ),
            DropdownMenuItem(
              child: Text('Village 2'),
              value: 'village_2',
            ),
            DropdownMenuItem(
              child: Text('Village 3'),
              value: 'village_3',
            ),
          ],
        ),
      ],
    );
  }
}
