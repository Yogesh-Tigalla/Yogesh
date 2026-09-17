const filters = document.querySelectorAll(".filter");
const cards = document.querySelectorAll(".car-card");

filters.forEach(button => {
  button.addEventListener("click", () => {
    filters.forEach(b => b.classList.remove("active"));
    button.classList.add("active");
    const filter = button.dataset.filter;

    cards.forEach(card => {
      card.style.display = filter === "all" || card.dataset.category === filter ? "" : "none";
    });
  });
});

const modal = document.getElementById("modal");
const modalTitle = document.getElementById("modalTitle");
const closeModal = document.getElementById("closeModal");

document.querySelectorAll(".details").forEach(button => {
  button.addEventListener("click", () => {
    modalTitle.textContent = button.dataset.car;
    modal.classList.add("show");
  });
});

closeModal.addEventListener("click", () => modal.classList.remove("show"));
modal.addEventListener("click", e => {
  if (e.target === modal) modal.classList.remove("show");
});

document.getElementById("modalAction").addEventListener("click", () => {
  modal.classList.remove("show");
});

document.getElementById("contactForm").addEventListener("submit", e => {
  e.preventDefault();
  const name = document.getElementById("name").value.trim();
  document.getElementById("formMessage").textContent =
    `Thanks ${name || "there"}! Your demo request has been received.`;
  e.target.reset();
});
