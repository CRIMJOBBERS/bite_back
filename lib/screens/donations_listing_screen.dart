import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart'; // For date picker
import 'package:bite_back/models/donation_item.dart'; // Assuming your data model is in a separate file

class DonationsListingScreen extends StatefulWidget {
  const DonationsListingScreen({super.key});

  @override
  State<DonationsListingScreen> createState() => _DonationsListingScreenState();
}

class _DonationsListingScreenState extends State<DonationsListingScreen> {
  final _formKey = GlobalKey<FormState>();
  DonationItem donation = DonationItem(
    type: '', // Provide empty strings or default values for all required arguments
    quantity: 0,
    location: '',
  );

  // Add state variables for filtering (optional)
  String selectedType = 'All'; // Default filter
  List<String> types = ['All', 'Fruits', 'Vegetables', 'Canned Goods']; // Example types

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Add logic to process and submit the donation data (e.g., send to server)
      if (kDebugMode) {
        print('Donation submitted: $donation');
      }
      // Clear the form after submission
      _formKey.currentState!.reset();
      donation = DonationItem(
        type: '', // Reset donation object with empty values
        quantity: 0,
        location: '',
      );
    }
  }

  void _pickExpiryDate() {
    DatePicker.showDatePicker(
      context,
      currentTime: DateTime.now(), // Provide current date for reference
      onConfirm: (date) {
        setState(() {
          donation.expiryDate = date;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Your Donations'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                // Dropdown for filtering by type (optional)
                DropdownButtonFormField<String>(
                  value: selectedType,
                  items: types.map((type) => DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  )).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedType = value!;
                    });
                  },
                  hint: const Text('Filter by Type'),
                ),

                // Text field for item type
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Item Type',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the item type.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    donation.type = value!;
                  },
                ),

                // Text field for quantity
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Quantity',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the quantity.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    donation.quantity = int.parse(value!);
                  },
                ),

                // Date picker for expiry date
                Row(
                  children: [
                    const Text('Expiry Date: '),
                    TextButton(
                      onPressed: _pickExpiryDate,
                      child: Text(donation.expiryDate?.toString() ?? 'Pick Date'),
                    ),
                  ],
                ),

                // Text field for location
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Location (e.g., Home, Community Center)',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the location.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    donation.location = value!;
                  },
                ),

                // Submit button
                ElevatedButton(
                  onPressed: _submitForm,
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: DonationsListingScreen(),
  ));
}
