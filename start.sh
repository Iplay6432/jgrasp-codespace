echo "Updating..."
sudo apt update

echo "Installing packages..."

sudo apt install xterm fluxbox novnc tigervnc-standalone-server

echo "Starting NoVNC"

websockify --web /usr/share/novnc/ --wrap-mode=ignore 6080 localhost:5900 &

echo "Starting VNC server..."

vncserver :1 -geometry 2560x1440 -depth 24 -localhost -nolisten tcp -rfbport 5900
