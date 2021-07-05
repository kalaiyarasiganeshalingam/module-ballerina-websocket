import ballerina/io;
import ballerina/websocket;

public function main() returns error? {
   string username = io:readln("Enter username: ");
   string age = io:readln("Enter age: ");
   string url = string `ws://localhost:9090/chat/${username}`;
   websocket:Client wsClient = check new(url);
   @strand {
       thread:"any"
   }
   worker w2 returns error? {
       while true {
           string msg = io:readln("");
           if (msg == "exit") {
               check wsClient->close();
           } else {
               check wsClient->writeTextMessage(msg);
           }
       }       
   }   

   @strand {
       thread:"any"
   }
   worker w1 returns error? {
       while true {
           string textResp = check wsClient->readTextMessage();
           io:println(textResp);
       }       
   }   
}


