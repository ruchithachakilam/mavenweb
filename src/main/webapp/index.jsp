```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Simple To-Do App</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f6f9;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      padding: 40px;
    }
    .app {
      background: #fff;
      padding: 20px;
      border-radius: 12px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      width: 300px;
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .input-group {
      display: flex;
    }
    input {
      flex: 1;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 8px 0 0 8px;
      outline: none;
    }
    button {
      padding: 8px 12px;
      border: none;
      background: #4CAF50;
      color: #fff;
      border-radius: 0 8px 8px 0;
      cursor: pointer;
    }
    ul {
      list-style: none;
      padding: 0;
      margin-top: 20px;
    }
    li {
      background: #f9f9f9;
      margin: 6px 0;
      padding: 8px 10px;
      border-radius: 6px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    li span {
      cursor: pointer;
      color: red;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="app">
    <h2>My To-Do List</h2>
    <div class="input-group">
      <input type="text" id="taskInput" placeholder="Enter a task">
      <button onclick="addTask()">Add</button>
    </div>
    <ul id="taskList"></ul>
  </div>

  <script>
    function addTask() {
      const input = document.getElementById("taskInput");
      const taskText = input.value.trim();

      if (taskText === "") return;

      const li = document.createElement("li");
      li.innerHTML = `${taskText} <span onclick="removeTask(this)">×</span>`;
      document.getElementById("taskList").appendChild(li);

      input.value = "";
    }

    function removeTask(element) {
      element.parentElement.remove();
    }
  </script>
</body>
</html>
```
