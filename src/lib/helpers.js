const helpers = {};
const bcrypt = require('bcryptjs');

helpers.encryptPassword = async (password) => {
    const salt = await bcrypt.genSalt(10);
    const pass = await bcrypt.hash(password, salt);
    return pass;
};

helpers.matchPassword = async (password, savePassword) => {
    try {
        return await bcrypt.compare(password, savePassword);
    } catch (error) {
        console.log(error);
    }
};

module.exports = helpers;