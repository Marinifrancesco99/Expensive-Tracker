import  express  from  'express';
import cors from "cors";
import "dotenv/config";
import  prisma  from  "../db/prisma.js";


const PORT = process.env.PORT;

const  app  =  express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(cors({ origin: "*" }));

// Esempio di rotta
app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.get("/transazioni", async (req, res) => {
    const data = await prisma.transazioni.findMany();
    res.json(data);
})






//app.get("/users", async (req, res) => {
//    const users = await prisma.users.findMany();
//    res.json(users);
//});

app.listen(PORT, () => {
    console.log(`Application listening at port "${PORT}"`);
});
