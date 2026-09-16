// const menuBtn = document.getElementById("menuBtn");     

// const navLinks = document.getElementById("navLinks");

// menuBtn.addEventListener("click", () => {
//     navLinks.classList.toggle("active");
// });

// // Testimonials Carousel
// const testimonialCards = document.querySelectorAll('.testimonial-card');
// const dots = document.querySelectorAll('.dot');
// let currentTestimonial = 0;

// function showTestimonial(index) {
//     testimonialCards.forEach((card, i) => {
//         card.classList.remove('active');
//         dots[i].classList.remove('active');
//     });
//     testimonialCards[index].classList.add('active');
//     dots[index].classList.add('active');
// }

// dots.forEach((dot, index) => {
//     dot.addEventListener('click', () => {
//         currentTestimonial = index;
//         showTestimonial(currentTestimonial);
//     });
// });

// // Auto-rotate testimonials every 5 seconds
// setInterval(() => {
//     currentTestimonial = (currentTestimonial + 1) % testimonialCards.length;
//     showTestimonial(currentTestimonial);
// }, 5000);

// // Projects Filter
// const filterBtns = document.querySelectorAll('.filter-btn');
// const projectCards = document.querySelectorAll('.project-card');

// filterBtns.forEach(btn => {
//     btn.addEventListener('click', () => {
//         // Remove active class from all buttons
//         filterBtns.forEach(b => b.classList.remove('active'));
//         // Add active class to clicked button
//         btn.classList.add('active');

//         const filter = btn.getAttribute('data-filter');

//         projectCards.forEach(card => {
//             const category = card.getAttribute('data-category');
//             if (filter === 'all' || category === filter) {
//                 card.style.display = 'block';
//             } else {
//                 card.style.display = 'none';
//             }
//         });
//     });
// });

 

