document.addEventListener('DOMContentLoaded', function () {                 // Attend que le DOM soit complètement chargé avant d'exécuter le script.
    const sections = document.querySelectorAll('section');                  // Sélectionne tous les éléments <section> de la page.
    const projects = document.querySelectorAll('.project');                 // Sélectionne tous les éléments ayant la classe .project.
    const skills = document.querySelectorAll('.skill');                     // Sélectionne tous les éléments ayant la classe .skill.
    const certifications = document.querySelectorAll('.certification');     // Sélectionne tous les éléments ayant la classe .certification.
    const portfolio = document.querySelectorAll('.project');  
    const parcours = document.querySelectorAll('.parcours');             // Sélectionne tous les éléments .project (duplicata de la ligne 'projects').
    const typingText = document.getElementById('typing-text');              // Sélectionne l'élément avec l'ID 'typing-text'.
    const chosenText = document.querySelector('.chosen-text');              // Sélectionne l'élément avec la classe .chosen-text pour vérifier son existence.
    const fingerIcon = document.querySelector('.finger-icon');              // Sélectionne l'élément avec la classe .finger-icon pour vérifier son existence.
    const text = "Bienvenue sur le Portfolio de Thomas Gouez !";            // Texte à afficher de manière animée.
    let index = 0;                                                          // Initialise l'index pour l'effet de machine à écrire.


    // Vérifie si l'élément typingText existe bien
    if (typingText) {
        function typeWriter() {                                     // Fonction qui crée l'effet de machine à écrire.
            if (index < text.length) {                              // Vérifie si l'index est inférieur à la longueur du texte.
                typingText.innerHTML += text.charAt(index);         // Ajoute le caractère actuel au contenu de l'élément.
                index++;                                            // Incrémente l'index.
                setTimeout(typeWriter, 100);                        // Attend 100 ms avant d'ajouter le prochain caractère.
            } else {
                typingText.classList.add('blink-cursor');           // Ajoute la classe 'blink-cursor' à l'élément après avoir terminé le texte.
            }
        }
        typeWriter();                                               // Lance l'animation de la machine à écrire.
    } else {
        console.error("L'élément avec l'ID 'typing-text' est introuvable dans le HTML.");   // Affiche une erreur dans la console si l'élément n'existe pas.
    }


    // IntersectionObserver pour les sections et compétences
    const observer = new IntersectionObserver((entries) => {        // Crée un nouvel observateur pour surveiller l'intersection des éléments.
        entries.forEach(entry => {
            if (entry.isIntersecting) {                             // Vérifie si l'élément est visible dans la fenêtre d'affichage.
                entry.target.classList.add('visible');              // Ajoute la classe 'visible' à l'élément visible.
                observer.unobserve(entry.target);                   // Arrête d'observer l'élément après qu'il est devenu visible.
            }
        });
    }, {
        threshold: 0.1                                              // Seuil de visibilité fixé à 10 %.
    });

    sections.forEach(section => observer.observe(section));                         // Observe chaque section.
    skills.forEach(skill => observer.observe(skill));                               // Observe chaque compétence.
    certifications.forEach(certification => observer.observe(certification));       // Observe chaque certification.
    portfolio.forEach(project => observer.observe(project));    
    parcours.forEach(parcours => observer.observe(parcours));                    // Observe chaque projet.


    // Effet de zoom sur les projets
    projects.forEach(project => {
        project.addEventListener('mouseover', () => project.classList.add('zoom'));         // Ajoute la classe 'zoom' lors du survol.
        project.addEventListener('mouseout', () => project.classList.remove('zoom'));       // Retire la classe 'zoom' lorsque la souris quitte l'élément.
    });


    // Vérifie et applique l'animation s'ils existent
    if (chosenText) {
        chosenText.style.animation = 'move-up-down 2s ease-in-out infinite';                        // Applique l'animation de déplacement sur l'élément choisi.
        if (fingerIcon) fingerIcon.style.animation = 'move-up-down 2s ease-in-out infinite';        // Applique l'animation de déplacement sur l'icône de doigt si elle existe.
    }
});


function toggleSidebar() {
    document.querySelector('.sidebar').classList.toggle('open');        // Ajoute ou retire la classe 'open' à la barre latérale pour l'ouvrir ou la fermer.
}
