<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <!-- Tablesaw css -->
        <link href="/erp/resources/assets/libs/tablesaw/tablesaw.css" rel="stylesheet" type="text/css" />
    </head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            
            <%@ include file="sidebar.jsp" %>

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    
                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Codefox</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Tables</a></li>
                                            <li class="breadcrumb-item active">Tablesaw</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Tablesaw</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Stack Table</h4>
                                        <p class="sub-header">
                                            The Stack Table stacks the table headers to a two column layout with headers on the left. Resize your viewport to across the 40em (640px) breakpoint to see the change.
                                        </p>

                                        <table class="tablesaw table mb-0" data-tablesaw-mode="stack">
                                            <thead>
                                            <tr>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Avatar</td>
                                                <td>1</td>
                                                <td>2009</td>
                                                <td>83%</td>
                                                <td>$2.7B</td>
                                            </tr>
                                            <tr>
                                                <td>Titanic</td>
                                                <td>2</td>
                                                <td>1997</td>
                                                <td>88%</td>
                                                <td>$2.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Avengers</td>
                                                <td>3</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.5B</td>
                                            </tr>
                                            <tr>
                                                <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                <td>4</td>
                                                <td>2011</td>
                                                <td>96%</td>
                                                <td>$1.3B</td>
                                            </tr>
                                            <tr>
                                                <td>Frozen</td>
                                                <td>5</td>
                                                <td>2013</td>
                                                <td>89%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Iron Man 3</td>
                                                <td>6</td>
                                                <td>2013</td>
                                                <td>78%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Dark of the Moon</td>
                                                <td>7</td>
                                                <td>2011</td>
                                                <td>36%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Lord of the Rings: The Return of the King</td>
                                                <td>8</td>
                                                <td>2003</td>
                                                <td>95%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Skyfall</td>
                                                <td>9</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Age of Extinction</td>
                                                <td>10</td>
                                                <td>2014</td>
                                                <td>18%</td>
                                                <td>$1.0B</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                        <h4 class="header-title">Sortable Table</h4>
                                        <p class="sub-header">
                                            Default appearance (with optional sortable-switch)
                                        </p>

                                        <table class="tablesaw table mb-0" data-tablesaw-sortable data-tablesaw-sortable-switch>
                                            <thead>
                                            <tr>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Avatar</td>
                                                <td>1</td>
                                                <td>2009</td>
                                                <td>83%</td>
                                                <td>$2.7B</td>
                                            </tr>
                                            <tr>
                                                <td>Titanic</td>
                                                <td>2</td>
                                                <td>1997</td>
                                                <td>88%</td>
                                                <td>$2.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Avengers</td>
                                                <td>3</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.5B</td>
                                            </tr>
                                            <tr>
                                                <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                <td>4</td>
                                                <td>2011</td>
                                                <td>96%</td>
                                                <td>$1.3B</td>
                                            </tr>
                                            <tr>
                                                <td>Frozen</td>
                                                <td>5</td>
                                                <td>2013</td>
                                                <td>89%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Iron Man 3</td>
                                                <td>6</td>
                                                <td>2013</td>
                                                <td>78%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Dark of the Moon</td>
                                                <td>7</td>
                                                <td>2011</td>
                                                <td>36%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Lord of the Rings: The Return of the King</td>
                                                <td>8</td>
                                                <td>2003</td>
                                                <td>95%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Skyfall</td>
                                                <td>9</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Age of Extinction</td>
                                                <td>10</td>
                                                <td>2014</td>
                                                <td>18%</td>
                                                <td>$1.0B</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Swipe Table</h4>
                                        <p class="sub-header mb-1">
                                            Your awesome text goes here.
                                        </p>
    
                                        <table class="tablesaw table mb-0" data-tablesaw-mode="swipe">
                                            <thead>
                                            <tr>
                                                <th class="title" scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Avatar</td>
                                                <td>1</td>
                                                <td>2009</td>
                                                <td>83%</td>
                                                <td>$2.7B</td>
                                            </tr>
                                            <tr>
                                                <td>Titanic</td>
                                                <td>2</td>
                                                <td>1997</td>
                                                <td>88%</td>
                                                <td>$2.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Avengers</td>
                                                <td>3</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.5B</td>
                                            </tr>
                                            <tr>
                                                <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                <td>4</td>
                                                <td>2011</td>
                                                <td>96%</td>
                                                <td>$1.3B</td>
                                            </tr>
                                            <tr>
                                                <td>Frozen</td>
                                                <td>5</td>
                                                <td>2013</td>
                                                <td>89%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Iron Man 3</td>
                                                <td>6</td>
                                                <td>2013</td>
                                                <td>78%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Dark of the Moon</td>
                                                <td>7</td>
                                                <td>2011</td>
                                                <td>36%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Lord of the Rings: The Return of the King</td>
                                                <td>8</td>
                                                <td>2003</td>
                                                <td>95%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Skyfall</td>
                                                <td>9</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Age of Extinction</td>
                                                <td>10</td>
                                                <td>2014</td>
                                                <td>18%</td>
                                                <td>$1.0B</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div> <!-- end card -->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Swipe Table with Mini Map</h4>
                                        <p class="sub-header mb-1">
                                            Your awesome text goes here.
                                        </p>
    
                                        <table class="tablesaw table mb-0" data-tablesaw-mode="swipe" data-tablesaw-minimap>
                                            <thead>
                                            <tr>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Avatar</td>
                                                <td>1</td>
                                                <td>2009</td>
                                                <td>83%</td>
                                                <td>$2.7B</td>
                                            </tr>
                                            <tr>
                                                <td>Titanic</td>
                                                <td>2</td>
                                                <td>1997</td>
                                                <td>88%</td>
                                                <td>$2.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Avengers</td>
                                                <td>3</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.5B</td>
                                            </tr>
                                            <tr>
                                                <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                <td>4</td>
                                                <td>2011</td>
                                                <td>96%</td>
                                                <td>$1.3B</td>
                                            </tr>
                                            <tr>
                                                <td>Frozen</td>
                                                <td>5</td>
                                                <td>2013</td>
                                                <td>89%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Iron Man 3</td>
                                                <td>6</td>
                                                <td>2013</td>
                                                <td>78%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Dark of the Moon</td>
                                                <td>7</td>
                                                <td>2011</td>
                                                <td>36%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Lord of the Rings: The Return of the King</td>
                                                <td>8</td>
                                                <td>2003</td>
                                                <td>95%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Skyfall</td>
                                                <td>9</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Age of Extinction</td>
                                                <td>10</td>
                                                <td>2014</td>
                                                <td>18%</td>
                                                <td>$1.0B</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div> <!-- end card-->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">

                                    <div class="card-body">
                                        <h4 class="header-title">Column Toggle Table</h4>
                                        <p class="sub-header mb-1">
                                            The Column Toggle Table allows the user to select which columns they want to be visible.
                                        </p>

                                        <div class="table-responsive">
                                            <table class="tablesaw table mb-0" data-tablesaw-mode="columntoggle">
                                                <thead>
                                                <tr>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Avatar</td>
                                                    <td>1</td>
                                                    <td>2009</td>
                                                    <td>83%</td>
                                                    <td>$2.7B</td>
                                                </tr>
                                                <tr>
                                                    <td>Titanic</td>
                                                    <td>2</td>
                                                    <td>1997</td>
                                                    <td>88%</td>
                                                    <td>$2.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>The Avengers</td>
                                                    <td>3</td>
                                                    <td>2012</td>
                                                    <td>92%</td>
                                                    <td>$1.5B</td>
                                                </tr>
                                                <tr>
                                                    <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                    <td>4</td>
                                                    <td>2011</td>
                                                    <td>96%</td>
                                                    <td>$1.3B</td>
                                                </tr>
                                                <tr>
                                                    <td>Frozen</td>
                                                    <td>5</td>
                                                    <td>2013</td>
                                                    <td>89%</td>
                                                    <td>$1.2B</td>
                                                </tr>
                                                <tr>
                                                    <td>Iron Man 3</td>
                                                    <td>6</td>
                                                    <td>2013</td>
                                                    <td>78%</td>
                                                    <td>$1.2B</td>
                                                </tr>
                                                <tr>
                                                    <td>Transformers: Dark of the Moon</td>
                                                    <td>7</td>
                                                    <td>2011</td>
                                                    <td>36%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>The Lord of the Rings: The Return of the King</td>
                                                    <td>8</td>
                                                    <td>2003</td>
                                                    <td>95%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>Skyfall</td>
                                                    <td>9</td>
                                                    <td>2012</td>
                                                    <td>92%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>Transformers: Age of Extinction</td>
                                                    <td>10</td>
                                                    <td>2014</td>
                                                    <td>18%</td>
                                                    <td>$1.0B</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->
                                    </div>
                                </div> <!-- end card -->
                            </div> <!--end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Column Toggle Table with Mini Map</h4>
                                        <p class="sub-header mb-1">
                                            The Column Toggle Table allows the user to select which columns they want to be visible.
                                        </p>

                                        <div class="table-responsive">
                                            <table class="tablesaw table mb-0" data-tablesaw-mode="columntoggle" data-tablesaw-minimap>
                                                <thead>
                                                <tr>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                    <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Avatar</td>
                                                    <td>1</td>
                                                    <td>2009</td>
                                                    <td>83%</td>
                                                    <td>$2.7B</td>
                                                </tr>
                                                <tr>
                                                    <td>Titanic</td>
                                                    <td>2</td>
                                                    <td>1997</td>
                                                    <td>88%</td>
                                                    <td>$2.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>The Avengers</td>
                                                    <td>3</td>
                                                    <td>2012</td>
                                                    <td>92%</td>
                                                    <td>$1.5B</td>
                                                </tr>
                                                <tr>
                                                    <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                    <td>4</td>
                                                    <td>2011</td>
                                                    <td>96%</td>
                                                    <td>$1.3B</td>
                                                </tr>
                                                <tr>
                                                    <td>Frozen</td>
                                                    <td>5</td>
                                                    <td>2013</td>
                                                    <td>89%</td>
                                                    <td>$1.2B</td>
                                                </tr>
                                                <tr>
                                                    <td>Iron Man 3</td>
                                                    <td>6</td>
                                                    <td>2013</td>
                                                    <td>78%</td>
                                                    <td>$1.2B</td>
                                                </tr>
                                                <tr>
                                                    <td>Transformers: Dark of the Moon</td>
                                                    <td>7</td>
                                                    <td>2011</td>
                                                    <td>36%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>The Lord of the Rings: The Return of the King</td>
                                                    <td>8</td>
                                                    <td>2003</td>
                                                    <td>95%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>Skyfall</td>
                                                    <td>9</td>
                                                    <td>2012</td>
                                                    <td>92%</td>
                                                    <td>$1.1B</td>
                                                </tr>
                                                <tr>
                                                    <td>Transformers: Age of Extinction</td>
                                                    <td>10</td>
                                                    <td>2014</td>
                                                    <td>18%</td>
                                                    <td>$1.0B</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div> <!-- end .table-responsive -->
                                    </div>
                                </div> <!-- end card -->
                            </div> <!--end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Mode Switch Table</h4>
                                        <p class="sub-header">
                                            The mode switcher allows the user to select which tablesaw view to use.
                                        </p>

                                        <table class="tablesaw table mb-0" data-tablesaw-mode="swipe" data-tablesaw-mode-switch data-tablesaw-minimap>
                                            <thead>
                                            <tr>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Avatar</td>
                                                <td>1</td>
                                                <td>2009</td>
                                                <td>83%</td>
                                                <td>$2.7B</td>
                                            </tr>
                                            <tr>
                                                <td>Titanic</td>
                                                <td>2</td>
                                                <td>1997</td>
                                                <td>88%</td>
                                                <td>$2.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Avengers</td>
                                                <td>3</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.5B</td>
                                            </tr>
                                            <tr>
                                                <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                <td>4</td>
                                                <td>2011</td>
                                                <td>96%</td>
                                                <td>$1.3B</td>
                                            </tr>
                                            <tr>
                                                <td>Frozen</td>
                                                <td>5</td>
                                                <td>2013</td>
                                                <td>89%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Iron Man 3</td>
                                                <td>6</td>
                                                <td>2013</td>
                                                <td>78%</td>
                                                <td>$1.2B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Dark of the Moon</td>
                                                <td>7</td>
                                                <td>2011</td>
                                                <td>36%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>The Lord of the Rings: The Return of the King</td>
                                                <td>8</td>
                                                <td>2003</td>
                                                <td>95%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Skyfall</td>
                                                <td>9</td>
                                                <td>2012</td>
                                                <td>92%</td>
                                                <td>$1.1B</td>
                                            </tr>
                                            <tr>
                                                <td>Transformers: Age of Extinction</td>
                                                <td>10</td>
                                                <td>2014</td>
                                                <td>18%</td>
                                                <td>$1.0B</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div> <!-- end card -->
                            </div> <!-- end col-->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bare Table</h4>
                                        <p class="sub-header">
                                            Your awesome text goes here.
                                        </p>
    
                                        <div>
                                            <div class="table-responsive">
                                                <table class="tablesaw table mb-0" data-tablesaw-mode="swipe" data-tablesaw-sortable data-tablesaw-sortable-switch data-tablesaw-minimap data-tablesaw-mode-switch>
                                                    <thead>
                                                    <tr>
                                                        <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">Movie Title</th>
                                                        <th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">Rank</th>
                                                        <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">Year</th>
                                                        <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1">Rating</th>
                                                        <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <td>Avatar</td>
                                                        <td>1</td>
                                                        <td>2009</td>
                                                        <td>83%</td>
                                                        <td>$2.7B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Titanic</td>
                                                        <td>2</td>
                                                        <td>1997</td>
                                                        <td>88%</td>
                                                        <td>$2.1B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>The Avengers</td>
                                                        <td>3</td>
                                                        <td>2012</td>
                                                        <td>92%</td>
                                                        <td>$1.5B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Harry Potter and the Deathly Hallows—Part 2</td>
                                                        <td>4</td>
                                                        <td>2011</td>
                                                        <td>96%</td>
                                                        <td>$1.3B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Frozen</td>
                                                        <td>5</td>
                                                        <td>2013</td>
                                                        <td>89%</td>
                                                        <td>$1.2B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Iron Man 3</td>
                                                        <td>6</td>
                                                        <td>2013</td>
                                                        <td>78%</td>
                                                        <td>$1.2B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Transformers: Dark of the Moon</td>
                                                        <td>7</td>
                                                        <td>2011</td>
                                                        <td>36%</td>
                                                        <td>$1.1B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>The Lord of the Rings: The Return of the King</td>
                                                        <td>8</td>
                                                        <td>2003</td>
                                                        <td>95%</td>
                                                        <td>$1.1B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Skyfall</td>
                                                        <td>9</td>
                                                        <td>2012</td>
                                                        <td>92%</td>
                                                        <td>$1.1B</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Transformers: Age of Extinction</td>
                                                        <td>10</td>
                                                        <td>2014</td>
                                                        <td>18%</td>
                                                        <td>$1.0B</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div> <!-- end .table-responsive -->
                                        </div>
                                    </div>
                                </div> <!-- end card -->
                            </div> <!--end col-->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- end container-fluid -->

                </div> <!-- end content -->

                

                <!-- Footer Start -->
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                2016 - 2019 &copy; Codefox theme by <a href="">Coderthemes</a>
                            </div>
                            <div class="col-md-6">
                                <div class="text-md-right footer-links d-none d-sm-block">
                                    <a href="#">About Us</a>
                                    <a href="#">Help</a>
                                    <a href="#">Contact Us</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="mdi mdi-close"></i>
                </a>
                <h5 class="m-0 text-white">Settings</h5>
            </div>
            <div class="slimscroll-menu">
                <hr class="mt-0">
                <h5 class="pl-3">Basic Settings</h5>
                <hr class="mb-0" />


                <div class="p-3">
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                        <label class="custom-control-label" for="customCheck1">Notifications</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck2" checked>
                        <label class="custom-control-label" for="customCheck2">API Access</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck3">
                        <label class="custom-control-label" for="customCheck3">Auto Updates</label>
                    </div>
                    <div class="custom-control custom-checkbox mb-2">
                        <input type="checkbox" class="custom-control-input" id="customCheck4" checked>
                        <label class="custom-control-label" for="customCheck4">Online Status</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck5">
                        <label class="custom-control-label" for="customCheck5">Auto Payout</label>
                    </div>
                </div>

                <!-- Timeline -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Timeline</h5>
                <hr class="mb-0" />

                <div class="p-3">
                    <ul class="list-unstyled activity-widget">
                        <li class="activity-list">
                            <p class="mb-0"><small>08 July</small></p>
                            <p>Neque porro quisquam est</p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>09 July</small></p>
                            <p>Ut enim ad minima veniam quis velit esse </p>
                        </li>
                        <li class="activity-list">
                            <p class="mb-0"><small>10 July</small></p>
                            <p>Quis autem vel eum iure</p>
                        </li>
                    </ul>
                </div>

                <!-- Messages -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Messages <span class="float-right badge badge-pill badge-danger">24</span></h5>
                <hr class="mb-0" />
                <div class="p-3">
                    <div class="inbox-widget">
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-1.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Chadengle</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">13:40 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-2.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Tomaslau</a></p>
                            <p class="inbox-item-text">I've finished it! See you so...</p>
                            <p class="inbox-item-date">13:34 PM</p>
                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-3.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Stillnotdavid</a></p>
                            <p class="inbox-item-text">This theme is awesome!</p>
                            <p class="inbox-item-date">13:17 PM</p>
                        </div>

                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-4.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Kurafire</a></p>
                            <p class="inbox-item-text">Nice to meet you</p>
                            <p class="inbox-item-date">12:20 PM</p>

                        </div>
                        <div class="inbox-item">
                            <div class="inbox-item-img"><img src="assets/images/users/avatar-5.jpg" class="rounded-circle" alt=""></div>
                            <p class="inbox-item-author"><a href="javascript: void(0);">Shahedk</a></p>
                            <p class="inbox-item-text">Hey! there I'm available...</p>
                            <p class="inbox-item-date">10:15 AM</p>

                        </div>
                    </div> <!-- end inbox-widget -->
                </div> <!-- end .p-3-->

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

        <!-- Bootstrap select plugin -->
        <script src="/erp/resources/assets/libs/bootstrap-select/bootstrap-select.min.js"></script>

        <!-- Tablesaw js -->
        <script src="/erp/resources/assets/libs/tablesaw/tablesaw.js"></script>

        <!-- Init js -->
        <script src="/erp/resources/assets/js/pages/tablesaw.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>