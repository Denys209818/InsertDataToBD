INSERT INTO Faculties (Name) VALUES ('Computer Science')
INSERT INTO Faculties (Name) VALUES ('Biologia')
INSERT INTO Faculties (Name) VALUES ('English')

INSERT INTO Curators (Name, Surname) VALUES ('Ivan', 'Ivanov')
INSERT INTO Curators (Name, Surname) VALUES ('Sasha', 'Petrov')
INSERT INTO Curators (Name, Surname) VALUES ('Dmytro', 'Semenov')

INSERT INTO Departments (Building, Financing, Name, FacultyId) VALUES (2, 120000, 'Software Development', 1)
INSERT INTO Departments (Building, Financing, Name, FacultyId) VALUES (4, 80000, 'Medicina', 2)
INSERT INTO Departments (Building, Financing, Name, FacultyId) VALUES (1, 11000, 'Filologia', 3)

INSERT INTO Students (Name, Rating, Surname) VALUES ('Vasja', 3, 'Vasylenko')
INSERT INTO Students (Name, Rating, Surname) VALUES ('Darja', 4, 'Semenivna')
INSERT INTO Students (Name, Rating, Surname) VALUES ('Irina', 5, 'Petrova')

INSERT INTO Subjects (Name) VALUES ('Mikro Biologia')
INSERT INTO Subjects (Name) VALUES ('C#')
INSERT INTO Subjects (Name) VALUES ('English')

INSERT INTO Teachers (IsProfessor, Name, Salary, Surname) VALUES (1, 'Denys', 15000, 'Kravchuk')
INSERT INTO Teachers (IsProfessor, Name, Salary, Surname) VALUES (1, 'Olga', 14000, 'Ivanova')
INSERT INTO Teachers (IsProfessor, Name, Salary, Surname) VALUES (0, 'Petro', 10000, 'Semenov')

INSERT INTO Groups (Name, Year, DepartmentId) VALUES ('D221', 3, 1)
INSERT INTO Groups (Name, Year, DepartmentId) VALUES ('D311', 1, 2)
INSERT INTO Groups (Name, Year, DepartmentId) VALUES ('D541', 4, 3)

INSERT INTO Lectures (Date, SubjectId, TeacherId) VALUES (GETDATE() + DATEADD(hh, 1, current_timestamp), 1, 1)
INSERT INTO Lectures (Date, SubjectId, TeacherId) VALUES (GETDATE() + DATEADD(hh, 1, current_timestamp), 2, 2)
INSERT INTO Lectures (Date, SubjectId, TeacherId) VALUES (GETDATE() + DATEADD(hh, 1, current_timestamp), 3, 3)

INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES (1,1)
INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES (2,2)
INSERT INTO GroupsCurators (CuratorId, GroupId) VALUES (3,3)

INSERT INTO GroupsLectures (GroupId, LectureId) VALUES (1,1)
INSERT INTO GroupsLectures (GroupId, LectureId) VALUES (2,2)
INSERT INTO GroupsLectures (GroupId, LectureId) VALUES (3,3)

INSERT INTO GroupsStudents (GroupId, StudentId) VALUES (1,1)
INSERT INTO GroupsStudents (GroupId, StudentId) VALUES (2,2)
INSERT INTO GroupsStudents (GroupId, StudentId) VALUES (3,3)
