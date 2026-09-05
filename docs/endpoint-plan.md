RACEDAY API ENDPOINT PLAN

# RaceDay API Endpoint Plan

## Authentication

POST /api/auth/register
Description: Register a new user as Organiser or Participant
Role Required: None (public)
Request Body: FullName, Email, Password, Role, ContactNumber
Expected Response: 201 Created, user object (no password)

POST /api/auth/login
Description: Log in and start a session
Role Required: None (public)
Request Body: Email, Password
Expected Response: 200 OK, session token and role

## User Profile

GET /api/users/{id}
Description: View own profile
Role Required: Organiser or Participant
Request Body: None
Expected Response: 200 OK, user profile object

PUT /api/users/{id}
Description: Update own profile info
Role Required: Organiser or Participant
Request Body: FullName, ContactNumber
Expected Response: 200 OK, updated profile

## Events

GET /api/events
Description: View all events
Role Required: Organiser or Participant
Request Body: None
Expected Response: 200 OK, list of events

GET /api/events/{id}
Description: View single event details
Role Required: Organiser or Participant
Request Body: None
Expected Response: 200 OK, event object

POST /api/events
Description: Create a new event
Role Required: Organiser
Request Body: Name, Description, EventDate, Location, Distance, EventType
Expected Response: 201 Created, event object

PUT /api/events/{id}
Description: Edit an event
Role Required: Organiser
Request Body: Name, Description, EventDate, Location, Distance, EventType
Expected Response: 200 OK, updated event

DELETE /api/events/{id}
Description: Delete an event
Role Required: Organiser
Request Body: None
Expected Response: 204 No Content

## Categories

GET /api/events/{eventId}/categories
Description: View categories for an event
Role Required: Organiser or Participant
Request Body: None
Expected Response: 200 OK, list of categories

POST /api/events/{eventId}/categories
Description: Add a category to an event
Role Required: Organiser
Request Body: CategoryName
Expected Response: 201 Created, category object

## Event Enrolments

POST /api/enrolments
Description: Enrol in an event under a category
Role Required: Participant
Request Body: EventID, CategoryID
Expected Response: 201 Created, enrolment object

GET /api/enrolments/my
Description: View own enrolments
Role Required: Participant
Request Body: None
Expected Response: 200 OK, list of enrolments

GET /api/events/{eventId}/enrolments
Description: View all enrolments for an event
Role Required: Organiser
Request Body: None
Expected Response: 200 OK, list of enrolments

## Results

POST /api/results
Description: Capture a result for an enrolment
Role Required: Organiser
Request Body: EnrolmentID, FinishTime, FinishingPosition
Expected Response: 201 Created, result object

GET /api/results/my
Description: View own race results
Role Required: Participant
Request Body: None
Expected Response: 200 OK, list of results
