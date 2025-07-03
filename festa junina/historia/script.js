const items = document.querySelectorAll('.item');
const bandeja = document.getElementById('bandeja');

items.forEach(item => {
  item.addEventListener('dragstart', () => {
    item.classList.add('dragging');
  });

  item.addEventListener('dragend', () => {
    item.classList.remove('dragging');
  });
});

bandeja.addEventListener('dragover', e => {
  e.preventDefault();
  const draggingItem = document.querySelector('.dragging');
  if (draggingItem && !bandeja.contains(draggingItem)) {
    bandeja.appendChild(draggingItem);
  }
});