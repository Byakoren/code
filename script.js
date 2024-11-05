document.addEventListener('DOMContentLoaded', function () {
    const sections = document.querySelectorAll('section');
    const projects = document.querySelectorAll('.project');
    const backToTopButton = document.getElementById('back-to-top');
    const text = "Bonjour, je suis Byakoren, j'ai eu un mewtwo trop jolie aujourd'hui.";
    let index = 0;

    // Animation de frappe pour le titre
    function typeWriter() {
        if (index < text.length) {
            document.getElementById('typing-text').innerHTML += text.charAt(index);
            index++;
            setTimeout(typeWriter, 100);
        }
    }
    typeWriter();

    // Effet de défilement pour les sections
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
            } else {
                entry.target.classList.remove('visible');
            }
        });
    }, {
        threshold: 0.1
    });

    sections.forEach(section => {
        observer.observe(section);
    });

    // Effet de zoom sur les projets
    projects.forEach(project => {
        project.addEventListener('mouseover', () => {
            project.classList.add('zoom');
        });
        project.addEventListener('mouseout', () => {
            project.classList.remove('zoom');
        });
    });

    // Affichage du bouton "Retour en haut"
    window.addEventListener('scroll', () => {
        if (window.scrollY > 300) {
            backToTopButton.style.display = 'block';
        } else {
            backToTopButton.style.display = 'none';
        }
    });

    // Fonctionnalité de retour en haut de page
    backToTopButton.addEventListener('click', () => {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
});

// Apparition de la section BTS SIO lors du défilement
document.addEventListener("DOMContentLoaded", function() {
    const btsSection = document.getElementById("bts-sio");
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                btsSection.classList.add("visible");
                observer.unobserve(entry.target);  // Arrêter d'observer une fois visible
            }
        });
    }, { threshold: 0.5 });
    
    observer.observe(btsSection);
});

// Apparition de la section Certifications lors du défilement
document.addEventListener("DOMContentLoaded", function() {
    const certSection = document.getElementById("certifications");
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                certSection.classList.add("visible");
                observer.unobserve(entry.target);  // Arrêter d'observer une fois visible
            }
        });
    }, { threshold: 0.5 });
    
    observer.observe(certSection);
});

// Apparition des compétences lors du défilement
document.addEventListener("DOMContentLoaded", function() {
    const skills = document.querySelectorAll(".skill");
    
    const observer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add("visible");
                observer.unobserve(entry.target);  // Arrêter d'observer une fois visible
            }
        });
    }, { threshold: 0.5 });
    
    skills.forEach(skill => {
        observer.observe(skill);
    });
});

// Before loading a large image or data
const loadingIndicator = document.getElementById('loading');
loadingIndicator.style.display = 'block';

// After data is loaded
loadingIndicator.style.display = 'none';

