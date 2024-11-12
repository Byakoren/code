// Attend que tout le HTML soit chargé avant d'exécuter le code
document.addEventListener('DOMContentLoaded', function () {
    // Sélection de tous les éléments nécessaires dans le DOM
    const sections = document.querySelectorAll('section');                  // Toutes les sections de la page
    const projects = document.querySelectorAll('.project');                 // Tous les projets
    const skills = document.querySelectorAll('.skill');                     // Toutes les compétences
    const certifications = document.querySelectorAll('.certification');     // Toutes les certifications
    const parcours = document.querySelectorAll('.parcours');                // Les sections de parcours
    const typingText = document.getElementById('typing-text');              // L'élément pour l'effet machine à écrire
    const chosenText = document.querySelector('.chosen-text');              // Texte choisi pour animation
    const fingerIcon = document.querySelector('.finger-icon');              // Icône du doigt animée
    const text = "Bienvenue sur le Portfolio de Thomas Gouez !";            // Texte à afficher en machine à écrire
    const sidebar = document.querySelector('.sidebar');                     // La barre de navigation latérale
    const hamburger = document.querySelector('.hamburger');                 // Le bouton hamburger
    let index = 0;                                                          // Compteur pour l'effet machine à écrire
    let typingInterval;                                                     // Variable pour stocker l'intervalle d'animation

    // Fonction pour fermer le menu
    const closeMenu = () => {
        sidebar.classList.remove('open');                                  // Retire la classe 'open' pour masquer la sidebar
    };

    // Ajoute un écouteur d'événement sur chaque lien du menu
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', closeMenu);                        // Ferme le menu lors du clic sur un lien
    });

    // Gestion du bouton hamburger
    hamburger.addEventListener('click', () => {
        sidebar.classList.toggle('open');                                 // Alterne l'état du menu (ouvert/fermé)
    });

    // Configuration du défilement doux pour la navigation
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', function (event) {
            event.preventDefault();                                       // Empêche le comportement par défaut du lien
            
            // Extrait l'ID de la section cible du href
            const targetId = this.getAttribute('href').substring(1);      
            const targetSection = document.getElementById(targetId);      // Récupère l'élément cible

            // Animation de défilement doux vers la section
            if (targetSection) {
                window.scrollTo({
                    top: targetSection.offsetTop,                        // Position de la section cible
                    behavior: 'smooth'                                   // Animation fluide
                });
            }
        });
    });

    // Gestion des clics en dehors du menu
    document.addEventListener('click', (e) => {
        // Vérifie si le clic est en dehors du menu et du bouton hamburger
        if (!sidebar.contains(e.target) && !hamburger.contains(e.target) && sidebar.classList.contains('open')) {
            closeMenu();                                                                                                 // Ferme le menu
        }
    });

    // Fonction d'animation machine à écrire
    function typeWriter() {
        if (index < text.length) {                                     // Vérifie s'il reste des caractères à écrire
            typingText.innerHTML += text.charAt(index);                // Ajoute le caractère suivant
            index++;                                                   // Incrémente le compteur
            typingInterval = setTimeout(typeWriter, 100);              // Programme le prochain caractère
        } else {
            typingText.classList.add('blink-cursor');                  // Active l'animation du curseur
        }
    }

    // Configuration de l'observateur pour l'effet machine à écrire
    if (typingText) {
        const textObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {                           // Si l'élément devient visible
                    typingText.innerHTML = "";                        // Réinitialise le texte
                    typingText.classList.remove('blink-cursor');      // Désactive l'animation du curseur
                    index = 0;                                        // Réinitialise le compteur
                    clearTimeout(typingInterval);                     // Annule l'animation en cours
                    typeWriter();                                     // Démarre une nouvelle animation
                }
            });
        }, {
            threshold: 0.1                                            // Seuil de déclenchement à 10% de visibilité
        });
        textObserver.observe(typingText);                             // Démarre l'observation
    }

    // Configuration de l'observateur pour les animations des sections
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {                             // Si l'élément entre dans la vue
                entry.target.classList.add('visible');              // Ajoute la classe pour l'animation
            } else {
                entry.target.classList.remove('visible');           // Retire la classe d'animation
            }
        });
    }, {
        threshold: 0.1                                             // Seuil de déclenchement à 10% de visibilité
    });

    // Application de l'observateur à tous les éléments animés
    sections.forEach(section => observer.observe(section));                         // Observe les sections
    skills.forEach(skill => observer.observe(skill));                               // Observe les compétences
    certifications.forEach(certification => observer.observe(certification));       // Observe les certifications
    projects.forEach(project => observer.observe(project));                         // Observe les projets
    parcours.forEach(parcours => observer.observe(parcours));                       // Observe les éléments du parcours

    // Gestion des effets de survol sur les projets
    projects.forEach(project => {
        project.addEventListener('mouseover', () => project.classList.add('zoom'));         // Active le zoom au survol
        project.addEventListener('mouseout', () => project.classList.remove('zoom'));       // Désactive le zoom à la sortie
    });

    // Configuration des animations conditionnelles
    if (chosenText) {                                                                   // Vérifie si l'élément existe
        chosenText.style.animation = 'move-up-down 2s ease-in-out infinite';            // Animation de rebond
        if (fingerIcon) {                                                               // Vérifie si l'icône existe
            fingerIcon.style.animation = 'move-up-down 2s ease-in-out infinite';        // Applique la même animation
        }
    }
});