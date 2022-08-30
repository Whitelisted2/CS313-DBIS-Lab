SELECT DISTINCT building, room_number
FROM section NATURAL JOIN time_slot
WHERE day = 'W';