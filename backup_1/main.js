// Ottieni tutti gli elementi dell'accordion
//var acc = document.getElementsByClassName("accordion");

// Cicla su tutti gli elementi e aggiungi un evento di click
/*for (var i = 0; i < acc.length; i++) {
    acc[i].onclick = function() {
        // Attiva o disattiva l'accordion
        this.classList.toggle("active");

        // Trova il pannello successivo
        var panel = this.nextElementSibling;

        // Mostra o nascondi il pannello
        if (panel.style.maxHeight) {
            panel.style.maxHeight = null;
        } else {
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    }
}*/

function toggleAccordion(sectionId) {
    var panel = document.getElementById(sectionId);
    if (panel.style.display === "block") {
      panel.style.display = "none";
    } else {
      panel.style.display = "block";
    }
  }