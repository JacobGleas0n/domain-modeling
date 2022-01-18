-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE TABLES

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS interactions;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_memberships;

CREATE TABLE users (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 first_name TEXT, 
 last_name TEXT,
 email TEXT
 );

 CREATE TABLE contacts (
 id INTEGER PRIMARY KEY AUTOINCREMENT, 
 name TEXT,
 email TEXT,
 phone_number TEXT,
 title TEXT,
 company_id INTEGER
 );

 CREATE TABLE interactions (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 interaction_type TEXT,
 date TEXT,
 time TEXT,
 notes TEXT,
 contact_ID INTEGER,
 user_ID INTEGER
 );

 CREATE TABLE companies (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 name TEXT    
 );

 CREATE TABLE industries (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 name TEXT
 );

 CREATE TABLE industry_memberships (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 company_id INTEGER,
 industry_id INTEGER
 );