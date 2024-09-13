// TODO: React to a click on the button!
const button = document.getElementById('clickme');

const handleClick = () => {
  button.classList.add('disabled');
  button.setAttribute('disabled', true);

  button.textContent = "Bingo!";

  const audio = new Audio('sound.mp3');
  audio.play().catch((error) => {
    console.log('Audio playback failed:', error);
  });
};

button.addEventListener('click', handleClick);
