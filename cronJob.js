const secrets = require("./secrets.json");
const { Pool } = require("pg");
const connection = new Pool(secrets);


const rotateUsers = async () => {

    const rotationQuery = `UPDATE 
	tasks t
SET
	starting_date = NOW(),
	user_id = 
		COALESCE(
			(SELECT id FROM users WHERE group_id = g.id and id > COALESCE(t.user_id, 0) LIMIT 1), /*get the next user*/
			(SELECT min(id) FROM users WHERE group_id = g.id) /*go back to first user*/
		),
	task_completed = false
FROM 
	tidy_group g
WHERE
	t.group_id = g.id 
	AND NOW() >= t.starting_date + (
		CASE 
			WHEN g.frequency = 'weekly' THEN INTERVAL '7' DAY
			WHEN g.frequency = 'biweekly' THEN INTERVAL '14' DAY
			ELSE interval '30' DAY 
		END)`;

    console.log('Starting rotate users job')    
    await connection.query(rotationQuery);
    console.log('Rotate users job has ended')
}

module.exports = rotateUsers;
