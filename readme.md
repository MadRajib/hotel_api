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

http://127.0.0.1:5000/api/hotelDetail/1

```json
{
    "id": 1,
    "name": "radhica-regency",
    "location": "orissa-rourkela",
    "rating": 5,
    "manager": "john lamping"
}
```

http://127.0.0.1:5000/api/hotelDetail/2

```json
{
    "hotel": "not found"
}
```