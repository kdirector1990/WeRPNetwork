<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="setting.jsp" %>
        <link href="/erp/resources/assets/libs/select2/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" />
        <link href="/erp/resources/assets/libs/switchery/switchery.min.css" rel="stylesheet" type="text/css" />
        <link href="/erp/resources/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />

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
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Forms</a></li>
                                            <li class="breadcrumb-item active">Form Advanced</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">Form Advanced</h4>
                                </div>
                            </div>
                        </div>     
                        <!-- end page title --> 

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Select2</h4>
    
                                        <p class="mb-1">Single Select</p>
                                        <p class="text-muted">
                                            Select2 can take a regular select box like this...
                                        </p>
    
                                        <select class="form-control select2">
                                            <option>Select</option>
                                            <optgroup label="Alaskan/Hawaiian Time Zone">
                                                <option value="AK">Alaska</option>
                                                <option value="HI">Hawaii</option>
                                            </optgroup>
                                            <optgroup label="Pacific Time Zone">
                                                <option value="CA">California</option>
                                                <option value="NV">Nevada</option>
                                                <option value="OR">Oregon</option>
                                                <option value="WA">Washington</option>
                                            </optgroup>
                                            <optgroup label="Mountain Time Zone">
                                                <option value="AZ">Arizona</option>
                                                <option value="CO">Colorado</option>
                                                <option value="ID">Idaho</option>
                                                <option value="MT">Montana</option>
                                                <option value="NE">Nebraska</option>
                                                <option value="NM">New Mexico</option>
                                                <option value="ND">North Dakota</option>
                                                <option value="UT">Utah</option>
                                                <option value="WY">Wyoming</option>
                                            </optgroup>
                                            <optgroup label="Central Time Zone">
                                                <option value="AL">Alabama</option>
                                                <option value="AR">Arkansas</option>
                                                <option value="IL">Illinois</option>
                                                <option value="IA">Iowa</option>
                                                <option value="KS">Kansas</option>
                                                <option value="KY">Kentucky</option>
                                                <option value="LA">Louisiana</option>
                                                <option value="MN">Minnesota</option>
                                                <option value="MS">Mississippi</option>
                                                <option value="MO">Missouri</option>
                                                <option value="OK">Oklahoma</option>
                                                <option value="SD">South Dakota</option>
                                                <option value="TX">Texas</option>
                                                <option value="TN">Tennessee</option>
                                                <option value="WI">Wisconsin</option>
                                            </optgroup>
                                            <optgroup label="Eastern Time Zone">
                                                <option value="CT">Connecticut</option>
                                                <option value="DE">Delaware</option>
                                                <option value="FL">Florida</option>
                                                <option value="GA">Georgia</option>
                                                <option value="IN">Indiana</option>
                                                <option value="ME">Maine</option>
                                                <option value="MD">Maryland</option>
                                                <option value="MA">Massachusetts</option>
                                                <option value="MI">Michigan</option>
                                                <option value="NH">New Hampshire</option>
                                                <option value="NJ">New Jersey</option>
                                                <option value="NY">New York</option>
                                                <option value="NC">North Carolina</option>
                                                <option value="OH">Ohio</option>
                                                <option value="PA">Pennsylvania</option>
                                                <option value="RI">Rhode Island</option>
                                                <option value="SC">South Carolina</option>
                                                <option value="VT">Vermont</option>
                                                <option value="VA">Virginia</option>
                                                <option value="WV">West Virginia</option>
                                            </optgroup>
                                        </select>
    
                                        <p class="mt-3 mb-1">Multiple Select</p>
                                        <p class="text-muted">
                                            Select2 can take a regular select box like this...
                                        </p>
    
                                        <select class="select2 form-control select2-multiple" multiple="multiple" data-placeholder="Choose ...">
                                            <optgroup label="Alaskan/Hawaiian Time Zone">
                                                <option value="AK">Alaska</option>
                                                <option value="HI">Hawaii</option>
                                            </optgroup>
                                            <optgroup label="Pacific Time Zone">
                                                <option value="CA">California</option>
                                                <option value="NV">Nevada</option>
                                                <option value="OR">Oregon</option>
                                                <option value="WA">Washington</option>
                                            </optgroup>
                                            <optgroup label="Mountain Time Zone">
                                                <option value="AZ">Arizona</option>
                                                <option value="CO">Colorado</option>
                                                <option value="ID">Idaho</option>
                                                <option value="MT">Montana</option>
                                                <option value="NE">Nebraska</option>
                                                <option value="NM">New Mexico</option>
                                                <option value="ND">North Dakota</option>
                                                <option value="UT">Utah</option>
                                                <option value="WY">Wyoming</option>
                                            </optgroup>
                                            <optgroup label="Central Time Zone">
                                                <option value="AL">Alabama</option>
                                                <option value="AR">Arkansas</option>
                                                <option value="IL">Illinois</option>
                                                <option value="IA">Iowa</option>
                                                <option value="KS">Kansas</option>
                                                <option value="KY">Kentucky</option>
                                                <option value="LA">Louisiana</option>
                                                <option value="MN">Minnesota</option>
                                                <option value="MS">Mississippi</option>
                                                <option value="MO">Missouri</option>
                                                <option value="OK">Oklahoma</option>
                                                <option value="SD">South Dakota</option>
                                                <option value="TX">Texas</option>
                                                <option value="TN">Tennessee</option>
                                                <option value="WI">Wisconsin</option>
                                            </optgroup>
                                            <optgroup label="Eastern Time Zone">
                                                <option value="CT">Connecticut</option>
                                                <option value="DE">Delaware</option>
                                                <option value="FL">Florida</option>
                                                <option value="GA">Georgia</option>
                                                <option value="IN">Indiana</option>
                                                <option value="ME">Maine</option>
                                                <option value="MD">Maryland</option>
                                                <option value="MA">Massachusetts</option>
                                                <option value="MI">Michigan</option>
                                                <option value="NH">New Hampshire</option>
                                                <option value="NJ">New Jersey</option>
                                                <option value="NY">New York</option>
                                                <option value="NC">North Carolina</option>
                                                <option value="OH">Ohio</option>
                                                <option value="PA">Pennsylvania</option>
                                                <option value="RI">Rhode Island</option>
                                                <option value="SC">South Carolina</option>
                                                <option value="VT">Vermont</option>
                                                <option value="VA">Virginia</option>
                                                <option value="WV">West Virginia</option>
                                            </optgroup>
                                        </select>
                                    </div>
            
                                </div>
                            </div>


                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <form>
                                            <h4 class="header-title mb-3">Auto Complete</h4>
        
                                            <div class="form-group mb-3">
                                                <p class="mb-1">Ajax Lookup</p>
                                                <p class="text-muted">
                                                    Your awesome text goes here
                                                </p>
        
                                                <input type="text" name="country" id="autocomplete-ajax"
                                                        class="form-control">
                                                <input type="text" name="country" id="autocomplete-ajax-x"
                                                        disabled="disabled" class="form-control"
                                                        style="color: #CCC; position: absolute; background: transparent; z-index: 1;display: none;"/>
                                            </div>
                                            <div class="form-group mb-0">
                                                <p class="mb-1">Local Lookup and Grouping</p>
                                                <p class="text-muted">
                                                    Your awesome text goes here
                                                </p>
                                                <input type="text" name="country" id="autocomplete"
                                                        class="form-control"/>
                                            </div>
                                        </form>
                
                                    </div>
                                </div>
                            </div> <!-- end col -->

                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Tags Input</h4>
    
                                        <p class="mb-1">Input Tags</p>
                                        <p class="text-muted">
                                            Just add <code>data-role="tagsinput"</code> to your input field to automatically change it to a tags input field.
                                        </p>
                                        <div class="tags-default">
                                            <input type="text" value="Amsterdam,Washington,Sydney" data-role="tagsinput" placeholder="add tags"/>
                                        </div>
    
                                        <p class="mt-3 mb-1">True multi value</p>
                                        <p class="text-muted">
                                                Use a <code>&lt;select multiple /&gt;</code> as your input element for a tags input, to gain true multivalue support.
                                                Instead of a comma separated string, the values will be set in an array. Existing <code>&lt;option /&gt;</code>
                                                elements will automatically be set as tags. This makes it also possible to create tags containing a comma.
                                        </p>
                                        <div>
                                            <select multiple data-role="tagsinput">
                                                <option value="Amsterdam">Amsterdam</option>
                                                <option value="Washington">Washington</option>
                                                <option value="Sydney">Sydney</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Switchery</h4>
    
                                        <p class="mb-1">Basic</p>
                                        <p class="text-muted">
                                            Add an attribute <code>
                                                data-plugin="switchery" data-color="@colors"</code>
                                            to your input element and it will be converted into switch.
                                        </p>
    
                                        <div class="switchery-demo">
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#039cfd"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#f1b53d"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#1bb99a"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#ff5d48"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#3db9dc"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#2b3d51"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#9261c6"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#ff7aa3"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#98a6ad"/>
                                        </div>
    
    
                                        <p class="mt-3 mb-1">Sizes & Secondary color</p>
                                        <p class="text-muted">
                                            Add an attribute <code>
                                                    data-size="small",data-size="large"</code>
                                            to your input element and it will be converted into switch.
                                            Add an attribute <code>
                                                data-color="@color" data-secondary-color="@color"</code>
                                            to your input element and it will be converted into switch.
                                        </p>
    
                                        <div class="switchery-demo">
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#64b0f2" data-size="small"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#ff7aa3"/>
                                            <input type="checkbox" checked data-plugin="switchery" data-color="#2b3d51" data-size="large"/>
                                            <input type="checkbox" data-plugin="switchery" data-color="#1bb99a" data-secondary-color="#ff5d48" />
                                            <input type="checkbox" data-plugin="switchery" data-color="#9261c6"  data-secondary-color="#ff7aa3" checked />
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div><!-- end row -->


                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title mb-3">Bootstrap MaxLength</h4>
    
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="">
                                                    <p class="mb-1">Default usage</p>
                                                    <p class="text-muted">
                                                        The badge will show up by default when the remaining chars are 10 or less:
                                                    </p>
                                                    <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" />
    
                                                    <div class="mt-3">
                                                        <p class="mb-1">Threshold value</p>
                                                        <p class="text-muted">
                                                            Do you want the badge to show up when there are 20 chars or less? Use the <code>threshold</code> option:
                                                        </p>
                                                        <input type="text" maxlength="25" name="thresholdconfig" class="form-control" id="thresholdconfig" />
                                                    </div>
    
                                                    <div class="mt-3">
                                                        <p class="mb-1">All the options</p>
                                                        <p class="text-muted">
                                                            Please note: if the <code>alwaysShow</code> option is enabled, the <code>threshold</code> option is ignored.
                                                        </p>
                                                        <input type="text" class="form-control" maxlength="25" name="alloptions" id="alloptions" />
                                                    </div>
    
                                                </div>
                                            </div>
    
                                            <div class="col-lg-6">
                                                <div class="">
    
                                                    <p class="mb-1">Position</p>
                                                    <p class="text-muted">
                                                        All you need to do is specify the <code>placement</code> option, with one of those strings. If none
                                                        is specified, the positioning will be defauted to 'bottom'.
                                                    </p>
                                                    <input type="text" class="form-control" maxlength="25" name="placement" id="placement" />
    
                                                    <div class="mt-3">
                                                        <p class="mb-1">Textareas</p>
                                                        <p class="text-muted">
                                                            Bootstrap maxlength supports textarea as well as inputs. Even on old IE.
                                                        </p>
                                                        <textarea id="textarea" class="form-control" maxlength="225" rows="3" placeholder="This textarea has a limit of 225 chars."></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end row -->
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap TouchSpin</h4>
                                        <p class="sub-header">
                                            You can limit the number of elements you are allowed to select via the
                                            <code>
                                                data-max-option
                                            </code>
                                            attribute. It also works for option groups.
                                        </p>
    
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="">
                                                    <form>
                                                        <div class="form-group mb-3">
                                                            <label>Using data attributes</label>
                                                            <input id="demo0" type="text" value="55" name="demo0" data-bts-min="0" data-bts-max="100" data-bts-init-val="" data-bts-step="1" data-bts-decimal="0" data-bts-step-interval="100" data-bts-force-step-divisibility="round" data-bts-step-interval-delay="500" data-bts-prefix="" data-bts-postfix="" data-bts-prefix-extra-class="" data-bts-postfix-extra-class="" data-bts-booster="true" data-bts-boostat="10" data-bts-max-boosted-step="false" data-bts-mousewheel="true" data-bts-button-down-class="btn btn-primary" data-bts-button-up-class="btn btn-primary"/>
                                                        </div>
                                                        <div class="form-group mb-3">
                                                            <label>Example with postfix (large)</label>
                                                            <input id="demo1" type="text" value="55" name="demo1">
                                                        </div>
                                                        <div class="form-group mb-0">
                                                            <label>With prefix </label>
                                                            <input id="demo2" type="text" value="0" name="demo2" class=" form-control">
                                                        </div>
    
                                                    </form>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-6">
                                                <div class="mt-4 mt-lg-0">
                                                    <form>
                                                        <div class="form-group mb-3">
                                                            <label>Init with empty value:</label>
                                                            <input id="demo3" type="text" value="" name="demo3">
                                                        </div>
                                                        <div class="form-group mb-3">
                                                            <label>Value attribute is not set (applying settings.initval)</label>
                                                            <input id="demo3_21" type="text" value="" name="demo3_21">
                                                        </div>
                                                        <div class="form-group mb-0">
                                                            <label>Value is set explicitly to 33 (skipping settings.initval) </label>
                                                            <input id="demo3_22" type="text" value="33" name="demo3_22">
                                                        </div>
                                                        
                                                    </form>
                                                </div>
                                            </div>
                                        </div> <!-- end row -->
                                    </div>
                                </div>

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->


                        <!-- Bootstrap-select -->
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap-select</h4>
    
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="demo-box">
                                                    <p class="text-muted mb-3">
                                                        Create your
                                                        <code>
                                                            &lt;select&gt;
                                                        </code>
                                                        with the
                                                        <code>
                                                            .selectpicker
                                                        </code>
                                                        class.
                                                    </p>
                                                    <select class="selectpicker" data-style="btn-primary">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        It also works with option groups:
                                                    </p>
                                                    <select class="selectpicker" data-style="btn-light">
                                                        <optgroup label="Picnic">
                                                            <option>Mustard</option>
                                                            <option>Ketchup</option>
                                                            <option>Relish</option>
                                                        </optgroup>
                                                        <optgroup label="Camping">
                                                            <option>Tent</option>
                                                            <option>Flashlight</option>
                                                            <option>Toilet Paper</option>
                                                        </optgroup>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        You can also show the tick icon on single <code>select</code> with the <code>show-tick</code> class:
                                                    </p>
    
                                                    <select class="selectpicker show-tick" data-style="btn-success">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        And with multiple selects:
                                                    </p>
                                                    <select class="selectpicker" multiple data-style="btn-light">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        You can limit the number of elements you are allowed to select via the
                                                        <code>
                                                            data-max-option
                                                        </code>
                                                        attribute. It also works for option groups.
                                                    </p>
    
                                                    <select class="selectpicker" multiple data-max-options="2" data-style="btn-pink">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="demo-box">
                                                    <p class="sub-header">
                                                        You can limit the number of elements you are allowed to select via the
                                                        <code>
                                                            data-max-option
                                                        </code>
                                                        attribute. It also works for option groups.
                                                    </p>
    
                                                    <select class="selectpicker" data-style="btn-light btn-rounded">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br />
                                                    <br />
                                                    <select class="selectpicker" data-style="btn-primary btn-bordered">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br />
                                                    <br />
                                                    <select class="selectpicker" data-style="btn-info">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br />
                                                    <br />
                                                    <select class="selectpicker" data-style="btn-warning">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br />
                                                    <br />
                                                    <select class="selectpicker" data-style="btn-danger btn-bordered">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br />
                                                    <br />
                                                    <select class="selectpicker" data-style="btn-purple">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        Add an icon to an option or optgroup with the <code>data-icon</code> attribute:
                                                    </p>
                                                    <select class="selectpicker mb-0" data-style="btn-light">
                                                        <option data-icon="fas fa-glass-martini-alt text-primary mr-1">Mustard</option>
                                                        <option data-icon="far fa-heart mr-1">Ketchup</option>
                                                        <option data-icon="fas fa-film mr-1">Relish</option>
                                                        <option data-icon="fas fa-home mr-1">Mayonnaise</option>
                                                        <option data-icon="fa fa-print mr-1">Barbecue Sauce</option>
                                                    </select>
    
                                                </div>
                                            </div>
    
                                            <div class="col-lg-4">
                                                <div class="demo-box">
                                                    <p class="sub-header">
                                                        You can add a search input by passing <code>data-live-search="true"</code> attribute:
                                                    </p>
    
                                                    <select class="selectpicker" data-live-search="true"  data-style="btn-primary">
                                                        <option>Hot Dog, Fries and a Soda</option>
                                                        <option>Burger, Shake and a Smile</option>
                                                        <option>Sugar, Spice and all things nice</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        You can also use the <code>
                                                            title</code> attribute as an alternative to display when the option is
                                                        selected:
                                                    </p>
    
                                                    <select class="selectpicker" data-live-search="true" data-style="btn-light">
                                                        <option title="Combo 1">Hot Dog, Fries and a Soda</option>
                                                        <option title="Combo 2">Burger, Shake and a Smile</option>
                                                        <option title="Combo 3">Sugar, Spice and all things nice</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        Using the <code>data-selected-text-format</code> attribute on a <code>multiple select</code>
                                                        you can specify how the selection is displayed.
                                                    </p>
    
                                                    <select class="selectpicker" multiple data-selected-text-format="count" data-style="btn-light">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                    <br/>
                                                    <br/>
                                                    <select class="selectpicker" multiple data-selected-text-format="count > 3" data-style="btn-light">
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                        <option>Onions</option>
                                                    </select>
    
                                                    <p class="text-muted mt-3">
                                                        Add the <code>disabled</code> attribute to the select to apply the <code>disabled</code> class.
                                                    </p>
                                                    <select class="selectpicker" data-style="btn-info" disabled>
                                                        <option>Mustard</option>
                                                        <option>Ketchup</option>
                                                        <option>Relish</option>
                                                    </select>
    
                                                </div>
                                            </div>
                                        </div> <!-- end row -->
                                    </div>
                                </div>

                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="header-title">Bootstrap FileStyle</h4>
                                        <p class="sub-header">
                                            You can limit the number of elements you are allowed to select via the
                                            <code>
                                                data-max-option
                                            </code>
                                            attribute. It also works for option groups.
                                        </p>
    
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="demo-box">
                                                    <form>
                                                        <div class="form-group">
                                                            <p>Default file input</p>
                                                            <input type="file" class="filestyle">
                                                        </div>
                                                        <div class="form-group">
                                                            <p>File style without input</p>
                                                            <input type="file" class="filestyle" data-input="false">
                                                        </div>
                                                        <div class="form-group">
                                                            <p>File style with custom icon</p>
                                                            <input type="file" class="filestyle" id="filestyleicon">
                                                        </div>
                                                        <div class="form-group">
                                                            <p>File style with custom text</p>
                                                            <input type="file" class="filestyle" data-text="Select file">
                                                        </div>
                                                        <div class="form-group mb-0">
                                                            <p>File style with button style</p>
                                                            <input type="file" class="filestyle" data-btnClass="btn-primary">
                                                        </div>
    
                                                    </form>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-6">
                                                <div class="demo-box mt-4 mt-lg-0">
                                                    <form>
                                                        <div class="form-group">
                                                            <p>Small file style</p>
                                                            <input type="file" class="filestyle" data-size="sm">
                                                        </div>
                                                        <div class="form-group">
                                                            <p>Disable file style</p>
                                                            <input type="file" class="filestyle" data-disabled="true">
                                                        </div>
                                                        <div class="form-group">
                                                            <p>File style before button</p>
                                                            <input type="file" class="filestyle" data-buttonBefore="true">
                                                        </div>

                                                        <div class="form-group">
                                                            <p>File style badge in button</p>
                                                            <input type="file" class="filestyle" data-badge="true">
                                                        </div>
    
                                                        <div class="form-group mb-0">
                                                            <p>File style placeholder</p>
                                                            <input type="file" class="filestyle" data-placeholder="No file">
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
    
                                        </div> <!-- end row -->
                                    </div>
                                </div>
                            </div> <!-- end col -->
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

        <script src="/erp/resources/assets/libs/select2/select2.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-mockjax/jquery.mockjax.min.js"></script>
        <script src="/erp/resources/assets/libs/autocomplete/jquery.autocomplete.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
        <script src="/erp/resources/assets/libs/switchery/switchery.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js"></script>

        <!-- form advanced init js -->
        <script src="/erp/resources/assets/js/pages/form-advanced.init.js"></script>

        <!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>
        
    </body>
</html>