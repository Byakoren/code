// Attend que tout le HTML soit chargé avant d'exécuter le code
document.addEventListener('DOMContentLoaded', function () {
    // Sélection de tous les éléments nécessaires dans le DOM
    const sections = document.querySelectorAll('section');                  // Toutes les sections de la page
    const projects = document.querySelectorAll('.project');                 // Tous les projets
    const skills = document.querySelectorAll('.skill');                     // Toutes les compétences
    const certifications = document.querySelectorAll('.certification');     // Toutes les certifications
    const portfolio = document.querySelectorAll('.project');                // Les projets (doublon à supprimer)
    const parcours = document.querySelectorAll('.parcours');                // Les sections de parcours
    const typingText = document.getElementById('typing-text');              // L'élément pour l'effet machine à écrire
    const chosenText = document.querySelector('.chosen-text');              // Texte choisi pour animation
    const fingerIcon = document.querySelector('.finger-icon');              // Icône du doigt animée
    const text = "Bienvenue sur le Portfolio de Thomas Gouez !";            // Texte à afficher en machine à écrire
    const sidebar = document.querySelector('.sidebar');                     // La barre de navigation latérale
    const hamburger = document.querySelector('.hamburger');                 // Le bouton hamburger
    let index = 0;                                                          // Index pour l'effet machine à écrire

    // Fonction pour fermer le menu
    const closeMenu = () => {
        sidebar.classList.remove('open');                          // Retire la classe 'open' pour fermer le menu
    };

    // Ajoute un écouteur d'événement sur chaque lien du menu
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', closeMenu);                 // Ferme le menu quand on clique sur un lien
    });

    // Gestion du clic sur le bouton hamburger
    hamburger.addEventListener('click', () => {
        sidebar.classList.toggle('open');                         // Bascule l'état du menu (ouvert/fermé)
    });

    // Ferme le menu si on clique en dehors du menu et du bouton hamburger
    document.addEventListener('click', (e) => {
        if (!sidebar.contains(e.target) && !hamburger.contains(e.target) && sidebar.classList.contains('open')) {
            closeMenu();
        }
    });

    // Effet machine à écrire
    if (typingText) {                                               // Vérifie si l'élément existe
        function typeWriter() {
            if (index < text.length) {                              // Si on n'a pas fini d'écrire le texte
                typingText.innerHTML += text.charAt(index);         // Ajoute une lettre
                index++;                                            // Passe à la lettre suivante
                setTimeout(typeWriter, 100);                        // Attend 100ms avant la prochaine lettre
            } else {
                typingText.classList.add('blink-cursor');           // Ajoute l'effet de curseur clignotant
            }
        }
        typeWriter();                                               // Lance l'effet machine à écrire
    }

    // Configuration de l'observateur d'intersection pour les animations
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {                             // Si l'élément devient visible
                entry.target.classList.add('visible');              // Ajoute la classe pour l'animation
                observer.unobserve(entry.target);                   // Arrête d'observer cet élément
            }
        });
    }, {
        threshold: 0.1                                         // Déclenche quand 10% de l'élément est visible
    });

    // Applique l'observateur à tous les éléments nécessaires
    sections.forEach(section => observer.observe(section));
    skills.forEach(skill => observer.observe(skill));
    certifications.forEach(certification => observer.observe(certification));
    portfolio.forEach(project => observer.observe(project));
    parcours.forEach(parcours => observer.observe(parcours));

    // Effet de zoom au survol des projets
    projects.forEach(project => {
        project.addEventListener('mouseover', () => project.classList.add('zoom'));         // Ajoute le zoom au survol
        project.addEventListener('mouseout', () => project.classList.remove('zoom'));       // Retire le zoom à la sortie
    });

    // Animations conditionnelles pour le texte choisi et l'icône
    if (chosenText) {                                                               // Si l'élément existe
        chosenText.style.animation = 'move-up-down 2s ease-in-out infinite';        // Animation de haut en bas
        if (fingerIcon) {                                                           // Si l'icône existe aussi
            fingerIcon.style.animation = 'move-up-down 2s ease-in-out infinite';    // Même animation
        }
    }
});