console.log("VolT OS loaded");

// Flip cards on click
document.querySelectorAll(".card").forEach(card => {
    card.addEventListener("click", () => {
        card.classList.toggle("flipped");
    });
});
