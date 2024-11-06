document.addEventListener('DOMContentLoaded', function () {
    const sections = document.querySelectorAll('section');
    const projects = document.querySelectorAll('.project');
    const skills = document.querySelectorAll('.skill');
    const certifications = document.querySelectorAll('.certification');
    const typingText = document.getElementById('typing-text');
    const text = "Bienvenue sur le Portfolio de Thomas Gouez !";
    let index = 0;

    // Vérifie si l'élément existe bien
    if (typingText) {
        // Effet de frappe
        function typeWriter() {
            if (index < text.length) {
                typingText.innerHTML += text.charAt(index);
                index++;
                setTimeout(typeWriter, 100);
            } else {
                typingText.classList.add('blink-cursor'); // Ajoute le curseur clignotant à la fin
            }
        }

        // Démarre l'effet de frappe
        typeWriter();
    } else {
        console.error("L'élément avec l'ID 'typing-text' est introuvable dans le HTML.");
    }

    // IntersectionObserver pour les sections et compétences
    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                observer.unobserve(entry.target);
            }
        });
    }, {
        threshold: 0.1
    });

    
    sections.forEach(section => observer.observe(section));
    skills.forEach(skill => observer.observe(skill));
    certifications.forEach(certification => observer.observe(certification));

    // Effet de zoom sur les projets
    projects.forEach(project => {
        project.addEventListener('mouseover', () => project.classList.add('zoom'));
        project.addEventListener('mouseout', () => project.classList.remove('zoom'));
    });
});

