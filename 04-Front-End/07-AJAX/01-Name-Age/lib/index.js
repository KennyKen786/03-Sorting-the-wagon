const apiUrl = "https://api.dictionaryapi.dev/api/v2/entries/en/";

const displayDefinition = async (event) => {
  event.preventDefault();

  const word = document.getElementById("word").value;

  const url = `${apiUrl}${word}`;

  try {
    const response = await fetch(url);

    if (!response.ok) {
      throw new Error("Word not found");
    }

    const data = await response.json();

    const firstDefinition = data[0].meanings[0].definitions[0].definition;


    const definitionElement = document.getElementById("definition");
    definitionElement.innerText = firstDefinition;
  } catch (error) {
    const definitionElement = document.getElementById("definition");
    definitionElement.innerText = `Error: ${error.message}`;
  }
};

const form = document.getElementById("fetch-word");
form.addEventListener("submit", displayDefinition);
