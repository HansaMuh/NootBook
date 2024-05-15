
let notesCount = 0;
function addNote(title = "", content = "", color = "#F3CE0F") {
    console.log("Tombol tambah ditekan");


    let note = document.createElement("div");
    note.className = "note";
    note.style.backgroundColor = color;
    note.id = "note" + (++notesCount);

    let noteInputContainer = document.createElement("div");
    noteInputContainer.className = "note-input";

    let titleInput = document.createElement("textarea");
    titleInput.placeholder = "Judul";
    titleInput.className = "note-judul";
    titleInput.value = title;
    noteInputContainer.appendChild(titleInput);
    titleInput.addEventListener("input", function () { checkOverflow(this); });
    noteInputContainer.appendChild(titleInput);

    let textBox = document.createElement("textarea");
    textBox.placeholder = "Paragraf";
    textBox.className = "note-isi";
    textBox.value = content;
    textBox.addEventListener("input", function () { checkOverflow(this); });
    noteInputContainer.appendChild(textBox);

    note.appendChild(noteInputContainer);

    let noteButtonsContainer = document.createElement("div");
    noteButtonsContainer.className = "note-buttons";

    let colorOptionButton = document.createElement("button");
    colorOptionButton.type = "button";
    colorOptionButton.className = "note-color-option";
    colorOptionButton.textContent = "...";
    colorOptionButton.addEventListener("click", function () {
        showColorOptions(note);
    });
    noteButtonsContainer.appendChild(colorOptionButton);

    let deleteOptionButton = document.createElement("button");
    deleteOptionButton.className = "note-delete-option";
    deleteOptionButton.textContent = "X";
    noteButtonsContainer.appendChild(deleteOptionButton);

    note.appendChild(noteButtonsContainer);

    document.querySelector(".note-container").appendChild(note);

    titleInput.focus();
}

function showColorOptions(note) {
    console.log("Pilihan warna ditampilkan");

    if (!note.querySelector(".color-options")) {
        let colorOptionsContainer = document.createElement("div");
        colorOptionsContainer.className = "color-options";

        let colors = ["#F76161", "#DF49E2", "#F3CE0F", "#FB9B59", "#91C788"];
        colors.forEach(function (color) {
            let colorOption = document.createElement("button");
            colorOption.className = "color-option";
            colorOption.style.backgroundColor = color;
            colorOption.addEventListener("click", function () {
                setColor(color, note);
                colorOptionsContainer.remove();
            });
            colorOptionsContainer.appendChild(colorOption);
        });

        note.querySelector(".note-buttons").appendChild(colorOptionsContainer);
    }
}



function setColor(color, note) {
    console.log("Pilihan warna diubah");
    note.style.backgroundColor = color;
}

function deleteNote(note) {
    note.remove();
}

function checkOverflow(textBox) {
    textBox.style.height = 'auto';
    textBox.style.height = textBox.scrollHeight + 'px';
}

document.querySelector(".tambah").addEventListener("click", function () {
    addNote();
});

document.querySelector(".note-container").addEventListener("click", function (event) {
    if (event.target.classList.contains("note-delete-option")) {
        deleteNote(event.target.closest('.note'));
    }
});
