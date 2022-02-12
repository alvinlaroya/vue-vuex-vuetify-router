module.exports = (sequelize, DataTypes) => {
    const Article = sequelize.define("article", {
        title: {
            type: DataTypes.STRING,
            allowNull: false
        },
        researcher: {
            type: DataTypes.STRING,
            allowNull: false
        },
        writer: {
            type: DataTypes.STRING,
            allowNull: false
        },
        editor: {
            type: DataTypes.STRING,
            allowNull: false
        },
        rating: {
            type: DataTypes.FLOAT,
            allowNull: false
        },
        category: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        published: {
            type: DataTypes.BOOLEAN,
        },
        for_editing: {
            type: DataTypes.BOOLEAN,
        },
        media_date: {
            type: DataTypes.DATE,
        },
        source_date: {
            type: DataTypes.DATE,
        },
    })

    return Article
}