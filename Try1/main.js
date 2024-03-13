function toggleAccordion(sectionId) {
    var panel = document.getElementById(sectionId);
    if (panel.style.display === "block" || panel.style.display === "flex") 
    {
      panel.style.display = "none";
    } 
    
    else {
      panel.style.display = "flex";
      panel.style.flexDirection = "column";
      panel.style.border = "none";
      panel.style.outline = "none"
      panel.style.marginBottom = "10px";
      panel.classList.add("active");
    }
  }