CREATE FUNCTION NextIdVal (seqname VARCHAR(40))
RETURNS BIGINT UNSIGNED
BEGIN
        INSERT INTO NewObjectId VALUES (seqname,LAST_INSERT_ID(1)) ON DUPLICATE KEY UPDATE NextId=LAST_INSERT_ID(NextId+1);
        RETURN LAST_INSERT_ID();
END;
;
