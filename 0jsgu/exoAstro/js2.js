console.log(document.cookie);
lol=document.cookie.split(";");

lol2=lol[0].split("=");
lol3=lol[1].split("=");

document.getElementById("final").innerHTML="Mister "+lol2[1]+"<br>";
document.getElementById("final").innerHTML+="a qui il reste "+lol3[1]+" jours a vivre.";