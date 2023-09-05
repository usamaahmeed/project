import 'backend.dart';
import 'employee.dart';
import 'flutter.dart';
import 'project.dart';
import 'uiux.dart';

class Team {
  String? teamName;
  Employee? teamLeader;
  List<FlutterDeveloper> flutterGroup = [];
  List<BackendDeveloper> backendGroup = [];
  List<UiUxDeveloper> uiUxGroup = [];
  List<Employee> allTeamDeveloper = [];
  List<Project> projects = [];
  void showNamesFlutterDevelopers() {
    if (flutterGroup.isNotEmpty) {
      for (final element in flutterGroup) {
        print(element.name);
      }
    } else {
      print(" there is no flutter developers ");
    }
  }

  void showNamesBackendDevelopers() {
    if (backendGroup.isNotEmpty) {
      for (final element in backendGroup) {
        print(element.name);
      }
    } else {
      print(" there is no backend developers ");
    }
  }

  void showNamesUiUxDevelopers() {
    if (uiUxGroup.isNotEmpty) {
      for (final element in uiUxGroup) {
        print(element.name);
      }
    } else {
      print(" there is no ui/ux developers ");
    }
  }

  void showNameAllDevelopers() {
    print("Team Leader: ${teamLeader!.name}");
    print("All Team Developers:");
    for (final element in allTeamDeveloper) {
      print(element.name);
    }
  }

  void addEmployeeToTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.length <= 8) {
        flutterGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('added ${employee.name} to flutter group');
      } else {
        print('the flutter group is full');
      }
    } else if (employee is BackendDeveloper) {
      if (flutterGroup.length <= 5) {
        backendGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('added ${employee.name} to backend group');
      } else {
        print('the backend group is full');
      }
    } else if (employee is UiUxDeveloper) {
      if (flutterGroup.length <= 2) {
        uiUxGroup.add(employee);
        allTeamDeveloper.add(employee);
        print('added ${employee.name} to ui/UX group');
      } else {
        print('the ui/ux group is full');
      }
    } else {
      print(
          "Can't add this employee; the team only accepts Flutter, Backend, or UI/UX developers.");
    }
  }

  void removeEmployeeFromTeam(Employee employee) {
    if (employee is FlutterDeveloper) {
      if (flutterGroup.isEmpty) {
        print('the flutter group is empty');
      } else {
        if (flutterGroup.contains(employee)) {
          flutterGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('removed ${employee.name} from flutter group');
        } else {
          print('this employee is not exist');
        }
      }
    } else if (employee is BackendDeveloper) {
      if (backendGroup.isEmpty) {
        print('the backend group is empty');
      } else {
        if (backendGroup.contains(employee)) {
          backendGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('removed ${employee.name} from backend group');
        } else {
          print('this employee is not exist');
        }
      }
    } else if (employee is UiUxDeveloper) {
      if (uiUxGroup.isEmpty) {
        print('the uiUx group is empty');
      } else {
        if (uiUxGroup.contains(employee)) {
          uiUxGroup.remove(employee);
          allTeamDeveloper.remove(employee);
          print('removed ${employee.name} from uiUx group');
        } else {
          print('this employee is not exist');
        }
      }
    } else {
      print(
          'This employee cannot be removed, the team only has a Flutter and Backend Developer and a UI/UI Developer');
    }
  }

  void addProject(Project project, int teamLeaderId) {
    if (teamLeaderId != teamLeader!.getId) {
      print(
          'you are not team leader , if you are team leader please enter your correct id');
    } else {
      if (flutterGroup.length <= 2 &&
          backendGroup.length <= 2 &&
          uiUxGroup.length < 2) {
        print(
            'this team is not complete , The team must contain at least one ui developer, at least 2 flutter developer, and at least 2 backend developer');
      } else {
        if (project.deadline != null && project.receivingDate != null) {
          final daysDifference =
              project.deadline!.difference(project.receivingDate!).inDays;
          if (daysDifference > 30) {
            print('The team can\'t finish any project before 30 days');
          } else {
            projects.add(project);
          }
        }
      }
    }
  }

  void getAllProjects() {
    if (projects.isEmpty) {
      print("The team doesn't have any projects.");
    } else {
      print("Team's Projects:");
      for (var project in projects) {
        print(project.toString());
      }
    }
  }

  void groupUiFinished(Project project, int teamLeaderId) {
    if (teamLeader!.getId == teamLeaderId) {
      if (projects.contains(project)) {
        project.uiFinished();
        print(
            "UI/UX work for '${project.title}' project is marked as finished.");
      } else {
        print("this Project is not exist with the team.");
      }
    } else {
      print("You are not the team leader. Please enter your correct ID.");
    }
  }

  void groupFlutterFinished(Project project, int teamLeaderId) {
    if (teamLeader!.getId == teamLeaderId) {
      if (projects.contains(project)) {
        project.flutterFinished();
        print(
            "Flutter work for '${project.title}' project is marked as finished.");
      } else {
        print("this Project is not exist with the team.");
      }
    } else {
      print("You are not the team leader. Please enter your correct ID.");
    }
  }

  void groupBackendFinished(Project project, int teamLeaderId) {
    if (teamLeader!.getId == teamLeaderId) {
      if (projects.contains(project)) {
        project.backendFinished();
        print(
            "Backend work for '${project.title}' project is marked as finished.");
      } else {
        print("this Project is not exist with the team.");
      }
    } else {
      print("You are not the team leader. Please enter your correct ID.");
    }
  }
}
