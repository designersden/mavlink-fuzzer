# mavlink-fuzzer
Fuzzing Mavlink library using AFL and LibFuzzer

## Motivation / Background 
Unmanned Aerial Vehicles, or Drones, are vehicles that are controlled remotely from a Ground Control Station. Drones now have a myriad of functions, ranging from monitoring climate change to carrying out search operations after natural disasters. One of the most common commercial protocols used for drone control is called MAVLink or Micro Air Vehicle Link. Although Mavlink is highly accessible and efficient, this comes with the risk of being fairly unsecure. The Mavlink Protocol lacks security and is susceptible to several attacks, which poses serious risks to public safety.

## Approach: Fuzzing
In order to analyze the security faults in Mavlink, we decided to use fuzzing, which is an automated software testing method that injects invalid, malformed, or unexpected inputs into a system to reveal software defects and vulnerabilities.

[image]

 We decided to use the AFL fuzzer to learn how to fuzz and apply it to mavlink. However, something that we found was that AFL in its current form can only input text messages through the terminal which means we wouldn’t be able to send messages to Mavlink itself. 

 ## Approach: Applying Fuzzing to Mavlink 

 To remedy this issue, we wrote a __harness__ that receives terminal messages and converts them into Mavlink messages using Mavlink library.  

 ## Setup

 1. Setup Docker desktop 
 2. pull aflplusplus image  
 ``` 
    docker pull aflplusplus\aflplusplus 
```
 3. Download the Git Repository 
 4. build Dockerfile 
 
