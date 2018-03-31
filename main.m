# Throughput analysis for Selective repeat ARQ channel with time-out

ACK = 1;                                      # Positive Acknowledgement
NAK = -1;                                     # Negative Acknowledgement

n = input("Enter the size of the sender and receiver: ");

sender = zeros(n);                            # The sender and receiver of size 'n'
receiver = zeros(n);

for i = 1:n
  d = input("Enter the data bits to be sent: ");
  sender(i) = d;                              # Input the data to be sent 0's or 1's
end
i=1;
disp(sender);
while n>0
    receiver(i)=mod(randi(5),2)               # Using random function to mimic errors in transmission
    if receiver(i)==sender(i)                 # If what is recieved is correct,
      ack = 1;                                # Set Acknowledgement as 1,
    else
      ack = -1;                               # Else provide negative Acknowledgement
    end
    if ack==ACK                               # Move to next transmission if recieved  is correct.
      disp(ack);
      n--
      i++
    else if ack == NAK                        # Go on with the re transmission if the Acknowledgement is Negative
      disp(ack);
    end
end
end
