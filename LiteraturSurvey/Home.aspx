<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LiteraturSurvey.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script type="text/javascript" src="https://code.angularjs.org/1.6.4/angular-animate.js"></script>
    <script type="text/javascript" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.6.0.js"></script>
    <script src="home.js"></script>



</head>


<body ng-app="ui.bootstrap.demo">
    <form id="form1" runat="server">
        <div style="padding-top: 32px" class="col-lg-10 col-lg-offset-1">
            <div>
                <header ng-controller="DropdownController as vm">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" ng-click="vm.isCollapsed = !vm.isCollapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">Brand</a>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <!-- /.navbar-collapse -->
                        </div>
                        <!-- /.container-fluid -->
                    </nav>
                </header>
            </div>
        </div>

        <div class="container">
            <div class="jumbotron">
                <h1>Daily Update</h1>
                <p>This is a daily update of Project</p>
            </div>

        </div>

        <div ng-controller="Papers">
<%--            <div class="panel panel-primary">...</div>--%>
          <div ng-repeat="x in papers_template">
              <div class="panel panel-primary">
                <div class="panel-heading">{{x.Title}}</div>
                <div class="panel-body">
                    <div class="row"><div class="col-md-10 col-md-offset-1">{{x.Authors}}</div></div>
                    <div class="row">{{x.Contents}}</div>
                </div>
                <div class="panel-footer">{{x.Link}}</div>
              </div>
          </div>

        </div>

    </form>
</body>
</html>
