List<Map<String, dynamic>> ticketList = [
  {
    "ticket_id": "TCK67890",
    "flight_number": "DL456",
    "airline": {
      "name": "Delta Airlines",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=D"
    },
    "departure": {
      "city": "Los Angeles",
      "airport": "LAX",
      "time": "2024-01-20T08:00:00"
    },
    "arrival": {
      "city": "Miami",
      "airport": "MIA",
      "time": "2024-01-20T16:20:00"
    },
    "duration": "5h 20m",
    "price": 420.99,
    "class": "Business",
    "passenger": {"name": "Jane Smith", "passport_number": "B98765432"},
    "stops": []
  },
  {
    "ticket_id": "TCK34567",
    "flight_number": "AA789",
    "airline": {
      "name": "American Airlines",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=A"
    },
    "departure": {
      "city": "Chicago",
      "airport": "ORD",
      "time": "2024-01-22T14:15:00"
    },
    "arrival": {
      "city": "Houston",
      "airport": "IAH",
      "time": "2024-01-22T17:45:00"
    },
    "duration": "3h 30m",
    "price": 280.50,
    "class": "Economy",
    "passenger": {"name": "Emily Davis", "passport_number": "C11223344"},
    "stops": []
  },
  {
    "ticket_id": "TCK78901",
    "flight_number": "UA234",
    "airline": {
      "name": "United Airlines",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=U"
    },
    "departure": {
      "city": "Dallas",
      "airport": "DFW",
      "time": "2024-01-25T09:00:00"
    },
    "arrival": {
      "city": "Denver",
      "airport": "DEN",
      "time": "2024-01-25T11:45:00"
    },
    "duration": "2h 45m",
    "price": 215.00,
    "class": "Economy",
    "passenger": {"name": "Michael Brown", "passport_number": "D44556677"},
    "stops": []
  },
  {
    "ticket_id": "TCK23456",
    "flight_number": "QR567",
    "airline": {
      "name": "Qatar Airways",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=Q"
    },
    "departure": {
      "city": "London",
      "airport": "LHR",
      "time": "2024-01-30T18:00:00"
    },
    "arrival": {
      "city": "Doha",
      "airport": "DOH",
      "time": "2024-01-31T02:00:00"
    },
    "duration": "7h 00m",
    "price": 600.00,
    "class": "Business",
    "passenger": {"name": "Sophia Lee", "passport_number": "E55667788"},
    "stops": []
  },
  {
    "ticket_id": "TCK87654",
    "flight_number": "SQ890",
    "airline": {
      "name": "Singapore Airlines",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=S"
    },
    "departure": {
      "city": "Singapore",
      "airport": "SIN",
      "time": "2024-02-02T20:30:00"
    },
    "arrival": {
      "city": "Sydney",
      "airport": "SYD",
      "time": "2024-02-03T06:00:00"
    },
    "duration": "7h 30m",
    "price": 800.25,
    "class": "First",
    "passenger": {"name": "Olivia Wilson", "passport_number": "F77889900"},
    "stops": []
  },
  {
    "ticket_id": "TCK54321",
    "flight_number": "AI123",
    "airline": {
      "name": "Air India",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=AI"
    },
    "departure": {
      "city": "Delhi",
      "airport": "DEL",
      "time": "2024-02-10T23:00:00"
    },
    "arrival": {
      "city": "Mumbai",
      "airport": "BOM",
      "time": "2024-02-11T01:00:00"
    },
    "duration": "2h 00m",
    "price": 120.75,
    "class": "Economy",
    "passenger": {"name": "Arjun Sharma", "passport_number": "G11224466"},
    "stops": []
  },
  {
    "ticket_id": "TCK45678",
    "flight_number": "LH345",
    "airline": {
      "name": "Lufthansa",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=L"
    },
    "departure": {
      "city": "Frankfurt",
      "airport": "FRA",
      "time": "2024-02-15T07:00:00"
    },
    "arrival": {
      "city": "Paris",
      "airport": "CDG",
      "time": "2024-02-15T08:30:00"
    },
    "duration": "1h 30m",
    "price": 150.00,
    "class": "Economy",
    "passenger": {"name": "Charlotte Muller", "passport_number": "H99887766"},
    "stops": []
  },
  {
    "ticket_id": "TCK65432",
    "flight_number": "VA890",
    "airline": {
      "name": "Virgin Atlantic",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=VA"
    },
    "departure": {
      "city": "Los Angeles",
      "airport": "LAX",
      "time": "2024-02-18T22:30:00"
    },
    "arrival": {
      "city": "London",
      "airport": "LHR",
      "time": "2024-02-19T15:00:00"
    },
    "duration": "10h 30m",
    "price": 500.00,
    "class": "Premium Economy",
    "passenger": {"name": "James Anderson", "passport_number": "I55667788"},
    "stops": []
  },
  {
    "ticket_id": "TCK98765",
    "flight_number": "EY678",
    "airline": {
      "name": "Etihad Airways",
      "logo_url": "https://dummyimage.com/100x100/000/fff&text=EY"
    },
    "departure": {
      "city": "Abu Dhabi",
      "airport": "AUH",
      "time": "2024-02-22T01:00:00"
    },
    "arrival": {
      "city": "Tokyo",
      "airport": "NRT",
      "time": "2024-02-22T17:00:00"
    },
    "duration": "9h 00m",
    "price": 700.00,
    "class": "Business",
    "passenger": {"name": "William Tanaka", "passport_number": "J33445566"},
    "stops": []
  }
];
