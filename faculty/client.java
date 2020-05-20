import java.io.*;
import java.net.*;
 
class client
{
    public static void main(String args[]) throws Exception
    {
       BufferedReader clientRead =new BufferedReader(new InputStreamReader(System.in));
      DatagramSocket clientSocket = new DatagramSocket();
      InetAddress IP = InetAddress.getByName("192.168.1.109");
      byte[] sendbuffer = new byte[1024];
      byte[] receivebuffer = new byte[1024];

      String clientData = " ";
      while(!clientData.equals("stop"))
      {
      System.out.print("\nClient: ");

      clientData = clientRead.readLine();
      sendbuffer = clientData.getBytes();        
      DatagramPacket sendPacket =
      new DatagramPacket(sendbuffer, sendbuffer.length, IP, 9876);
      clientSocket.send(sendPacket);
    
      DatagramPacket receivePacket =
      new DatagramPacket(receivebuffer, receivebuffer.length);
      clientSocket.receive(receivePacket);
      String serverData = new String(receivePacket.getData());
      System.out.print("\nServer: " + serverData);
     } 
      clientSocket.close();
    }
}
