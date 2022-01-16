<%@ Master Language="C#" AutoEventWireup="true" CodeFile="Master.master.cs" Inherits="Master" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ANASAYFA</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.slidertron-0.1.js"></script>
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
</style>
</head>
<body>
<form id="form1" runat="server"> 
<!-- end #header-wrapper -->
<div id="logo">
	<h1><a href="#">CENGİZ EMLAK </a></h1>
</div>
<div id="header">
	<div id="menu">
		<ul>
			<li><a href="anasayfa.aspx" class="first"><span style="font-size: 16pt; font-family: Stencil">
                ANASAYFA</span></a></li>
			<li><a href="tumevler.aspx"><span style="font-family: Stencil">EVLER</span></a></li>
			<li><a href="evsatınal.aspx"><span style="font-family: Stencil">SATIN AL</span></a></li>
			<li><a href="hakkında.aspx"><span style="font-family: Stencil">HAKKINDA</span></a></li>
		</ul>
	</div>
	<!-- end #menu -->
	
	<!-- end #search -->
</div>
<!-- end #header -->
<hr />
<!-- end #logo -->
<div id="slideshow">
	<!-- start -->
	<div id="foobar">
		<div id="col1"><a href="#" class="previous">&nbsp;</a>&nbsp;</div>
		<div id="col2">
			<div class="viewer">
				<div class="reel">
					<div class="slide"><img src="images/28975_423871311638_359186276638_5275988_6557350_n.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/1460_17722_33PSV51.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/682d36ea0a.JPG" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/dublex-celik-prefabrik-3.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/dublex-celik-prefabrik-4.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/erzurum_erzurum_merkez_satilik_daire_emlakset_emlakci_45_13494_1_1105848.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/ev-resimleri (4).jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/feza-prefabrik-dubleks-156m2.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/gunluk-kiralik-daire.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/guzel_ev.jpg" width="726" height="335" alt="" /> <span></span> </div>
					<div class="slide"><img src="EVLER/Kucuk-daire-tasarimlari12.jpg" width="726" height="335" alt="" /> <span></span> </div>
				</div>
			</div>
		</div>
		<div id="col3"><a href="#" class="next">&nbsp;</a>&nbsp;</div>
	</div>
	<script type="text/javascript">

						$('#foobar').slidertron({
							viewerSelector:			'.viewer',
							reelSelector:			'.viewer .reel',
							slidesSelector:			'.viewer .reel .slide',
							navPreviousSelector:	'.previous',
							navNextSelector:		'.next',
							navFirstSelector:		'.first',
							navLastSelector:		'.last'
						});
						
					</script>
	<!-- end -->
</div>
<div id="page">
	<div id="page-bgtop">
		<div id="content">
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
            
            </asp:ContentPlaceHolder>
		</div>
		<!-- end #content -->
		<div id="sidebar">
			<ul>
				<li>
					<h2>BİLGİ</h2>
					<p>Evlerimiz depreme dayanıklı lüks içinde inşa edilmiştir... </p>
				</li>
				<li>
					<h2>Ev almak isteginiz bölge</h2>
				   <asp:Repeater ID="Repeater2" runat="server">
                                        <HeaderTemplate>
                                            <ul>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <li><a href='evler.aspx?ilceID=<%# Eval ("ilce_id") %>'>
                                                <%# Eval ("ilce_isim") %>
                                            </a></li>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </ul></FooterTemplate>
                                    </asp:Repeater>
				</li>
				
			</ul>
		</div>
		<!-- end #sidebar -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end #page -->
</div>
<div id="footer">
	<p>Deprem sizi öldürmez yanlış alınan evler öldürür...</p>
</div>
<!-- end #footer -->
</form>
</body>
</html>
