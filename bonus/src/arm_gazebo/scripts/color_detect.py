import cv2
def detect_redcolor(img):
    image = cv2.imread(img)
    hsvFrame = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    red_lower = np.array([136, 87, 111], np.uint8)
    red_upper = np.array([180, 255, 255], np.uint8)
    red_mask = cv2.inRange(hsvFrame, red_lower, red_upper)
    threshold = 100
    if np.sum(red_mask)>threshold:
        return True
    return False