clone this repository to your system

```bash
git clone https://github.com/MadRajib/hotel_api
```
create a virtual environment using

```bash
virtualenv -p python3 env
```
to activate

```bash
source ./env/bin/activate
```

to deactivate the virtual env

```bash
deactivate
```

to install the requirements

'''bash
install -r requirements.txt
```

'''bash
python app.py
```


## To get hotel Details

Hotel Id

http://127.0.0.1:5000/api/hotelDetail/1 

```json
{
  "data": {
    "id": 1, 
    "location": "orissa-rourkela", 
    "manager": "john lamping", 
    "name": "radhica-regency", 
    "rating": 5
  }, 
  "hotel_id": 1
}
```

Hotel Name
http://127.0.0.1:5000/api/hotelDetail/radhica-regency

```json
{
  "data": {
    "id": 1, 
    "location": "orissa-rourkela", 
    "manager": "john lamping", 
    "name": "radhica-regency", 
    "rating": 5
  }, 
  "hotel_id": "radhica-regency"
}
```

If data not found

```json
{
  "data": "Not Found!", 
  "hotel_id": 3
}

{
  "data": "Not Found!", 
  "hotel_id": "hello"
}

```

### To get ROOM Details of a hotel 

by hotel id

http://127.0.0.1:5000/api/roomDetail/1

```json
{
  "data": {
    "rooms": [
      {
        "ac": 1, 
        "adult_allowed": 1, 
        "bed_count": 1, 
        "bed_type": "KING", 
        "children_allowed": 0, 
        "id": 1, 
        "name": "holiday suit", 
        "price": 2000, 
        "room_type": "single", 
        "state": 1
      }, 
      {
        "ac": 0, 
        "adult_allowed": 1, 
        "bed_count": 1, 
        "bed_type": "KING", 
        "children_allowed": 0, 
        "id": 2, 
        "name": "holiday suit", 
        "price": 1500, 
        "room_type": "single", 
        "state": 1
      }
    ]
  }, 
  "hotel_id": 1
}
```

by hotel name

http://127.0.0.1:5000/api/roomDetail/radhica-regency

```json
{
  "data": {
    "rooms": [
      {
        "ac": 1, 
        "adult_allowed": 1, 
        "bed_count": 1, 
        "bed_type": "KING", 
        "children_allowed": 0, 
        "id": 1, 
        "name": "holiday suit", 
        "price": 2000, 
        "room_type": "single", 
        "state": 1
      }, 
      {
        "ac": 0, 
        "adult_allowed": 1, 
        "bed_count": 1, 
        "bed_type": "KING", 
        "children_allowed": 0, 
        "id": 2, 
        "name": "holiday suit", 
        "price": 1500, 
        "room_type": "single", 
        "state": 1
      }
    ]
  }, 
  "hotel_id": "radhica-regency"
}
```

If no data found

```json
{
  "data": "Not Found !", 
  "hotel_id": 3
}

{
  "data": "Not Found !", 
  "hotel_id": "gorsd"
}
```