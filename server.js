const PORT = process.env.PORT || 4000;

const cors = require("cors");
const bodyParser = require("body-parser");
const express = require("express");
const cron = require("node-cron");

const app = express();

const corsOptions = {
  origin: "https://thetidyapp.herokuapp.com",
  methods: "GET,HEAD,PUT,PATCH,POST,DELETE",
  preflightContinue: false,
  optionsSuccessStatus: 204

};

 app.use(cors(corsOptions));




const apiFunction = require("./api.js");
const api = apiFunction();

const rotateUsers = require("./cronJob");

app.use(bodyParser.json());

cron.schedule("0 1 * * *", rotateUsers);

//GET
app.get("/tasks/:groupId", api.getTasks);
app.get("/users/:groupId", api.getUsers);
app.get("/groups/:groupId", api.getGroups);

//POST
app.post("/users", api.addNewUsers);
app.post("/tasks", api.addNewTasks);
app.post("/groups", api.addNewGroup);
app.post("/login", api.login);

//DELETE
app.delete("/users/:userId", api.deleteUser);
app.delete("/tasks/:taskId", api.deleteTask);

//PUT AND PATCH
app.patch("/groups/:groupId", api.updateGroup);
app.patch("/tasks/:taskId", api.updateTask);
app.patch("/users/:userId", api.updateUser);
app.patch("/tasks/status/:taskId", api.updateTaskStatus);

app.listen(PORT, () => console.log(`app listening on port: ${PORT}`));
