--------------------------------------------------------
--  DDL for Trigger TVCONT_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "UNI_DISH"."TVCONT_TR" 
BEFORE INSERT ON TV_CONTENT FOR EACH ROW
BEGIN
  SELECT UNI_DISH.TVCONT_SEQ.NEXTVAL INTO :NEW.ID FROM DUAL;
END;



/
ALTER TRIGGER "UNI_DISH"."TVCONT_TR" ENABLE;
