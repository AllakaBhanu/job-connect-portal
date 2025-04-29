-- Creating Table `admin`
CREATE TABLE `admin` (
    `id_admin` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL
);

-- Creating Table `company`
CREATE TABLE `company` (
    `id_company` INT AUTO_INCREMENT PRIMARY KEY,
    `companyname` VARCHAR(255) NOT NULL,
    `headofficecity` VARCHAR(255) NOT NULL,
    `contactno` VARCHAR(20) NOT NULL,
    `website` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `aboutme` TEXT,
    `logo` VARCHAR(255)
);

-- Creating Table `career`
CREATE TABLE `career` (
    `id_career` INT AUTO_INCREMENT PRIMARY KEY,
    `career_title` VARCHAR(255) NOT NULL,
    `career_description` TEXT NOT NULL
);

-- Creating Table `company_reviews`
CREATE TABLE `company_reviews` (
    `id_review` INT AUTO_INCREMENT PRIMARY KEY,
    `id_company` INT NOT NULL,
    `reviewer_name` VARCHAR(255) NOT NULL,
    `reviewer_rating` INT NOT NULL,
    `reviewer_comment` TEXT,
    FOREIGN KEY (`id_company`) REFERENCES `company`(`id_company`)
);

-- Creating Table `districts_or_cities`
CREATE TABLE `districts_or_cities` (
    `id_city` INT AUTO_INCREMENT PRIMARY KEY,
    `city_name` VARCHAR(255) NOT NULL
);

-- Creating Table `education`
CREATE TABLE `education` (
    `id_education` INT AUTO_INCREMENT PRIMARY KEY,
    `education_title` VARCHAR(255) NOT NULL
);

-- Creating Table `industry`
CREATE TABLE `industry` (
    `id_industry` INT AUTO_INCREMENT PRIMARY KEY,
    `industry_title` VARCHAR(255) NOT NULL
);

-- Creating Table `applied_jobposts`
CREATE TABLE `applied_jobposts` (
    `id_application` INT AUTO_INCREMENT PRIMARY KEY,
    `id_jobpost` INT NOT NULL,
    `id_user` INT NOT NULL,
    `application_date` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `status` VARCHAR(50) NOT NULL,
    FOREIGN KEY (`id_jobpost`) REFERENCES `career`(`id_career`),
    FOREIGN KEY (`id_user`) REFERENCES `admin`(`id_admin`)
);

-- Indexes for Table `admin`
CREATE UNIQUE INDEX `idx_admin_username` ON `admin`(`username`);

-- Indexes for Table `company`
CREATE UNIQUE INDEX `idx_company_email` ON `company`(`email`);

-- Indexes for Table `career`
CREATE INDEX `idx_career_title` ON `career`(`career_title`);

-- Indexes for Table `company_reviews`
CREATE INDEX `idx_company_reviews_company` ON `company_reviews`(`id_company`);

-- Indexes for Table `districts_or_cities`
CREATE UNIQUE INDEX `idx_district_city` ON `districts_or_cities`(`city_name`);

-- Indexes for Table `education`
CREATE INDEX `idx_education_title` ON `education`(`education_title`);

-- Indexes for Table `industry`
CREATE INDEX `idx_industry_title` ON `industry`(`industry_title`);


