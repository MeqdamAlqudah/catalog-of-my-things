CREATE TABLE labels (
  id INT PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(200),
  color VARCHAR(200),
  ITEM_ID INT,
  CONSTRAINT fk_item FOREGIN KEY (ITEM_ID) REFERENCES ITEMS (ID) ON DELETE SET NULL
);
