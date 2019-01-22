function cookies() {
  window.addEventListener("load", () => {
    window.cookieconsent.initialise({
      "palette": {
        "popup": {
          "background": "#aa0000",
          "text": "#ffdddd"
        },
        "button": {
          "background": "#ff0000"
        }
      },
      "showLink": false,
      "theme": "classic",
      "position": "bottom-right",
      "content": {
        "message": "W ramach naszej strony stosujemy pliki cookies w celu świadczenia usług na najwyższym poziomie, dzięki czemu dostosowuje się ona do Państwa indywidualnych potrzeb. Korzystanie z witryny bez zmiany ustawień cookies oznacza, że będą one zamieszczane w Państwa urządzeniu końcowym. ",
        "dismiss": "Rozumiem!"
      }
    })
  });
}

export {
  cookies
};
