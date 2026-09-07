# RACEDAY-POE-ST10443667
# RaceDay - Event Management System (POE Part 1)

## Description
RaceDay is a full-stack web-based event management system built for the South African road running, walking, and cycling community. The platform allows Event Organisers to create and manage events, categories, and participant results, while Participants can browse events, enter events, track their personal performance history, and prepare for race day.

This repository covers **Part 1: System Planning and Database** - the ERD, API endpoint plan, and SQL database script that form the foundation for Parts 2 and 3.

## Roles
- **Organiser** - can create, edit, and delete events, manage event categories, capture participant results, and view all enrolments for their events.
- **Participant** - can create an account, browse events, enrol in an event by selecting a category, view their own enrolments, and track their personal race results.

## Part 1 Deliverables (in /docs)
- `ERD.drawio.png` - Entity Relationship Diagram (6 entities: User, Event, Category, Enrolment, Result, EventImage)
- `endpoint-plan.md` - Full API endpoint plan covering Authentication, User Profile, Events, Categories, Event Enrolments, and Results
- `schema.sql` - SQL script that creates the RaceDayPOE database and seeds it with sample data

## How to Run the SQL Script
1. Open SQL Server Management Studio (SSMS)
2. Open a new query window
3. Paste in the contents of `docs/schema.sql`
4. Run the script (F5) - it will create the `RaceDayPOE` database, all 6 tables, and seed sample data
5. Expand Databases > RaceDayPOE > Tables to confirm all tables were created successfully

## CI/CD
This repository uses GitHub Actions to validate the repository structure on every push. See `.github/workflows/ci.yml`.


## Video Walkthrough
https://youtu.be/md763r0_pPo

## Author
ST10443667
