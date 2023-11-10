import socket

# Create a socket object
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Get the server's hostname and port
host = "192.168.1.104"
port = 12345

# Connect to the server
client_socket.connect((host, port))

# Send data to the server
data_to_send = "Hello, server!"
client_socket.send(data_to_send.encode())

# Receive the server's response
response = client_socket.recv(1024)
print('Server response:', response.decode())

# Close the connection
client_socket.close()
