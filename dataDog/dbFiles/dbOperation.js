const { Train } = require('@mui/icons-material');
const config = require('./dbConfig'),
    sql = require('mssql');

const getFeedTime = async(DogInfo) => {
    try {
        let pool = await sql.connect(config);
        let feedTime = await pool.request().query(`SELECT * from GoodBoys WHERE DogID = '${DogInfo.ID}'`);
        console.log("Value returned by query:")
        console.log(feedTime);
        return feedTime;
    }
    catch(error) {
        console.log(error);
    }
}

const setFeedTime = async(DogInfo) => {
    console.log(DogInfo);
    try {
        let pool = await sql.connect(config);
        let feedTime = await pool.request().query(`INSERT INTO GoodBoys(DogID, Name, FeedTime) VALUES (
            1, 'Milli', '${DogInfo.FeedTime}'
        )`);
        console.log(DogInfo.FeedTime);
        return feedTime;
    }
    catch(error) {
        console.log(error);
    }
}

module.exports = {
    getFeedTime,
    setFeedTime
}