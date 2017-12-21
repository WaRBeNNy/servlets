CREATE TABLE IF NOT EXISTS `serlvets`.`manufacturers` (
  `id` BINARY(16) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `serlvets`.`products` (
  `id` BINARY(16) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `price` DECIMAL NOT NULL,
  `manufacturer_id` BINARY(16) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `manufacturer_id_idx` (`manufacturer_id` ASC),
  CONSTRAINT `manufacturer_id`
  FOREIGN KEY (`manufacturer_id`)
  REFERENCES `serlvets`.`manufacturers` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE) ENGINE = InnoDB;