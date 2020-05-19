<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Test</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>
<!-- Initialize each slider on the page. Each slider must have a unique id -->
<script type="text/javascript">
	$().ready(function() {
		$('#coda-slider-2').codaSlider({
			autoSlide : true,
			autoSlideInterval : 6000,
			autoSlideStopWhenClicked : true

		});
	});

	function findarea() {
		var country = document.getElementById('coun').value;
		var state = document.getElementById('sta').value;
		var district = document.getElementById('dis').value;
		var police = document.getElementById('pol').value;

		var url = "findname4.jsp?country=" + country + "&state=" + state
				+ "&district=" + district + "&police=" + police;
		if (window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			request = new ActiveXObject("Microsoft.XMLHTTP");
		}
		try {
			request.onreadystatechange = getInfo;
			request.open("GET", url, true);
			request.send();
		} catch (e) {
			alert("Unable to connect to server");
		}
	}

	function getInfo() {
		if (request.readyState == 4) {
			var val = request.responseText;
			document.getElementById('location').innerHTML = val;

		}
	}
</script>

<script type="text/javascript" src="lib/pirobox.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$().piroBox({
			my_speed : 400, //animation speed
			bg_alpha : 0.1, //background opacity
			slideShow : false, // true == slideshow on, false == slideshow off
			slideSpeed : 4, //slideshow duration in seconds(3 to 6 Recommended)
			close_all : '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

		});
	});
</script>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<div id="logo">
				<h1>
					<a href="#">Connect Globe</a>
				</h1>
			</div>
		</div>
		<div id="menu">
			<ul>
				<li class="last" id="title"><a href="home1.jsp">About us</a></li>
				<li class="last" id="title"><a href="post.jsp">Post Report</a></li>
				<li class="last" id="title"><a href="GetPostDetails1.jsp">View Status</a></li>
				<li class="last" id="title"><a href="area.jsp">Your Area</a></li>
				<li class="last" id="title"><a href="advice.jsp">Your
						Advice</a></li>
				<li class="last" id="title"><a href="topic.jsp">Discuss</a></li>
				<li class="last" id="title"><a href="admin.jsp">Admin</a></li>
				<li class="last" id="title"><a href="logout.jsp">LogOut</a></li>
			</ul>
			<br class="clearfix" />
		</div>
		<div id="page">
			<div id="content1">
				<br class="clearfix" />
				<div style="clear: both;"></div>
			</div>
			<center>
				<div id="index_col3">
					<h3>View Reports</h3>
					<div id="log">

						<fieldset>
							<table style="table-layout: fixed;">
								<tr>
									<td>Country:<select name="slist1" id="coun"
										onchange="SList.getSelect('slist2', this.value);" style="height:25px; width:230px">
											<option>Select Country</option>
											<option value="India" >India</option>
									</select>
									</td>
								</tr>
								</center>
								<tr>
									<td id="slist2"></td>
								</tr>
								<tr>
									<td id="slist3"></td>
								</tr>
								<tr>
									<td id="slist4"></td>
								</tr>
								<script>
								<!--
									var SList = new Object(); // JS object that stores data for options
									var txtsl2 = 'State:'; // text for the seccond dropdown list
									var txtsl3 = 'District:'; // text for the third dropdown list
									var txtsl4 = 'PoliceStation:';
									SList.slist2 = {
										"India" : [ 'Andaman & Nicobar',
												'Andhra Pradesh',
												'Arunachal Pradesh', 'Assam',
												'Bihar', 'Chandigarh',
												'Chattisgarh',
												'Dadara & Haveli',
												'Daman & Div', 'Delhi', 'Goa',
												'Gujarat', 'Hariyana',
												'Himachal Pradesh',
												'Jammu & Kashmir', 'Karnataka',
												'Kerala', 'Lakshdip',
												'Madhya Pradesh',
												'Maharashtra', 'Manipur',
												'Mizoram', 'Nagaland',
												'orissa', 'Ponducherry',
												'Punjab', 'Rajastan', 'Sikkim',
												'Tamilnadu', 'Tripura',
												'UttarPradesh', 'Uttarakhand',
												'West Bengal' ],
									};

									SList.slist3 = {
										"Andaman & Nicobar" : [
												'North and Middle Andaman district',
												'South Andaman district',
												'Nicobar district' ],
										"Andhra Pradesh" : [ 'Anantapur',
												'Chittor', 'East Godavari',
												'Guntur', 'Kadapa', 'Krishna',
												'Kurnool', 'Prakasam',
												'Nellore', 'Srikakulam',
												'Visakhapatnam',
												'Vizianagaram', 'West Godavari' ],
										"Arunachal Pradesh" : [ 'Diban Valley',
												'East Kameng seppa',
												'itanagar', 'East Sianng',
												'Lohit', 'Lower Subansri',
												'Khonsa', 'Royan', 'Tawang',
												'Changalang', 'Dibang Valley',
												'Dapaorijo', 'Bomdila', 'Alog' ],
										"Assam" : [ 'Karimaganj', 'Darrang',
												'Dibrugh', 'Moregaon',
												'Tinsukia', 'Bongaigaon',
												'Nalbari', 'Kokrajhar',
												'Kamrup', 'Karbi-Anglong',
												'Nagav', 'N.C Hills', 'Demaji',
												'Hailankadi', 'Lakhimpur',
												'Sonitpur', 'Dhubri',
												'Golpara', 'Barpeta',
												'Gola Ghat', 'Sibsagar',
												'Jorhat', 'Cachar' ],
										"Bihar" : [ 'Muzaffarupur',
												'Jehanabad', 'Gaya', 'Patana',
												'Saran', 'Darbhanga',
												'Saharsa', 'Purnea',
												'Baghalpur', 'Munger',
												'Aurangabad', 'Bhojpur',
												'Begusarai', 'East Champaran',
												'Gopalganj', 'Jamoi',
												'Katihar', 'Kagaria',
												'Madhepura', 'Madhubani',
												'Nalanda', 'Navda', 'Rohtas',
												'Samastipur', 'Sitamahari',
												'Siwan', 'Vaishali',
												'West Champaran', 'Kishanganj',
												'Arraria', 'Babhuva', 'Banka',
												'Baksar', 'Supaul', 'Sekhpura',
												'Sihar', 'Nakki Sarai' ],
										"Chattisgarh" : [ 'Bastar', 'Bilaspur',
												'Dantewada', 'Dhamtari',
												'Durg', 'Janjgir-Champa',
												'Jashpur', 'Kanker',
												'Kawardha', 'Korba', 'Koriya',
												'Mahasamund', 'Raigarh',
												'Rajnandgaon', 'Surguja',
												'Raipur' ],
										"Chandigarh" : [ 'Chandigarh' ],
										"Dadara & Haveli" : [ 'Dadra' ],
										"Daman & Div" : [ 'Dama', 'Diu' ],
										"Delhi" : [ 'New Delhi', 'Central',
												'North', 'North West', 'West',
												'South West', 'North',
												'North East' ],
										"Goa" : [ 'North Goa', 'South Goa' ],
										"Gujarat" : [ 'Panchmahals',
												'Vadodara', 'Amrela', 'Kheda',
												'Ahmedabad', 'Valsad',
												'Junagadh', 'Mehsana',
												'Banaskantha', 'Gandhinagar',
												'Bharuch', 'Dangs', 'Jamnagar',
												'Rajkot', 'Surat',
												'Sabarkantha', 'Kutch',
												'Bhavnagar', 'Surendranagar',
												'Navsari', 'Anand', 'Narmada',
												'Patan', 'Porbander', 'Daho' ],
										"Hariyana" : [ 'Gurgaon', 'Rohtak',
												'Ambala', 'Bhiwani',
												'Faridabad', 'Hissar', 'Jind',
												'Kaithal', 'Karnal',
												'Kurukshetra', 'Mahendragarh',
												'Panchkula', 'Panipat',
												'Sonipat', 'Yamunanagar',
												'Sirsa', 'Rewari', 'Jhanjhar',
												'Fatehabad' ],
										"Himachal Pradesh" : [ 'Sirmour',
												'Hamirpur', 'Kullu', 'Solan',
												'Mandi', 'Chamba', 'Bilaspur',
												'Kangra', 'Kinnaur',
												'Lahaul-Spiti', 'Shimla', 'Una' ],
										"Jammu & Kashmir" : [ 'Kathua',
												'Badgan', 'Poonch', 'Rajauri',
												'Baramula', 'Doda', 'Udhampur',
												'Jammu', 'Kupwara', 'Pulwama',
												'Anantnag', 'Srinagar', 'Leh',
												'Kargil' ],
										"Karnataka" : [ 'Mysore', 'Gulberga',
												'Chitradurga', 'Kolar',
												'Bijapur', 'Dakshina Kannada',
												'Raichur', 'Bellary',
												'Belgaum', 'Hassan', 'Dharwad',
												'Bangalore Rural', 'Shimoga',
												'Mandya', 'Chickmagalur',
												'Bangalore Urban', 'Madikeri',
												'Tumkur', 'Bidar', 'Karwar',
												'Udupi', 'Davanagare' ],
										"Kerala" : [ 'Kozhikode', 'Kasaragod',
												'Idukki', 'Ernakulam',
												'Cannanore', 'Mallapuram',
												'Palghat', 'Pathanamthitta',
												'Quilon', 'Trichur', 'Wayanad',
												'Trivandrum', 'Kottayam',
												'Alapuzzha' ],
										"Lakshdip" : [ 'Lakshdweep' ],
										"Madhya Pradesh" : [ 'Sindi',
												'Vidisha', 'Jabalpur',
												'Bhopal', 'Hoshangabad',
												'Indore', 'Rewa', 'Satna',
												'Shahdol', 'Chhindwara',
												'Ratlam', 'Balaghat', 'Betul',
												'Bhind', 'Mandla',
												'Chhattarpur', 'Damoh',
												'Datia', 'Dewas', 'Dhar',
												'Guna', 'Gwalior', 'Jhabua',
												'Sehore', 'Mandsaur',
												'Narsinghpur', 'Panna',
												'Raisen', 'Rajgarh', 'Sagar',
												'Seoni', 'Morena', 'Shivpuri',
												'Shajapur', 'Tikamgarh',
												'Ujjain', 'Khandwa',
												'Khargone', 'Dindori',
												'Umaria', 'Badwani', 'Sheopur',
												'Katni', 'Neemuch', 'Harda',
												'Anooppur', 'Burhanpur',
												'Ashoknagar' ],
										"Maharashtra" : [ 'Aurangabad',
												'Bandara', 'Nagpur', 'Akola',
												'Pune', 'Chandrapur',
												'Jalgaon', 'Parbhani',
												'Solapur', 'Thane', 'Latur',
												'Mumbai City', 'Buldhana',
												'Dhule', 'Kolhapur', 'Nanded',
												'Raigad', 'Amravati', 'Nashik',
												'Wardha', 'Ahmednagar', 'Beed',
												'Bandara', 'Gadchiroli',
												'Jalana', 'Osmanabad',
												'Ratnagiri', 'Sangli',
												'Satara', 'Sidhudurga',
												'Yavatmal', 'Nadurbar',
												'Washim', 'Gondia', 'Hingoli' ],
										"Manipur" : [ 'Imphal East',
												'Imphal West', 'Thoubal',
												'Bishnupur', 'Chandel',
												'Churachandpur', 'Senapati',
												'Ukhrul', 'Tamenglong' ],
										"Mizoram" : [ 'Luglei District',
												'Chimtipui District',
												'Aizawal', 'Champhai', 'Mamit',
												'Kolasib', 'Serchhip',
												'Lawngtlai' ],
										"Nagaland" : [ 'Wokha', 'Phek',
												'Tuensang', 'Mon', 'Kohima',
												'Zunheboto', 'Mokokchung',
												'Dimapur' ],
										"orissa" : [ 'Khurda', 'Navaragpur',
												'Navapada', 'Gajapati',
												'Boudh', 'Bhadrak', 'Ganjam',
												'Dhenkanal', 'Angul', 'Puri',
												'Cuttak', 'Sambalpur',
												'Kalhandi', 'Koraput',
												'Phulbani', 'Balangir',
												'Bargah', 'Deogarh',
												'Jagatsinghpur', 'Jajpur' ],
										"Ponducherry" : [ 'Mahe', 'Yaman',
												'Pondicherry', 'Karikal' ],
										"Punjab" : [ 'Sangrur', 'Jalandhar',
												'Ludhiana', 'Bhatinda',
												'Kapurthala', 'Patiala',
												'Amritsar', 'Ferozepur',
												'FatehgarhSaheb', 'Ropar',
												'Gurdaspur', 'Hosiarpur',
												'Faridkot', 'Mansa', 'Moga',
												'Muktsar', 'Navansahar' ],
										"Rajastan" : [ 'Jaipur', 'Barmer',
												'Dungarpur', 'Jodhpur', 'Kota',
												'Udaipur', 'Bikaner', 'Dausa',
												'Bundi', 'Sikar', 'Tonk',
												'Jaisalmer', 'Nagaur',
												'Rajsamand', 'Banswara',
												'Bhilwara', 'Ajmer', 'Alwar',
												'Bharatpur', 'Chittorgarh',
												'Churu', 'Dholpur',
												'Ganganagar', 'Jalor',
												'Jhalawar', 'Jhunjhunu',
												'Pali', 'Sawai Madhopur',
												'Sirohi', 'Baran',
												'Hanumangarh', 'Karauli' ],
										"Sikkim" : [ 'East', 'West', 'South',
												'North' ],
										"Tamilnadu" : [
												'Chennai',
												'Coimbotore',
												'Cuddalorei',
												'Dharmapuri',
												'Dindigul',
												'Erode',
												'Kancheepuram',
												'Kanniyakumari (HQ : Nagercoil)',
												'Karur',
												'Madurai',
												'Nagapattinam',
												'Namakkal',
												'Nilgiris (HQ: Udhagamandalam)',
												'Perambalur', 'Pudukkottai',
												'Ramanathapuram', 'Salem',
												'Sivaganga', 'Thanjavur',
												'Theni', 'Thoothkudi',
												'Tiruchiorappalli',
												'Tirunelveli', 'Tiruvallur',
												'Tiruvannamalai', 'Tiruvarur',
												'Vellore', 'Villupuram',
												'Virudhunagar' ],
										"Tripura" : [ 'North District',
												'South District',
												'West District',
												'Dhalai District' ],
										"UttarPradesh" : [ 'Allahabad',
												'Aligarh Bareilly', 'Gonda',
												'Hardoi', 'Kanpur Dehat',
												'Ghaziabad', 'Unnav',
												'Varanasi', 'Faizabad',
												'Gorakpur', 'Jhansi',
												'Lucknow', 'Agra', 'Meerut',
												'Moradabad', 'Barabanki',
												'Mainpuri', 'Etawah',
												'Gazipur', 'Etah',
												'Muzaffar Nagar', 'Saharanpur',
												'Bulandshehar', 'Mathura',
												'Firozabad', 'Budaun',
												'Shahjahanpur', 'Pilibhit',
												'Bijnor', 'Rampur',
												'Kanpur(Nagar)', 'Farrukhabad',
												'Fatehpur', 'Pratapgarh',
												'Jalaun', 'Hamirpur',
												'Lalitpur', 'Mirzapur',
												'Basti', 'Deoria',
												'Raebareili', 'Sitapur',
												'Banda', 'Lakhimpur-Khedi',
												'Bahraich', 'Sultanpur', 'Mau',
												'Azamgarh', 'Jaunpur', 'Balia',
												'Bhadoi', 'Padrauna',
												'Maharajganj',
												'Siddharth Nagar', 'Sunbhadra',
												'Mahoba', 'Ambedkarnagar',
												'Gautam Bodda Nagar',
												'Maha Maya Nagar',
												'jyotiba Phoole Nagar',
												'Kaushambi', 'Shooji Maharaj',
												'Chandauli', 'Balrampur',
												'Shravati', 'Bagpat', 'Kanooj',
												'Oraiyya', 'Sant Kabir Nagar' ],
										"Uttarakhand" : [ 'Nainital', 'Almora',
												'Pitoragarh',
												'Udhamsingh Nagar',
												'Bageshwar', 'Champawat',
												'Garhwal(Pauri)',
												'Tehri-Garhwal',
												'Chamoli( Gopeshwar )',
												'Uttarkashi', 'Dehradun',
												'Rudraprayag', 'Haridwar' ],
										"West Bengal" : [ 'Howrah',
												'Darjeeling', 'Medinipur',
												'Murshidabad', 'Coochbehar',
												'Malda', 'Birbhum',
												'North 24 Parganas',
												'South 24 Parganas', 'Bankura',
												'Bardhaman', 'Jalpaiguri',
												'Hooghly', 'Nadia',
												'Dakshin Dinajpur', 'Purulia',
												'Uttar Dinajpur', 'Siliguri' ],
									};

									SList.slist4 = {
										"North and Middle Andaman district" : [
												'Modinagar', 'Mohan Nagar' ],
										"s2o1_1_opt2" : 'Content for s2o1_1_opt2',
										"s2o1_2_opt1" : 'Content for s2o1_2_opt1',
										"s2o1_2_opt2" : 'Content for s2o1_2_opt2',
										"s2o2_1_opt1" : 'Content for s2o2_1_opt1',
										"s2o2_1_opt2" : 'Content for s2o2_1_opt2',
										"s2o2_2_opt1" : 'Content for s2o2_2_opt1',
										"s2o2_2_opt2" : 'Content for s2o2_2_opt2',
									};

									/* From here no need to modify */

									// function to get the dropdown list, or content
									SList.getSelect = function(slist, option) {
										document.getElementById('scontent').innerHTML = ''; // empty option-content

										if (SList[slist][option]) {
											// if option from the last Select, add text-content, else, set dropdown list
											if (slist == 'scontent')
												document
														.getElementById('scontent').innerHTML = SList[slist][option];
											else {
												var addata = '<option>Select Please</option>';
												for (var i = 0; i < SList[slist][option].length; i++) {
													addata += '<option value="'+SList[slist][option][i]+'" >'
															+ SList[slist][option][i]
															+ '</option>';
												}

												// cases for each dropdown list
												switch (slist) {
												case 'slist2':
													document
															.getElementById('slist2').innerHTML = txtsl2
															+ ' <select name="slist2" id="sta" onchange="SList.getSelect(\'slist3\', this.value);">'
															+ addata
															+ '</select>';
													document
															.getElementById('slist3').innerHTML = '';
													break;
												case 'slist3':
													document
															.getElementById('slist3').innerHTML = txtsl3
															+ ' <select name="slist3" id="dis" onchange="SList.getSelect(\'slist4\', this.value);">'
															+ addata
															+ '</select>';
													document
															.getElementById('slist4').innerHTML = '';
													break;
												case 'slist4':
													document
															.getElementById('slist4').innerHTML = txtsl4
															+ ' <select name="slist4" id="pol" onchange="findarea();">'
															+ addata
															+ '</select>';
													break;
												}
											}
										} else {
											// empty the tags for select lists
											if (slist == 'slist2') {
												document
														.getElementById('slist2').innerHTML = '';
												document
														.getElementById('slist3').innerHTML = '';
											} else if (slist == 'slist3') {
												document
														.getElementById('slist3').innerHTML = '';
											} else if (slist == 'slist4') {
												document
														.getElementById('slist4').innerHTML = '';
											}
										}
									}
								</script>
							</table>
							<div id="scontent"></div>
						</fieldset>
					</div>
				</div>
			</center>
		</div>
		<div id="page-bottom">
			<div id="page-bottom-content">
				<h3>Connect Globe</h3>
				<p>Now You can Share Your Social Problem such as some kind of
					Harassment,Bribe matters. Simply just Register Yourself and Do
					login After that click on Post Report Link as shown above. And
					After selecting Your subject and location YOu can post Your matter
					Simply.This will be visible to every visitors and our Supporters
					will try to proceed it further.</p>
			</div>
			<div id="page-bottom-sidebar">
				<h3>Social Media</h3>
				<ul class="list">
					<li class="first"><a href="http://www.facebook.com">Facebook</a></li>
					<li><a href="http://www.twitter.com">Twitter</a></li>
					<li class="last"><a href="http://www.youtube.com">You Tube</a></li>
				</ul>
			</div>
			<br class="clearfix" />
		</div>
	</div>
	<div id="footer" style="color: red">Copyright (c) 2015
		ConnectGlobe.com. All rights reserved. Design by Kishor Kadam.</div>
</body>
</html>