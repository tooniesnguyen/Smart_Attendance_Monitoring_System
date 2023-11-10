from base64 import encode
import cv2
import face_recognition
import os
import numpy as np
import time

path='/home/toonies/Learn/Smart_Attendance_Monitoring_System/database/images'
images=[]
classNames=[]
myList=os.listdir(path)
print(myList) #['Donal Trump.jpg', 'elon musk .jpg', 'Joker.jpg', 'tokuda.jpg']
for cl in myList:
    curImg = cv2.imread(f"{path}/{cl}")
    # After this step we will have each img pushed to the matrix

    images.append(curImg)
    classNames.append(os.path.splitext(cl)[0]) 
    # Separate the image name by "."
    # [0] throw the tail
    

# Step 2: Locate face
def Encode(images):
    encodeList=[]
    for img in images:
        img=cv2.cvtColor(img, cv2.COLOR_BGR2RGB) # BGR to RGB
        encode=face_recognition.face_encodings(img)[0]
        encodeList.append(encode)
    return encodeList

encodeListKnow= Encode(images)
print("Finish")


# Start the webcam
cap = cv2.VideoCapture(0)


while True:
    ret, frame= cap.read()
    # ret return true or false khi đọc cam thành công
    framS = cv2.resize(frame,(0,0),None,fx=0.5,fy=0.5)  
    # fx,fy is half of the original
    # framS = 50% ảnh ban đầu

    # Cứ gọi ảnh xong là chuyển sang RGB
    frams=cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

    # Locate the face on the cam and encode the image on the cam
    facecurFrame= face_recognition.face_locations(frams) # Get each face and current face position
    encodecurFrame= face_recognition.face_encodings(frams)

    for encodeFace, faceLoc in zip(encodecurFrame,facecurFrame):
        # zip() lấy từng khuôn mặt và vị trí khuôn mặt hiên tại theo cặp
        mathces=face_recognition.compare_faces(encodeListKnow,encodeFace)
        faceDis=face_recognition.face_distance(encodeListKnow,encodeFace)

        matchIndex=np.argmin(faceDis) # Đẩy về index của faceDis nhỏ nhất
        

        if faceDis[matchIndex] <0.5:
            name= classNames[matchIndex].upper()
        else:
            name= "Unknow"
        
        # Print tên lên frame
        y1, x2, y2, x1= faceLoc
        # y1, x2, y2, x1= y1*2, x2*2, y2*2, x1*2 # *2 để chuẩn với khung nhận dạng do fx fy =0.5
        cv2.rectangle(frame,(x1,y1),(x2,y2),(0,255,0),2)
        cv2.putText(frame,name,(x2,y2),cv2.FONT_HERSHEY_COMPLEX,1,(255,166,188),2)
        

    cv2.imshow('Hello', frame)
    if cv2.waitKey(1)==ord('q'):
        break

cap.release()
cv2.destroyAllWindows()