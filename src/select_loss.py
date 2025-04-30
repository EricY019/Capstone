# Read the file and process each line
indices = []
thres = 2
with open('loss6.log', 'r') as file:  # Replace 'file.txt' with the name of your file
    for line in file:
        parts = line.strip().split()
        index = int(parts[0])  # The index
        value = float(parts[1])  # The numerical value
        # if value > 100:
        if value > thres:
            indices.append(index)

print(f"Indices with values greater than {thres}:", indices)