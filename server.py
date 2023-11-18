import socket
from utils.addData import addData

# Create a socket object
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Get the local machine name and port
host = "192.168.211.11"
port = 12354

# Bind to the port
server_socket.bind((host, port))

# Queue up to 5 requests
server_socket.listen(5)

while True:
    # Establish connection with client
    client_socket, addr = server_socket.accept()
    print('Got connection from', addr)

    # Receive data from the client
    data = client_socket.recv(1024)
    # print("Data", data[1:])
    rfid = data.decode().split(",")[0]
    checkin = data.decode().split(",")[1]
    class_id =  data.decode().split(",")[2]
    print(rfid)
    print("Check", checkin)
    status = addData(rfid=rfid, checkin= checkin, class_id= class_id)
    if status == "ok":
        print('RFID:', rfid)
        print('Checkin:', checkin)

    # Send a response back to the client
    client_socket.send(status.encode())

    # Close the connection with the client
    client_socket.close() 