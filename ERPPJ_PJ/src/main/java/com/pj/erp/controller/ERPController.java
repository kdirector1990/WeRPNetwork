package com.pj.erp.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ERPController {
	
	private static final Logger logger = LoggerFactory.getLogger(ERPController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate ); 
		
		return "index";
	}
	@RequestMapping("ST_index")
	public String index(Locale locale, Model model) {
		logger.info("log => index");
		
		return "index";
	}
	@RequestMapping("index")
	public String index2(Locale locale, Model model) {
		logger.info("log => index2");
		
		return "index";
	}
	
	@RequestMapping("admin-grid")
	public String admingrid(Locale locale, Model model) {
		logger.info("log => admin-grid");
		
		return "admin-grid";
	}
	
	@RequestMapping("admin-nestable")
	public String adminnestable(Locale locale, Model model) {
		logger.info("log => admin-nestable");
		
		return "admin-nestable";
	}
	
	@RequestMapping("admin-rangeslider")
	public String adminrangeslider(Locale locale, Model model) {
		logger.info("log => admin-rangeslider");
		
		return "admin-rangeslider";
	}
	
	@RequestMapping("admin-ratings")
	public String adminratings(Locale locale, Model model) {
		logger.info("log => admin-ratings");
		
		return "admin-ratings";
	}
	
	@RequestMapping("admin-sweet-alert")
	public String adminsweetalert(Locale locale, Model model) {
		logger.info("log => admin-sweet-alert");
		
		return "admin-sweet-alert";
	}
	
	@RequestMapping("admin-widqets")
	public String adminwidqets(Locale locale, Model model) {
		logger.info("log => admin-widqets");
		
		return "admin-widqets";
	}
	
	@RequestMapping("calender")
	public String calender(Locale locale, Model model) {
		logger.info("log => calender");
		
		return "calender";
	}
	
	@RequestMapping("charts-c3")
	public String chartsc3(Locale locale, Model model) {
		logger.info("log => charts-c3");
		
		return "charts-c3";
	}
	
	@RequestMapping("charts-chartist")
	public String chartschartist(Locale locale, Model model) {
		logger.info("log => charts-chartist");
		
		return "charts-chartist";
	}
	
	@RequestMapping("charts-chartjs")
	public String chartschartjs(Locale locale, Model model) {
		logger.info("log => charts-chartjs");
		
		return "charts-chartjs";
	}
	
	@RequestMapping("charts-flot")
	public String chartsflot(Locale locale, Model model) {
		logger.info("log => charts-flot");
		
		return "charts-flot";
	}
	
	@RequestMapping("charts-knob")
	public String chartsknob(Locale locale, Model model) {
		logger.info("log => charts-knob");
		
		return "charts-knob";
	}
	
	@RequestMapping("charts-morris")
	public String chartsmorris(Locale locale, Model model) {
		logger.info("log => charts-morris");
		
		return "charts-morris";
	}
	
	@RequestMapping("charts-qooqle")
	public String chartsqooqle(Locale locale, Model model) {
		logger.info("log => charts-qooqle");
		
		return "charts-qooqle";
	}
	
	@RequestMapping("charts-sparkline")
	public String chartssparkline(Locale locale, Model model) {
		logger.info("log => charts-sparkline");
		
		return "charts-sparkline";
	}
	
	@RequestMapping("extras-about")
	public String extrasabout(Locale locale, Model model) {
		logger.info("log => extras-about");
		
		return "extras-about";
	}
	
	@RequestMapping("extras-coming-soon")
	public String extrascomingsoon(Locale locale, Model model) {
		logger.info("log => extras-coming-soon");
		
		return "extras-coming-soon";
	}
	
	@RequestMapping("extras-contact")
	public String extrascontact(Locale locale, Model model) {
		logger.info("log => extras-contact");
		
		return "extras-contact";
	}
	
	@RequestMapping("extras-faq")
	public String extrasfaq(Locale locale, Model model) {
		logger.info("log => extras-faq");
		
		return "extras-faq";
	}
	
	
	@RequestMapping("extras-invoice")
	public String extrasinvoice(Locale locale, Model model) {
		logger.info("log => extras-invoice");
		
		return "extras-invoice";
	}
	
	@RequestMapping("extras-maintenance")
	public String extrasmaintenance(Locale locale, Model model) {
		logger.info("log => extras-maintenance");
		
		return "extras-maintenance";
	}
	@RequestMapping("extras-members")
	public String extrasmembers(Locale locale, Model model) {
		logger.info("log => extras-members");
		
		return "extras-members";
	}
	
	@RequestMapping("extras-pricing")
	public String extraspricing(Locale locale, Model model) {
		logger.info("log => extras-pricing");
		
		return "extras-pricing";
	}
	
	@RequestMapping("extras-timeline")
	public String extrastimeline(Locale locale, Model model) {
		logger.info("log => extras-timeline");
		
		return "extras-timeline";
	}
	
	@RequestMapping("form-advanced")
	public String formadvanced(Locale locale, Model model) {
		logger.info("log => form-advanced");
		
		return "form-advanced";
	}
	
	@RequestMapping("form-elements")
	public String formelements(Locale locale, Model model) {
		logger.info("log => form-elements");
		
		return "form-elements";
	}
	
	@RequestMapping("form-mask")
	public String formmask(Locale locale, Model model) {
		logger.info("log => form-mask");
		
		return "form-mask";
	}
	
	@RequestMapping("form-pickers")
	public String formpickers(Locale locale, Model model) {
		logger.info("log => form-pickers");
		
		return "form-pickers";
	}
	
	@RequestMapping("form-quilljs")
	public String formquilljs(Locale locale, Model model) {
		logger.info("log => form-quilljs");
		
		return "form-quilljs";
	}
	
	@RequestMapping("form-summernote")
	public String formsummernote(Locale locale, Model model) {
		logger.info("log => form-summernote");
		
		return "form-summernote";
	}
	
	@RequestMapping("form-uploads")
	public String formuploads(Locale locale, Model model) {
		logger.info("log => form-uploads");
		
		return "form-uploads";
	}
	@RequestMapping("form-validation")
	public String formvalidation(Locale locale, Model model) {
		logger.info("log => form-validation");
		
		return "form-validation";
	}
	
	@RequestMapping("form-wizard")
	public String formwizard(Locale locale, Model model) {
		logger.info("log => form-wizard");
		
		return "form-wizard";
	}
	
	@RequestMapping("icons-colored")
	public String iconscolored(Locale locale, Model model) {
		logger.info("log => icons-colored");
		
		return "icons-colored";
	}
	
	@RequestMapping("icons-dripicons")
	public String iconsdripicons(Locale locale, Model model) {
		logger.info("log => icons-dripicons");
		
		return "icons-dripicons";
	}
	
	@RequestMapping("icons-feather")
	public String iconsfeather(Locale locale, Model model) {
		logger.info("log => icons-feather");
		
		return "icons-feather";
	}
	
	@RequestMapping("icons-fontawesome")
	public String iconsfontawesome(Locale locale, Model model) {
		logger.info("log => icons-fontawesome");
		
		return "icons-fontawesome";
	}
	
	@RequestMapping("icons-materialdesign")
	public String iconsmaterialdesign(Locale locale, Model model) {
		logger.info("log => icons-materialdesign");
		
		return "icons-materialdesign";
	}
	
	@RequestMapping("layouts-boxed")
	public String layoutsboxed(Locale locale, Model model) {
		logger.info("log => layouts-boxed");
		
		return "layouts-boxed";
	}
	
	@RequestMapping("layouts-dark-sidebar")
	public String layoutsdarksidebar(Locale locale, Model model) {
		logger.info("log => layouts-dark-sidebar");
		
		return "layouts-dark-sidebar";
	}
	
	@RequestMapping("layouts-sidebar-collapsed")
	public String layoutssidebarcollapsed(Locale locale, Model model) {
		logger.info("log => layouts-sidebar-collapsed");
		
		return "layouts-sidebar-collapsed";
	}
	
	@RequestMapping("layouts-small-sidebar")
	public String layoutssmallsidebar(Locale locale, Model model) {
		logger.info("log => layouts-small-sidebar");
		
		return "layouts-small-sidebar";
	}
	
	@RequestMapping("maps-google")
	public String mapsgoogle(Locale locale, Model model) {
		logger.info("log => maps-google");
		
		return "maps-google";
	}
	
	@RequestMapping("maps-mapael")
	public String mapsmapael(Locale locale, Model model) {
		logger.info("log => maps-mapael");
		
		return "maps-mapael";
	}
	
	@RequestMapping("maps-vector")
	public String mapsvector(Locale locale, Model model) {
		logger.info("log => maps-vector");
		
		return "maps-vector";
	}
	
	@RequestMapping("pages-404-alt")
	public String pages404alt(Locale locale, Model model) {
		logger.info("log => pages-404-alt");
		
		return "pages-404-alt";
	}
	
	@RequestMapping("pages-404")
	public String pages404(Locale locale, Model model) {
		logger.info("log => pages-404");
		
		return "pages-404";
	}
	
	@RequestMapping("pages-500")
	public String pages500(Locale locale, Model model) {
		logger.info("log => pages-500");
		
		return "pages-500";
	}
	
	@RequestMapping("pages-comfirm-mail")
	public String pagescomfirmmail(Locale locale, Model model) {
		logger.info("log => pages-comfirm-mail");
		
		return "pages-comfirm-mail";
	}
	
	@RequestMapping("pages-lock-screen")
	public String pageslockscreen(Locale locale, Model model) {
		logger.info("log => pages-lock-screen");
		
		return "pages-lock-screen";
	}
	
	@RequestMapping("pages-login")
	public String pageslogin(Locale locale, Model model) {
		logger.info("log => pages-login");
		
		return "pages-login";
	}
	
	@RequestMapping("pages-logout")
	public String pageslogout(Locale locale, Model model) {
		logger.info("log => pages-logout");
		
		return "pages-logout";
	}
	
	@RequestMapping("pages-recoverpw")
	public String pagesrecoverpw(Locale locale, Model model) {
		logger.info("log => pages-recoverpw");
		
		return "pages-recoverpw";
	}
	
	@RequestMapping("pages-starter")
	public String pagesstarter(Locale locale, Model model) {
		logger.info("log => pages-starter");
		
		return "pages-starter";
	}
	
	@RequestMapping("tables-basic")
	public String tablesbasic(Locale locale, Model model) {
		logger.info("log => tables-basic");
		
		return "tables-basic";
	}
	
	// 거래 명세서 발행
	@RequestMapping("ST_tables-datatable")
	public String tablesdatatable(Locale locale, Model model) {
		logger.info("log => ST_tables-datatable");
		
		return "ST/tables-datatable";
	}
	
	// 세금 명세서 발행
	@RequestMapping("ST_tax-statements")
	public String taxstatements(Locale locale, Model model) {
		logger.info("log => ST_tax-statements");
		
		return "ST/tax-statements";
	}
	
	// 견적 관리
	@RequestMapping("ST_estimate")
	public String estimate(Locale locale, Model model) {
		logger.info("log => estimate");
		
		return "ST/estimate";
	}
	
	// 출고 관리
	@RequestMapping("ST_release")
	public String release(Locale locale, Model model) {
		logger.info("log => release");
		
		return "ST/release";
	}
	
	// 반품 관리
	@RequestMapping("ST_refund")
	public String refund(Locale locale, Model model) {
		logger.info("log => refund");
		
		return "ST/refund";
	}
	
	@RequestMapping("ST_sale_plan")
	public String ST_sale_plan(Locale locale, Model model) {
		logger.info("log => ST_sale_plan");
		
		return "ST/ST_sale_plan";
	}
	@RequestMapping("ST_sale_plan_state")
	public String ST_sale_plan_state(Locale locale, Model model) {
		logger.info("log => ST_sale_plan_state");
		
		return "ST/ST_sale_plan_state";
	}@RequestMapping("ST_contrast_pp")
	public String ST_contrast_pp(Locale locale, Model model) {
		logger.info("log => ST_contrast_pp");
		
		return "ST/ST_contrast_pp";
	}
	@RequestMapping("ST_contrast_pPro")
	public String ST_contrast_pPro(Locale locale, Model model) {
		logger.info("log => ST_contrast_pPro");
		
		return "ST/ST_contrast_pPro";
	}
	
	@RequestMapping("ST_delay_state")
	public String ST_delay_state(Locale locale, Model model) {
		logger.info("log => ST_delay_state");
		
		return "ST/ST_delay_state";
	}
	
	@RequestMapping("ST_tex_invoice_list")
	public String ST_tex_invoice_list(Locale locale, Model model) {
		logger.info("log => ST_tex_invoice_list");
		
		return "ST/ST_tex_invoice_list";
	}
	
	
	
	 
	
	
	@RequestMapping("HR_InputHR")
	public String HR_InputHR(Locale locale, Model model) {
		logger.info("log => HR_InputHR");
		
		return "HR/HR_InputHR";
	}
	
	@RequestMapping("HR_EmployeeInformation")
	public String HR_EmployeeInformation(Locale locale, Model model) {
		logger.info("log => HR_EmployeeInformation");
		
		return "HR/HR_EmployeeInformation";
	}
	
	@RequestMapping("HR_EmployeeSalary")
	public String HR_EmployeeSalary(Locale locale, Model model) {
		logger.info("log => HR_EmployeeSalary");
		
		return "HR/HR_EmployeeSalary";
	}
	
	@RequestMapping("HR_GreetingPunishment")
	public String HR_GreetingPunishment(Locale locale, Model model) {
		logger.info("log => HR_GreetingPunishment");
		
		return "HR/HR_GreetingPunishment";
	}
	
	@RequestMapping("HR_Yearsofservice")
	public String HR_Yearsofservice(Locale locale, Model model) {
		logger.info("log => HR_Yearsofservice");
		
		return "HR/HR_Yearsofservice";
	}
	
	@RequestMapping("HR_LeaveStandard")
	public String HR_LeaveStandard(Locale locale, Model model) {
		logger.info("log => HR_LeaveStandard");
		
		return "HR/HR_LeaveStandard";
	}
	
	@RequestMapping("HR_Greeting")
	public String HR_Greeting(Locale locale, Model model) {
		logger.info("log => HR_Greeting");
		
		return "HR/HR_Greeting";
	}
	
	@RequestMapping("HR_appointment_notice")
	public String HT_appointment_notice(Locale locale, Model model) {
		logger.info("log => HR_appointment_notice");
		
		return "HR/HR_appointment_notice";
	}
	
	@RequestMapping("HR_appointment_report")
	public String HR_appointment_report(Locale locale, Model model) {
		logger.info("log => HR_appointment_report");
		
		return "HR/HR_appointment_report";
	}
	
	@RequestMapping("HR_work_record")
	public String HR_work_record(Locale locale, Model model) {
		logger.info("log => HR_work_record");
		
		return "HR/HR_work_record";
	}
	
	@RequestMapping("coming_soon")
	public String coming_soon(Locale locale, Model model) {
		logger.info("log => coming_soon");
		
		return "HR/coming_soon";
	}
	
	
	
	
	
	@RequestMapping("journal")
	public String journal(Locale locale, Model model) {
		logger.info("log => journal");
		
		return "FT/journal";
	}
	@RequestMapping("ledger")
	public String ledger(Locale locale, Model model) {
		logger.info("log => ledger");
		
		return "FT/ledger";
	}
	@RequestMapping("insertChit")
	public String insertChit(Locale locale, Model model) {
		logger.info("log => insertChit");
		
		return "FT/insertChit";
	}
	@RequestMapping("insertTotal")
	public String insertTotal(Locale locale, Model model) {
		logger.info("log => insertTotal");
		
		return "FT/insertTotal";
	}
	@RequestMapping("FT_Chit_Manager")
	public String FT_Chit_Manager(Locale locale, Model model) {
		logger.info("log => FT_Chit_Manager");
		
		return "FT/FT_Chit_Manager";
	}
	
	@RequestMapping("FT_DTB")
	public String FT_DTB(Locale locale, Model model) {
		logger.info("log => FT_DTB");
		
		return "FT/FT_DTB";
	}
	
	@RequestMapping("FT_BS")
	public String FT_BS(Locale locale, Model model) {
		logger.info("log => FT_BS");
		
		return "FT/FT_BS";
	}
	
	@RequestMapping("FT_IS")
	public String FT_IS(Locale locale, Model model) {
		logger.info("log => FT_IS");
		
		return "FT/FT_IS";
	}
	
	@RequestMapping("FT_p_cost")
	public String FT_p_cost(Locale locale, Model model) {
		logger.info("log => FT_p_cost");
		
		return "FT/FT_p_cost";
	}
	
	@RequestMapping("FT_funds_state")
	public String FT_funds_state(Locale locale, Model model) {
		logger.info("log => FT_funds_state");
		
		return "FT/FT_funds_state";
	}
	
	@RequestMapping("FT_sa_state")
	public String FT_sa_state(Locale locale, Model model) {
		logger.info("log => FT_sa_state");
		
		return "FT/FT_sa_state";
	}
	
	@RequestMapping("FT_capital_plan")
	public String FT_capital_plan(Locale locale, Model model) {
		logger.info("log => FT_capital_plan");
		
		return "FT/FT_capital_plan";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("tables-layouts")
	public String tableslayouts(Locale locale, Model model) {
		logger.info("log => tables-layouts");
		
		return "tables-layouts";
	}
	
	// 견적 현황
	@RequestMapping("ST_tables-responsive")
	public String tablesresponsive(Locale locale, Model model) {
		logger.info("log => tables-responsive");
		
		return "ST/tables-responsive";
	}
	
	@RequestMapping("tables-tablesaw")
	public String tablestablesaw(Locale locale, Model model) {
		logger.info("log => tables-tablesaw");
		
		return "tables-tablesaw";
	}
	
	@RequestMapping("ui-bootstrap")
	public String uibootstrap(Locale locale, Model model) {
		logger.info("log => ui-bootstrap");
		
		return "ui-bootstrap";
	}
	
	@RequestMapping("ui-buttons")
	public String uibuttons(Locale locale, Model model) {
		logger.info("log => ui-buttons");
		
		return "ui-buttons";
	}
	
	@RequestMapping("ui-cards")
	public String uicards(Locale locale, Model model) {
		logger.info("log => ui-cards");
		
		return "ui-cards";
	}
	
	@RequestMapping("ui-carousel")
	public String uicarousel(Locale locale, Model model) {
		logger.info("log => ui-carousel");
		
		return "ui-carousel";
	}
	
	@RequestMapping("ui-checkbox-radio")
	public String uicheckboxradio(Locale locale, Model model) {
		logger.info("log => ui-checkbox-radio");
		
		return "ui-checkbox-radio";
	}
	
	@RequestMapping("ui-images")
	public String uiimages(Locale locale, Model model) {
		logger.info("log => ui-images");
		
		return "ui-images";
	}
	
	@RequestMapping("ui-modals")
	public String uimodals(Locale locale, Model model) {
		logger.info("log => ui-modals");
		
		return "ui-modals";
	}
	
	@RequestMapping("ui-notifications")
	public String uinotifications(Locale locale, Model model) {
		logger.info("log => ui-notifications");
		
		return "ui-notifications";
	}
	
	@RequestMapping("ui-progressbars")
	public String uiprogressbars(Locale locale, Model model) {
		logger.info("log => ui-progressbars");
		
		return "ui-progressbars";
	}
	
	@RequestMapping("ui-tabs")
	public String uitabs(Locale locale, Model model) {
		logger.info("log => ui-tabs");
		
		return "ui-tabs";
	}
	
	@RequestMapping("ui-tooltips-popovers")
	public String uitooltipspopovers(Locale locale, Model model) {
		logger.info("log => ui-tooltips-popovers");
		
		return "ui-tooltips-popovers";
	}
	
	@RequestMapping("ui-typography")
	public String uitypography(Locale locale, Model model) {
		logger.info("log => ui-typography");
		
		return "ui-typography";
	}
	@RequestMapping("ui-video")
	public String uivideo(Locale locale, Model model) {
		logger.info("log => ui-video");
		
		return "ui-video";
	}
}
