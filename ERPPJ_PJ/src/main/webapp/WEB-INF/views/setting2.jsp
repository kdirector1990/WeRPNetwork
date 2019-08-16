<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<meta charset="utf-8" />
<title>Codefox - Responsive Bootstrap 4 Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<!-- Vendor js -->
        <script src="/erp/resources/assets/js/vendor.min.js"></script>

		<!-- App js -->
        <script src="/erp/resources/assets/js/app.min.js"></script>

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
        
		
		<!--C3 Chart-->
        <script src="/erp/resources/assets/libs/d3/d3.min.js"></script>
        <script src="/erp/resources/assets/libs/c3/c3.min.js"></script>
        
        <!-- Chart JS -->
        <script src="/erp/resources/assets/libs/chart-js/Chart.bundle.min.js"></script>
        
        <!--Chartist Chart-->
        <script src="/erp/resources/assets/libs/chartist/chartist.min.js"></script>
        <script src="/erp/resources/assets/libs/chartist/chartist-plugin-tooltip.min.js"></script>
		
		<!-- Calendar init -->
        <script src="/erp/resources/assets/js/pages/calendar.init.js"></script>
        
         <!-- Countdown js -->
        <script src="/erp/resources/assets/js/pages/coming-soon.init.js"></script>
        
         <!-- dashboard init -->
        <script src="/erp/resources/assets/js/pages/dashboard.init.js"></script>
        
        <!-- Datatable plugin js -->
        <script src="/erp/resources/assets/libs/datatables/jquery.dataTables.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.responsive.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/responsive.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.buttons.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.bootstrap4.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/buttons.html5.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/buttons.print.min.js"></script>

        <script src="/erp/resources/assets/libs/datatables/dataTables.keyTable.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedHeader.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.scroller.min.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.colVis.js"></script>
        <script src="/erp/resources/assets/libs/datatables/dataTables.fixedColumns.min.js"></script>

        <script src="/erp/resources/assets/libs/jszip/jszip.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/pdfmake.min.js"></script>
        <script src="/erp/resources/assets/libs/pdfmake/vfs_fonts.js"></script>

        <script src="/erp/resources/assets/js/pages/datatables.init.js"></script>
		
		<!-- flot chart -->
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.time.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.tooltip.min.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.resize.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.pie.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.selection.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.stack.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.orderBars.js"></script>
        <script src="/erp/resources/assets/libs/flot-charts/jquery.flot.crosshair.js"></script>
        
        <!-- form advanced init js -->
        <script src="/erp/resources/assets/js/pages/form-advanced.init.js"></script>
        
        <!--Form Wizard-->
        <script src="/erp/resources/assets/libs/jquery-steps/jquery.steps.min.js"></script>

        <script src="/erp/resources/assets/libs/jquery-validation/jquery.validate.min.js"></script>
        
        <!-- Google Charts js -->
        <script src="https://www.google.com/jsapi"></script>
        
        <!-- google maps api -->
        <script src="https://maps.google.com/maps/api/js?key=AIzaSyDsucrEdmswqYrw0f6ej3bf4M4suDeRgNA"></script>
        
        <!-- gmap js-->
        <script src="/erp/resources/assets/libs/gmaps/gmaps.min.js"></script>
        
        <!-- Init js -->
        <script src="/erp/resources/assets/js/pages/form-pickers.init.js"></script>
        <script src="/erp/resources/assets/js/pages/c3.init.js"></script>
        <script src="/erp/resources/assets/js/pages/chartist.init.js"></script>
        <script src="/erp/resources/assets/js/pages/chartjs.init.js"></script>
        <script src="/erp/resources/assets/js/pages/google-charts.init.js"></script>
        <script src="/erp/resources/assets/js/pages/flot.init.js"></script>
        <script src="/erp/resources/assets/js/pages/morris.init.js"></script>
        <script src="/erp/resources/assets/js/pages/sparkline.init.js"></script>
        <script src="/erp/resources/assets/js/pages/form-masks.init.js"></script>
        <script src="/erp/resources/assets/js/pages/form-quilljs.init.js"></script>
        <script src="/erp/resources/assets/js/pages/form-summernote.init.js"></script>
        <script src="/erp/resources/assets/js/pages/form-fileuploads.init.js"></script>
        <script src="/erp/resources/assets/js/pages/form-wizard.init.js"></script>
        <script src="/erp/resources/assets/js/pages/google-maps.init.js"></script>
        <script src="/erp/resources/assets/js/pages/mapael-maps.init.js"></script>
        <script src="/erp/resources/assets/js/pages/vector-maps.init.js"></script>
        <script src="/erp/resources/assets/js/pages/responsive-table.init.js"></script>
        <script src="/erp/resources/assets/js/pages/tablesaw.init.js"></script>
        
        <!-- Ion Range Slider-->
        <script src="/erp/resources/assets/libs/ion-rangeslider/ion.rangeSlider.min.js"></script>
		
		 <!-- jquery knob -->
        <script src="/erp/resources/assets/libs/jquery-knob/jquery.knob.min.js"></script>
        
        <!-- KNOB JS -->
        <script src="/erp/resources/assets/libs/jquery-knob/jquery.knob.min.js"></script>
        
        <!--Morris Chart-->
        <script src="/erp/resources/assets/libs/morris-js/morris.min.js"></script>
        <script src="/erp/resources/assets/libs/raphael/raphael.min.js"></script>
        
        <!-- Modal-Effect -->
        <script src="/erp/resources/assets/libs/custombox/custombox.min.js"></script>
        
		<!-- Nestable Plugins js-->
        <script src="/erp/resources/assets/libs/nestable2/jquery.nestable.min.js"></script>
       
        <!-- Nestable init-->
        <script src="/erp/resources/assets/js/pages/nestable.init.js"></script>
        
		<!-- plugins -->
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		
		<!-- plugin js -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-ui/jquery-ui.min.js"></script>
        <script src="/erp/resources/assets/libs/fullcalendar/fullcalendar.min.js"></script>
		<script src="/erp/resources/assets/libs/jquery-countdown/jquery.countdown.min.js"></script>
		
		<!-- Plugins js -->
        <script src="/erp/resources/assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
        <script src="/erp/resources/assets/libs/autonumeric/autoNumeric-min.js"></script>
        <script src="/erp/resources/assets/libs/katex/katex.min.js"></script>
        <script src="/erp/resources/assets/libs/quill/quill.min.js"></script>
        <script src="/erp/resources/assets/libs/dropify/dropify.min.js"></script>
        <script src="/erp/resources/assets/libs/parsleyjs/parsley.min.js"></script>
        <script src="/erp/resources/assets/libs/raphael/raphael.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-mapael/jquery.mapael.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-mapael/world_countries.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-mapael/usa_states.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-world-mill-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-us-merc-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-in-mill-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-au-mill-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-us-il-chicago-mill-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-uk-mill-en.js"></script>
        <script src="/erp/resources/assets/libs/jquery-vectormap/jquery-jvectormap-ca-lcc-en.js"></script>
		
		<!-- Range slider init js-->
        <script src="/erp/resources/assets/js/pages/range-sliders.init.js"></script>
        
        <!-- Raty fa plugin -->
        <script src="/erp/resources/assets/libs/raty-fa/jquery.raty-fa.js"></script>

        <!-- Raty fa init -->
        <script src="/erp/resources/assets/js/pages/rating.init.js"></script>
        
        <!-- Responsive Table js -->
        <script src="/erp/resources/assets/libs/rwd-table/rwd-table.min.js"></script>
        
        <!-- Summernote js -->
        <script src="/erp/resources/assets/libs/moment/moment.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="/erp/resources/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="/erp/resources/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="/erp/resources/assets/libs/summernote/summernote-bs4.min.js"></script>
		
		<!-- Sweet Alerts js -->
        <script src="/erp/resources/assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- Sweet alert init js-->
        <script src="/erp/resources/assets/js/pages/sweet-alerts.init.js"></script>
        
        <!-- Sparkline charts -->
        <script src="/erp/resources/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
        
        <!-- Table Editable plugin-->
        <script src="/erp/resources/assets/libs/jquery-tabledit/jquery.tabledit.min.js"></script>

        <!-- Table editable init-->
        <script src="/erp/resources/assets/js/pages/tabledit.init.js"></script>
        
        <!-- Tablesaw js -->
        <script src="/erp/resources/assets/libs/tablesaw/tablesaw.js"></script>
        
        <!-- Toast-->
        <script src="/erp/resources/assets/libs/jquery-toast/jquery.toast.min.js"></script>

        <!-- toastr init js-->
        <script src="/erp/resources/assets/js/pages/toastr.init.js"></script>
        
        <!-- Tooltipster js -->
        <script src="/erp/resources/assets/libs/tooltipster/tooltipster.bundle.min.js"></script>
        <script src="/erp/resources/assets/js/pages/tooltipster.init.js"></script>

        <!-- Validation init js-->
        <script src="/erp/resources/assets/js/pages/form-validation.init.js"></script>
        
        
        
        
        
        
        
        
        
        
        
        
       
        