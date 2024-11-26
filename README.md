# mesh_ping
Mesh Ping
A Bash script to automate mesh ping operations between a set of source hosts and target hosts. This script reads hosts from input files, performs pings from each source to each target, and logs the results while providing real-time feedback in the terminal. Failed pings are highlighted in red for easy identification.

Features
Multiple Source-Target Pinging: Pings from multiple source hosts to multiple target hosts.
Result Logging: Saves the results of the ping operations to a log file for review.
Real-Time Feedback: Highlights failed pings in red and successful pings in green in the terminal.


1. Create the mesh_ping.sh Script
![Screenshot from 2024-11-25 22-17-30](https://github.com/user-attachments/assets/c5250e67-0f19-464b-b5cc-4a33b9027568)

2. Write bash script for mesh ping
-Open the mesh_ping.sh file in a text editor and add the Bash script code
-The script performs mesh pings between all sources and targets, logs the results, and skips empty lines or comments in the input files
![Screenshot from 2024-11-25 22-18-05](https://github.com/user-attachments/assets/69e60e96-f5fe-45e5-adce-70b6df1f50a6)
![Screenshot from 2024-11-25 22-18-16](https://github.com/user-attachments/assets/97660571-99c2-4239-9c8f-1db63c2ee699)

3. Change the file permissions to make it executable
![Screenshot from 2024-11-25 22-18-58](https://github.com/user-attachments/assets/0684cae2-92ee-4388-bbbf-209ac7d34cfc)

4.Create and open the sources.txt file and add a list of source IPs or hostnames

![Screenshot from 2024-11-25 22-21-15](https://github.com/user-attachments/assets/c194ca24-336f-4693-b534-fa8393744add)
![Screenshot from 2024-11-25 22-21-59](https://github.com/user-attachments/assets/878c98e4-f321-4f20-8fdd-59567fa30423)

5. Create and open the targets.txt file and add a list of target IPs or hostnames
![Screenshot from 2024-11-25 22-21-15](https://github.com/user-attachments/assets/6e564d77-04ff-433c-9a55-8b7406a8c138)
![Screenshot from 2024-11-25 22-21-47](https://github.com/user-attachments/assets/b1771905-0b76-4fe5-9561-946a85302c39)

6. Execute the mesh_ping.sh Script
![Screenshot from 2024-11-25 22-22-21](https://github.com/user-attachments/assets/4f5c5a40-a445-49f4-af69-88d0f0e696af)

7. Verify Successful Pings. Ensure that the terminal output shows SUCCESS for the pings
![Screenshot from 2024-11-25 22-24-32](https://github.com/user-attachments/assets/548f1a5f-e9c1-4a3a-95ac-e62f99731487)

8.Check the Results Log. View the log file to confirm the results
![Screenshot from 2024-11-25 22-25-20](https://github.com/user-attachments/assets/f9cc1617-8125-46f2-8be9-cc9ba3212e57)
![results](https://github.com/user-attachments/assets/eb6b8e2b-93fc-4135-841d-cf08425f21b6)

Conclusion
The Mesh Ping script is a useful tool for network administrators and engineers to quickly test connectivity between multiple hosts. By automating the ping process and providing clear feedback, this script simplifies routine network diagnostics.

