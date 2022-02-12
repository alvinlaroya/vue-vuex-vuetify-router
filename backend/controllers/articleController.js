const { Sequelize } = require('sequelize')
const Op = Sequelize.Op;
const db = require('../models')

// model
const Article = db.articles


// create
const addArticle = async (req, res) => {
    let param = {
        title: req.body.title,
        researcher: req.body.researcher,
        writer: req.body.writer,
        editor: req.body.editor,
        rating: req.body.rating,
        category: req.body.category,
        published: req.body.published,
        for_editing: req.body.forEditing,
        media_date: req.body.mediaDate,
        source_date: req.body.sourceDate,
    }

    const article = await Article.create(param)
    res.status(200).send(article)
}

// read

const getAllArticles = async (req, res) => {
    const { itemsPerPage, pageStart, page, search, category, dateStart, dateEnd } = req.body

    let query = {}
    if(category != 0) {
        query = {
            category: category
        }
    }

    let queryRange = {}
    if(dateStart != null && dateEnd != null) {
        queryRange = {
            createdAt: {
                [Op.between] : [dateStart , dateEnd ]
            }
        }
    }

    const offset = (page - 1) * itemsPerPage;
    const limit = itemsPerPage;

    let articles = await Article.findAndCountAll({
        limit: limit,
        offset: offset,
        where: {
            [Op.and]: [
                {
                    ...query,
                    ...queryRange,
                    [Op.or]: [
                        {
                            title: {
                                [Op.like]: `%${search}%`
                            }
                        },
                        {
                            researcher: {
                                [Op.like]: `%${search}%`
                            }
                        },
                        {
                            writer: {
                                [Op.like]: `%${search}%`
                            }
                        },
                        {
                            editor: {
                                [Op.like]: `%${search}%`
                            }
                        }
                    ]
                }
            ]
        },
        order: [
            ['createdAt', 'DESC'],
        ],
    })

    let customersCount = await Article.count({
        where: { category: 1} 
    })
    let competitorsCount = await Article.count({
        where: { category: 2} 
    })
    let productsCount = await Article.count({
        where: { category: 3} 
    })

    res.header("Access-Control-Allow-Origin", "*");
    res.json({
        message: "success",
        data: articles,
        badges: {
            customers: customersCount,
            competitors: competitorsCount,
            products: productsCount,
        }
    });
}

module.exports = {
    addArticle,
    getAllArticles
}
