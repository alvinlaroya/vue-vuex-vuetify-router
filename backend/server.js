const express = require('express');
const cors = require('cors');

const app = express();
// middleware

app.use(cors({
    origin: '*'
}))

app.use(express.json())

app.use(express.urlencoded({ extended: true }))


// routers

const router = require('./routes/articleRouter.js')
app.use('/api/articles', router)


// api

app.get('/', (req, res) => {
    res.json({ message: 'hello from api' })
})

const PORT = process.env.PORT || 8081

// server

app.listen(PORT, () => {
    console.log(`server running in port ${PORT}`)
})