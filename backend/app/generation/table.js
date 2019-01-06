// holds any methods that involve interacting with the generation table 
const pool = require('../../databasePool');

class GenerationTable {
    static storeGeneration(generation){

        return new Promise ((resovle,reject)=>{
            pool.query('INSERT INTO generation(expiration) VALUES ($1) RETURNING id',
                    [generation.expiration],
                    (error,Response)=>{
                        if(error) return reject(error);
                    
                        const generationId = Response.rows[0].id;
                        resovle({generationId});
                    }
                    );
        });
       
    }
}

module.exports = GenerationTable;