const fs = require("fs");

// Define the file path you want to read
const filePath = process.argv[2]; // Assumes the file path is passed as an argument

// Check if a file path was provided
if (!filePath) {
  console.error("Usage: node index.js <file_path>");
  process.exit(1);
}

// Read the file
fs.readFile(filePath, "utf8", (err, data) => {
  if (err) {
    console.error(`Error reading the file: ${err.message}`);
  } else {
    // Process the file content (data)
    console.log("File content:");
    console.log(data);

    fs.writeFile(filePath, `${data}console.log("Updated");`, "utf8", err => {
      if (err) {
        console.error(`Error writing to the file: ${err.message}`);
      } else {
        console.log("Content has been written to the file.");
      }
    });

    // You can perform additional processing on the file content here
  }
});