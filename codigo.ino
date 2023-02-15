#include <ESP8266WiFi.h>

const char* ssid = "";
const char* password = "";

WiFiServer server(80);

String header;

unsigned long lastTime, timeout = 2000;

const int outputPin = 0;
String outputState = "apagado";

void setup(){
    Serial.begin(115200);

    pinMode(outputPin, OUTPUT);
    digitalWrite(outputPin, LOW);

    Serial.print("Conectado a ");
    Serial.println(ssid);

    WiFi.begin(ssid, password);

    while(WiFi.status() != WL_CONNECTED){
        delay(500);
        Serial.print(".");
    }

    Serial.println("");
    Serial.println("Dispositivo conectado.");
    Serial.println("Direccion IP: ");
    Serial.println(WiFi.localIP());

    server.begin();
}

void loop(){
    WiFiClient client = server.available();

    if(client){
        lastTime = millis();

        Serial.println("Nuevo Cliente");
        String currentLine = "";

        while (client.connected() && millis() - lastTime <= timeout)
        {
            if(client.available()){
                char c = client.read();
                Serial.write(c);
                header += c;
                if(c == '\n'){
                    if(currentLine.length() == 0){
                        client.println("HTTP/1.1 200 OK");
                        client.println("Content-type:text/html");
                        client.println("Connection: close");
                        client.println();

                        if(header.indexOf("GET /on") >= 0){
                            Serial.println("GPIO encendido");
                            outputState = "encendido";
                            digitalWrite(outputPin, HIGH);
                        }else if(header.indexOf("GET /off") >= 0){
                            Serial.println("GPIO apagado");
                            outputState = "apagado";
                            digitalWrite(outputPin, LOW);
                        }

                        client.println("<DOC");//******
                        break;
                    } else{
                        currentLine = "";
                    }
                } else if(c != '\r'){
                    currentLine += c;
                }
            }
        }
    }
}

