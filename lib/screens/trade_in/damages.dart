import 'package:flutter/material.dart';
import 'package:points_layer/points_layer.dart';
import 'package:missing/constants.dart' as constants;

class VehicleDamages extends StatefulWidget {
  static Route route(PointData data) => MaterialPageRoute<void>(builder: (_) => VehicleDamages(pointData: data));
  const VehicleDamages({Key? key, required this.pointData}) : super(key: key);
  final PointData pointData;

  @override
  _VehicleDamagesState createState() => _VehicleDamagesState();
}

class _VehicleDamagesState extends State<VehicleDamages> {
  bool _isActive = false;
  Color _selectedColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Damages'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const Text(
                'Add Damage',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Complete sections below'),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Exterior View',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      '${widget.pointData.name}',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Theme.of(context).primaryColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Severity:',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isActive = !_isActive;
                            });
                          },
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                                color: _isActive ? _selectedColor : Colors.transparent,
                              ),
                              child: Center(
                                  child: Text(
                                'Minor',
                                style: TextStyle(
                                  color: _isActive ? Colors.white : _selectedColor,
                                ),
                              ))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Grounded'))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Inoperable'))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Type:',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Scratch'))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Dent'))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Puncture'))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Missing Part'))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Broken Glass'))),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(child: Text('Mantainance'))),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.calendar_today),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text('Date'),
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return _alertDialog();
                              },
                            );
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.camera_alt),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Photo'),
                                ],
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return _notesDialog();
                              },
                            );
                          },
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.note_alt_sharp),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Notes'),
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        elevation: MaterialStateProperty.all(0.0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Save",
                        style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                      ),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0.0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget _alertDialog() {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Add Photo From', style: Theme.of(context).textTheme.headline6),
          Flexible(
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close)),
          )
        ],
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.folder,
                  color: Colors.yellow[700],
                  size: 32,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('Photo Gallery', style: Theme.of(context).textTheme.headline6),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[700],
                  size: 32,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Camera',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _notesDialog() {
    return AlertDialog(
      title: Center(
          child: Text(
        'Add Damage Notes',
        style: Theme.of(context).textTheme.headline6,
      )),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Form(
                child: TextFormField(
              maxLines: null,
              decoration: const InputDecoration(
                hintText: 'Add text here',
                border: InputBorder.none,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            )),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey),
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Save",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(color: constants.whiteColor),
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
