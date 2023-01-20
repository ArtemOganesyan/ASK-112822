/** Created By Moni Ghosh **/

package definitions;

public class MoniHomePageLinksElements {

        public static String loginEmailField() {
            return "//input[@formcontrolname='email']";
        }
        public static String loginPasswordField() {
            return "//input[@formcontrolname='password']";
        }
        public static String loginSubmitButton() {return "//button[@type='submit']";}
        public static String homeTeacherText() {return "//p[contains(text(),'TEACHER')]" ;}
        public static String homeTeacherSubmissionText() {return "//h4[contains(text(),'Submissions')]" ;}
        public static String homeTeacherSubmissionLink() {return  "//h5[contains(text(),'Submissions')]" ;}
        public static String homeTeacherAssignmentsLink() {return "//h5[contains(text(),'Assignments')]";}
        public static String homeTeacherAssignmentsText() {return "//h4[contains(text(),'List of Assignments')]";}
        public static String homeTeacherUsersManagementLink() {return "//h5[contains(text(),\"User's Management\")]";}
        public static String homeTeacherUsersManagementText() {return "//h4[contains(text(),\"User's Management\")]";}
        public static String homeStudentText() {return "//p[contains(text(),'STUDENT')]" ;}
        public static String homeStudentMyAssignmentsLink() {return "//h5[contains(text(),'My Assignments')]";}
        public static String homeStudentMyAssignmentsText() {return "//h4[contains(text(),'My Assignments')]";}
        public static String homeStudentMyGradesLink() {return "//h5[contains(text(),'My Grades')]";}
        public static String homeStudentMyGradesText() {return "//h4[contains(text(),'My Grades')]";}


}
