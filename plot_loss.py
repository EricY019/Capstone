import re
import pandas as pd
import matplotlib.pyplot as plt
import pandas as pd

# Function to extract epochs and loss data
def extract_loss_data(filepath):
    # Regex patterns for extracting information
    epoch_pattern = r"Epoch: (\d+),"
    train_loss_pattern = r"Train Loss: ([\d\.]+)"
    val_loss_pattern = r"Val loss: ([\d\.]+)"
    test_loss_pattern = r"Test: ([\d\.]+)"
    
    epochs, train_losses, val_losses, test_losses = [], [], [], []
    
    with open(filepath, 'r') as file:
        for line in file:
            epoch_match = re.search(epoch_pattern, line)
            train_loss_match = re.search(train_loss_pattern, line)
            val_loss_match = re.search(val_loss_pattern, line)
            test_loss_match = re.search(test_loss_pattern, line)
            
            if epoch_match:
                epochs.append(int(epoch_match.group(1)))
            if train_loss_match:
                train_losses.append(float(train_loss_match.group(1)))
            if val_loss_match:
                val_losses.append(float(val_loss_match.group(1)))
            if test_loss_match:
                test_losses.append(float(test_loss_match.group(1)))
    
    # Ensure all lists have the same length
    max_length = max(len(epochs), len(train_losses), len(val_losses), len(test_losses))
    epochs.extend([None] * (max_length - len(epochs)))
    train_losses.extend([None] * (max_length - len(train_losses)))
    val_losses.extend([None] * (max_length - len(val_losses)))
    test_losses.extend([None] * (max_length - len(test_losses)))
    
    return pd.DataFrame({
        "Epoch": epochs,
        "Train Loss": train_losses,
        "Val Loss": val_losses,
        "Test Loss": test_losses
    })

# Example usage
# filepath = 'src/logs/dse_results_v21_2024-12-05T13-46-31.461851/log.txt'  # Replace with the path to your file

filepath = "src/logs/dse_results_v21_2024-12-05T13-57-26.386634/log.txt"
# filepath = "src/logs/dse_results_v21_2024-12-06T06-34-11.859893/log.txt"



loss_data = extract_loss_data(filepath)

# convert to list and print
# print(loss_data['Val Loss'][:150])
print(loss_data['Test Loss'].tolist()[:11])

# Display the extracted data
print(loss_data)

# Save to CSV or process further
# loss_data.to_csv('loss_data.csv', index=False)

# # Create a DataFrame for plotting
# data = {
#     'Epoch': epochs,
#     'Train Loss': train_losses,
#     'Val Loss': val_losses,
#     'Test Loss': test_losses
# }
df = loss_data

# remove the first 10 epochs
df = df[df['Epoch'] > 10]

# Plotting the losses
plt.figure(figsize=(10, 6))
plt.plot(df['Epoch'], df['Train Loss'], label='Train Loss', marker='o')
if any(df['Val Loss'].notnull()):
    plt.plot(df['Epoch'], df['Val Loss'], label='Validation Loss', marker='o')
if any(df['Test Loss'].notnull()):
    plt.plot(df['Epoch'], df['Test Loss'], label='Test Loss', marker='o')
    
    


plt.xlabel('Epoch')
plt.ylabel('Loss')
plt.title('Train, Validation, and Test Losses Across Epochs')
plt.legend()
plt.grid(True)
# plt.show()
# strip the file log.txt from filepath 
dir_path = filepath.split('log.txt')[0]
plt.savefig(f'{dir_path}/loss.png')