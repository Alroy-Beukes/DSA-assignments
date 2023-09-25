import ballerina/http;


service /lecturerapp on new http:Listener(6100) {
    resource function post createLecturer(Lecturer lecturer) returns string {
    
    }

    resource function get allLecturers() returns table<Lecturer> {
        
    }

    resource function put updateLecturere(Lecturer lecturer) returns string {
    
    }

    resource function get lecturerInfo(string staffNumber) returns Lecturer|string {
    
    }

    resource function delete deleteLecturerByStaffNumber(string staffNumber) returns string {
    

    }

    resource function get lecturersByCourseCode(string courseCode) returns Lecturer[] {

    }

    resource function get lecturersByOfficeNumber(string officeNumber) returns Lecturer[] {
    
    }

}