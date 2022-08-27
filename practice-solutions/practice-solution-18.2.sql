SELECT students.ID, students.FirstName, students.LastName, teachers.LastName AS teacher
FROM students, teachers
WHERE students.teacherid=teachers.ID
ORDER BY students.ID
