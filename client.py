import RPi.GPIO as GPIO
from mfrc522 import SimpleMFRC522
from time import sleep
from datetime import datetime
import socket


while True:
    try:
        led=40
        GPIO.setwarnings(False)    # Ignore warning for now
        GPIO.setmode(GPIO.BOARD)
        GPIO.setup(led,GPIO.OUT)
        GPIO.output(led, GPIO.LOW)
        reader = SimpleMFRC522()
        print("Place card")
        rfid, text = reader.read()
        now = datetime.now()
#         ngay = now.day
#         thang = now.month
#         gio = now.hour
#         phut = now.minute
        clockin = now.strftime("%H:%M")
        # Create a socket object
        client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

        # Get the server's hostname and port
        host = "192.168.211.11"
        port = 12354

        # Connect to the server
        client_socket.connect((host, port))

        # Send data to the server
        data_to_send = str(text)+","+str(clockin)+","+"IOT"
        client_socket.send(data_to_send.encode())
        # Receive the server's response
        response = client_socket.recv(1024)
        feedback=response.decode()
        print(data_to_send)
        print('Server response:', feedback)
        sleep(1)
        if (feedback=="ok"):
            GPIO.output(led, GPIO.HIGH)
            print("welcome")
            sleep(2)
        # Close the connection
        client_socket.close()
    finally:
        GPIO.cleanup()
    
