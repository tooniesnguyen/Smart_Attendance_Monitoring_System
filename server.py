import socket

# Create a socket object
server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Get the local machine name and port
host = "192.168.1.104"
port = 12348

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
    rfid = data.decode().split(",")[0]
    checkin = data.decode().split(",")[1]
    print('RFID:', rfid)
    print('Checkin:', checkin)

    # Send a response back to the client
    client_socket.send('DMM'.encode())

    # Close the connection with the client
    client_socket.close() 