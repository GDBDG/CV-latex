# CV-latex
This CV template is designed to be very simple to use. The document structure is defined in the cls file (no need to touch), the only thing you need to do is to complete the files in the folder ``data`` (it contains all the necessary value, like the name, the experiences, ...).
Unless you know what you are doing and want to custom this CV, you don't have to modify the other files. Especially you don't need to open the folder ``src``

This CV use literally variables for the data, with setters (``\setvarname``), or methods to add an element in a biggger variable (for example the professionnal experiences are stored in a variable ``experiences``), and the command ``\addexperience`` will add one experience to the list.

## Options
This document takes the options provided by the class ``article``, but be carefull, the result might be strange.
It provides also options to change the color very easily.
* With no options, it uses the colors defined in the file ``src/colors_settings.tex``. (You don't need to touch or understand this file)
* With the option ``nocolor``, all the colors are changed in black. (defined in the file ``src/no_colors_settings.)

## The contact values and languages competences
All the contact values and languages data are defined in the file ``data/metadata.tex``. There are already the setters, with explicit names, please just put your content, that will be displayed in the document.

## The skills
The skills values are defined in the file ``data/skills_data.tex``. 
This file use 2 commands : 
* \cvskill[3] : 
    * #1 : the name of the skill (for example python)
    * #2 : name of the image with the skill's logo, in the folder ``image``. (For example ``tensorflow.jpg``). This argument can be empty if you don't want to add a logo. (it is displayed with ``\includegraphics{#2}``)
    * #3 : a grade of your competence (between 0 and 1)
* \addskill[1] : this command add your skill defined with \cvskill in the skill list that is displayed in the document.
    * #1 : content to add in the skill list, it is strongly recommended to use \cvskill in this field.

## The hobbies
The hobbies values are defined in the file ``data/hobbies_data.tex``.
This file uses 1 command : 
* \addinterest[2] : this command add your interest in the list that is displayed in the document.
    * #1 the logo of the hobby (recommended to use a logo defined with the package [fontawesome5](https://latexdraw.com/wp-content/uploads/2021/01/fontawesome5_2.pdf)). It can be empty.
    * #2 : the name of the jobby

## The commands cvevent and divider

The command ``\cvevent`` is used for the education and experience fields
* \cvevent[6] : this command defines a cv field, with the name, the school/compagny, time period, geographical location, description, and an optional logo of the school/compagny
    * #1 : Name of the formation/name of the job
    * #2 : Name of the school/compagny, _(it is printed with the color ``compagny``, defined on the color_settings file, ignore unless you want to customize the colors)_
    * #3 : Time period
    * #4 : Geographical location
    * #5 : Description of the job / formation. This text is printed with ``\small`` font. 
    * #6 : file with the scholl/compagny logo (must be in the directory ``image``)

The command ``\divider``draw a separation line (color ``dividercol``, lightgray by default). You can use it before a cvevent in the education or experience fields
## The education
The education data are defined in the file ``data/formation_data.tex``. This file uses 1 command (and ``\cvevent``) : 

* \addformation[1] : it add a formation that will be displayed in the section Formation. It is strongly recommended to use ``\cvevent`` for the content.
    * #1 : content for a formation, you should use ``\cvevent``. With it you can use \divider (for ex : \addformation{\divider \cvevent{...}})

## The experience 
Exactly the same principe as the education, but for the professionnal experience
It uses the command ``\addexperience``, which works exactly like ``\addformation``.

## Technical documentation

If you are a casual user, who only wants to make his CV, with no understanding of the sources, and who doesn't need to change the configuration, you don't need to reed this part, it uses more complex LaTeX concepts, and might be hard to understand.

### 