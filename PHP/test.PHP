<!DOCTYPE html>

<html lang="fr">

    <head>
        <meta charset="utf-8">
        <title>Mon site.</title>
        <link href="../CSS/test.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    </head>

    <body>
        <main>
            <section>
                <div style="display: grid; place-items: center;">
                    <a href="https://x.com/"><img src="https://cdn.discordapp.com/emojis/1119637397009879131.gif?size=56&quality=lossless" alt="feur" title="clique moi dessus" width="150" height="150"></a><br>
                    <a href="#ancre_liste">vers ma liste</a>
                    <a href="#ancre_chat">Vers mes chats</a>
                </div>
            </section>

            <section>
                <h1>Ceci est un titre inspiratif.</h1>
                    <p>Mais, vous savez, moi je ne crois pas qu’il y ait de bonne ou de mauvaise situation. Moi, si je devais résumer ma vie aujourd’hui avec vous, je dirais que c’est d’abord des rencontres, des gens qui m’ont tendu la main, peut-être à un moment où je ne pouvais pas, où j’étais seul chez moi. Et c’est assez curieux de se dire que les hasards, les rencontres forgent une destinée… Parce que quand on a le goût de la chose, quand on a le goût de la chose bien faite, le beau geste, parfois on ne trouve pas l’interlocuteur en face, je dirais, le miroir qui vous aide à avancer. Alors ce n’est pas mon cas, comme je le disais là, puisque moi au contraire, j’ai pu ; et je dis merci à la vie, je lui dis merci, je chante la vie, je danse la vie… Je ne suis qu’amour ! Et finalement, quand beaucoup de gens aujourd’hui me disent : « Mais comment fais-tu pour avoir cette humanité ? » Eh bien je leur réponds très simplement, je leur dis que c’est ce goût de l’amour, ce goût donc qui m’a poussé aujourd’hui à entreprendre une construction mécanique, mais demain, qui sait, peut-être simplement à me mettre au service de la communauté, à faire le don, le don de soi…</p>
                    <p>Feur.</p>
            </section>

            <section>
            <ul><h2 id="ancre_liste">Liste sans description</h2>
                <li>Les chats c'est bien,</li>
                <li>Les chiens un peu moins,</li>
                <li>Les loutres c'est choupis,</li>
                <li>Mais faut pas oublier que l'âne c'est fait le dragon. </li>
            </ul>
        </section>

        <section>
            <h3 id="ancre_chat">Mes chats d'amour.</h3>
                <p>Je vais donc vous présenter mes chats d'amour en commençant par la plus belle.</p>
                <div style="display: grid; place-items: center;">
                    <img src="https://cdn.discordapp.com/attachments/646091003723513866/1300824151732519015/20240725_111138.jpg?ex=67223e65&is=6720ece5&hm=cd4e95bc75e856922567cda162cea3a878ecd14407cfe2ebfb61d7af806e6611&" alt="feur" title="MA GROSSE CHATTE." width="200" height="250">
                </div>
                <p>Ensuite voici le petit chat Lime.</p>
                <div style="display: grid; place-items: center;">
                    <img src="https://cdn.discordapp.com/attachments/524677061151948821/1298772215751508000/20241023_181618.jpg?ex=672207a2&is=6720b622&hm=cbe70f2146bd32369c8b0c66cce7673a8e6777ce853fcf4d4e6456d4b6ab24b5&" alt="feur" title="Le jugé pas il est HPI." width="200" height="250">
                </div>
                <p>Je ne le présente plus tout le monde le connait déjà....</p>
                <div style="display: grid; place-items: center;">
                    <img src="https://cdn.discordapp.com/attachments/646091003723513866/1300831250348642426/20230221_161201.jpg?ex=67224502&is=6720f382&hm=4f367b7918cd898593200fbc30c05c1cb58b45128808844ea21b20a56203b1fa&" alt="feur" title="Tommy c'est toi?" width="250" height="200">
                </div>
                <p>Puisqu'on est pas raciste je vous mets quand même une photo de chien.</p>
                <div style="display: grid; place-items: center;">
                    <img src="https://cdn.discordapp.com/attachments/646091003723513866/1300832461973884999/20230518_170044.jpg?ex=67224623&is=6720f4a3&hm=004b1c8e36db4fbffa3aefeb9616a3a0b25f3113d99c0ba3fd89c31aaf7ec42d&" alt="feur" title="Il est largement moins beau que les chats" width="250" height="200">
                </div>
        </section>

        <!-- Exemple de liste de bouton radio. -->
        <section>
            <form method="get" action="">
                    <fieldset>
                        <legend>Quel est votre âge?</legend>
                        <p>
                            Veuillez indiquer la tranche d'âge dans laquelle vous vous situez :<br>
                            <input type="radio" name="age" value="moins15" id="moins15"> <label for="moins15">Moins de 15 ans</label><br>
                            <input type="radio" name="age" value="medium15-25" id="medium15-25"> <label for="medium15-25">15-25 ans</label><br>
                            <input type="radio" name="age" value="medium25-40" id="medium25-40"> <label for="medium25-40">25-40 ans</label><br>
                            <input type="radio" name="age" value="plus40" id="plus40"> <label for="plus40">Plus de 40 ans</label>
                        </p>
                    </fieldset>

        <!-- Exemple de liste de cases à cocher. -->
        <section>
            <form method="get" action="">
                <fieldset>
                    <Legend>Langage</Legend>
                    <p>
                        Cochez les langages que maîtrisez :<br>
                        <input type="checkbox" name="frites" id="frites"> <label for="frites">BYTHON</label><br>
                        <input type="checkbox" name="steak" id="steak"> <label for="steak">HTML</label><br>
                        <input type="checkbox" name="epinards" id="epinards"> <label for="epinards">CSS</label><br>
                        <input type="checkbox" name="huitres" id="huitres"> <label for="huitres">java</label>
                    </p>
                </fieldset>
                </form>
        </section>

        <!-- Exemple de liste déroulante  -->
        <section>
            <form method="get" action="">
                <fieldset>
                    <legend>BTS</legend>
                    <p>
                        <label for="pays">Dans quel BTS êtes vous?</label><br>
                        <select name="pays" id="pays">
                            <option value="espagne">SIO</option>
                            <option value="royaume-uni">Banque</option>
                            <option value="canada">MGO</option>
                            <option value="japon">BTS?</option>
                        </select>
                    </p>
                </fieldset>

                <fieldset>
                    <legend>Vos coordonées</legend>
                    <label for="prenom">Prénom</label>
                    <input type="text" name="prenom" id="prenom">
                    <label for="nom">Nom de famille</label>
                    <input type="text" name="nom" id="nom">
                    <label for="e-mail">Email</label>
                    <input type="email" name="email" id="email" autofocus required >
                    <input type="submit" value="Clique si t'es un bonhomme.">
                </fieldset>
            </form>
        </section>
    </main>
</body>
</html>



p {
    color: #A5B4FC;
    text-align: center;
    font-size: 1.5em;
}
li {
    color:crimson ;
    font-size: 1.5em;

    
}
h1 , h2, h3{
    color: black;
    text-align: center;
    font-family: "Lobster", sans-serif;
    font-size: 3em;
}

body {
    background: #0F2027;  /* fallback for old browsers */
    background: -webkit-linear-gradient(to right, #2C5364, #203A43, #0F2027);  /* Chrome 10-25, Safari 5.1-6 */
    background: linear-gradient(to right, #2C5364, #203A43, #0F2027); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    

}

.carre {
    width: 150px;
    height: 150px;
    background-color: white;
    border: 1px solid #ccc;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 20px auto;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
}

.carre p {
    font-size: 1em;
    color: #333;
    margin: 0;
}

input[type='submit'] {
    margin-top: 20px;
    font-size: 1em;
}
fieldset {
    background-color: #404446 ;
    width: 70% ;
    margin: auto;
    padding: 10px ;
    margin-bottom: 20px;
    border-radius: 10px;
}

legend {
    color: white;
    font-size: 1.3em;
}