module View exposing (..)

import Html exposing (..)

import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Model exposing (..)

view : Model -> Html Msg
view model =
    div []
        [ navbar
        , section [ class "rubrique" ] [ viewPage model ]
        ]


viewPage : Model -> Html Msg
viewPage model =
    case model of
        Home ->
            homeContent

        Skills ->
            skillsContent

        Xp ->
            xpContent

        School ->
            schoolContent

        Contact ->
            contactContent

        About ->
            aboutContent

        Legal ->
            legalContent


homeContent : Html msg
homeContent =
    div [ class "rubDiv", id "welcome" ]
        [ h2 [ class "hw", id "hwDesktop" ]
            []
        , h2 [ class "hw", id "hwMobile" ]
            [ text "Hello world."
            , span [ class "cursor" ]
                [ text "█" ]
            ]
        , p [ id "msg" ]
            [ text "Bienvenue ! Je suis un jeune "
            , strong []
                [ text "développeur Web" ]
            , text "de 25 ans,"
            , br []
                []
            , text "plein d'idées et de motivation. Consultez mon parcours et n'hésitez pas à me contacter."
            ]
        , p []
            [ a [ class "downloadlink", href "static/cv_nabil_ghedjati_2017.pdf", target "_blank", type_ "application/pdf" ]
                [ text "Télécharger le CV" ]
            ]
        ]


skillsContent : Html msg
skillsContent =
    div [ class "rubDiv", id "one" ]
        [ h2 []
            [ text "Compétences" ]
        , h3 []
            [ text "Opérationnel sur :" ]
        , div [ class "logoSkills", id "skills1" ]
            [ a [ class "devicon-html5-plain-wordmark colored", href "https://www.w3.org/html/", target "_blank", title "HTML5" ]
                []
            , a [ class "devicon-css3-plain-wordmark colored", href "https://www.w3.org/Style/CSS/", target "_blank", title "CSS3" ]
                []
            , a [ class "devicon-javascript-plain colored", href "https://js.org/", target "_blank", title "JavaScript" ]
                []
            , a [ class "devicon-jquery-plain-wordmark colored", href "https://jquery.com/", target "_blank", title "jQuery" ]
                []
            , a [ class "devicon-php-plain colored", href "http://www.php.net/", target "_blank", title "PHP" ]
                []
            , a [ class "devicon-atom-original colored", href "https://atom.io/", target "_blank", title "Atom" ]
                []
            ]
        , div [ class "logoSkills" ]
            [ a [ class "devicon-bootstrap-plain colored", href "http://getbootstrap.com/", target "_blank", title "Bootstrap" ]
                []
            , a [ class "devicon-git-plain colored", href "https://git-scm.com/", target "_blank", title "Git" ]
                []
            , a [ class "devicon-github-plain colored", href "https://github.com/", target "_blank", title "GitHub" ]
                []
            , a [ class "devicon-mysql-plain colored", href "https://www.mysql.fr/", target "_blank", title "MySQL" ]
                []
            , a [ class "devicon-phpstorm-plain colored", href "https://www.jetbrains.com/phpstorm/", target "_blank", title "PHPStorm" ]
                []
            , a [ class "devicon-linux-plain colored", href "https://www.linuxfoundation.org/", target "_blank", title "Linux" ]
                []
            , a [ href "https://cordova.apache.org/", target "_blank", title "Apache Cordova" ]
                [ img [ alt "Cordova Icon", src "static/img/cordova_64.png" ]
                    []
                ]
            ]
        , h4 []
            [ text "Je me forme sur :" ]
        , div [ class "logoSkills" ]
            [ a [ class "devicon-nodejs-plain colored", href "https://nodejs.org/en/", target "_blank", title "Node.JS" ]
                []
            , a [ href "https://www.arduino.cc/", target "_blank", title "Arduino" ]
                [ img [ alt "Arduino Icon", src "static/img/arduino.svg", attribute "style" "width:58px" ]
                    []
                ]
            , a [ class "devicon-vuejs-plain colored", href "https://vuejs.org/", target "_blank", title "Vue.js" ]
                []
            , a [ class "devicon-sass-original colored", href "http://sass-lang.com/", target "_blank", title "Sass" ]
                []
            ]
        ]


xpContent : Html msg
xpContent =
    div [ class "rubDiv", id "two" ]
        [ h2 []
            [ text "Expérience" ]
        , table []
            [ tr []
                [ td [ class "date" ]
                    [ text "Juillet 2014" ]
                , td []
                    [ text "Auxiliaire d'été"
                    , br []
                        []
                    , em []
                        [ text "Société Générale, agence de Thiers" ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "Années scolaires 2012/2014" ]
                , td []
                    [ text "Stagiaire (pendant 17 semaines non consécutives)"
                    , br []
                        []
                    , em []
                        [ text "Caisse d'Épargne Auvergne-Limousin, agence de Thiers"
                        , br []
                            []
                        , text "Société Générale, agences de Beaumont et Thiers"
                        ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "Été 2012" ]
                , td []
                    [ text "Manutentionnaire (par intérim)"
                    , br []
                        []
                    , em []
                        [ text "Brüggen France (céréales)" ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "Été 2009/été 2010" ]
                , td []
                    [ text "Agent d'entretien"
                    , br []
                        []
                    , em []
                        [ text "La Rayonnante (services d’entretien)" ]
                    ]
                ]
            ]
        ]


schoolContent : Html msg
schoolContent =
    div [ class "rubDiv", id "three" ]
        [ h2 []
            [ text "Formation" ]
        , table []
            [ tr []
                [ td [ class "date" ]
                    [ text "2016/2017" ]
                , td []
                    [ strong []
                        [ text "Simplon.co" ]
                    , br []
                        []
                    , em []
                        [ text "Labélisée Grande école du numérique" ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "2014/2015" ]
                , td []
                    [ strong []
                        [ text "Licence Pro Management des collectivités territoriales" ]
                    , br []
                        []
                    , text "(formation uniquement)"
                    , br []
                        []
                    , em []
                        [ text "Université d'Auvergne, CLERMONT-FERRAND" ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "2012 / 2014" ]
                , td []
                    [ strong []
                        [ text "BTS Banque Option Marché des Particuliers" ]
                    , br []
                        []
                    , em []
                        [ text "Lycée Ambroise Brugière, CLERMONT-FERRAND" ]
                    ]
                ]
            , tr []
                [ td [ class "date" ]
                    [ text "2008 / 2010" ]
                , td []
                    [ strong []
                        [ text "Baccalauréat Sciences et Technologies de la Gestion"
                        , br []
                            []
                        , text "spécialité Comptabilité et Finance d'entreprise"
                        ]
                    , br []
                        []
                    , em []
                        [ text "Lycée Montdory, THIERS" ]
                    ]
                ]
            ]
        ]


contactContent : Html msg
contactContent =
    div [ class "rubDiv", id "six" ]
        [ h2 []
            [ text "Contact" ]
        , p [ id "reponseMsg" ]
            []
        , Html.form [ attribute "accept-charset" "UTF-8", id "form", method "POST", name "contactform", attribute "onsubmit" "return verifForm(this)" ]
            [ input [ id "name", name "name", placeholder "Votre nom", type_ "text", value "" ]
                []
            , input [ id "mailaddress", name "mailaddress", placeholder "Votre adresse e-mail", type_ "email", value "" ]
                []
            , textarea [ id "message", name "message", placeholder "Votre message (entre 2 et 1500 caractères)", attribute "rows" "6", value "" ]
                []
            , p [ id "erreurForm" ]
                [ text "Les champs marqués en rouge sont incomplets ou incorrects" ]
            , p [ id "okForm" ]
                []
            , button [ id "sendbutton", name "send", type_ "submit" ]
                [ text "Envoyer" ]
            ]
        , p [ class "credits" ]
            [ text "© 2017 Nabil Ghedjati" ]
        ]


aboutContent : Html Msg
aboutContent =
    div []
        [ div [ class "rubDiv", id "four" ]
            [ h2 []
                [ text "À propos" ]
            , br []
                []
            , table []
                [ tr []
                    [ td [ class "date" ]
                        [ text "Langues" ]
                    , td []
                        [ text "Français (langue maternelle)"
                        , br []
                            []
                        , text "Anglais (courant)"
                        ]
                    ]
                , tr []
                    [ td [ class "date" ]
                        [ text "Centres d'intérêts" ]
                    , td []
                        [ text "Cinéma, nouvelles technologies, sports de montagne,"
                        , br []
                            []
                        , text "tennis, photographie, musique"
                        ]
                    ]
                ]
            , p [ class "credits" ]
                [ text "© 2017 Nabil Ghedjati.  "
                , a [ onClick <| Go Legal, id "legallink" ]
                    [ strong []
                        [ text "Mentions légales" ]
                    ]
                ]
            ]
        ]


legalContent : Html msg
legalContent =
    div [ class "rubDiv", id "five" ]
        [ h2 []
            [ text "Mentions légales" ]
        , p [ class "credits" ]
            [ text "Créateur et propriétaire : Nabil Ghedjati"
            , br []
                []
            , text "Ce site est hébergé par "
            , a [ href "https://shost.ca/", target "_blank" ]
                [ text "sHost.ca" ]
            , text ", Nouveau-Brunswick & Québec, Canada."
            , br []
                []
            , text "Il fonctionne de manière optimale sur les navigateurs Chrome et Firefox."
            , br []
                []
            , br []
                []
            , text "The PHP logo is Copyright © 2001-2017 the PHP Group. All rights reserved."
            , br []
                []
            , text "The jQuery logo is Copyright © 2017 The jQuery Foundation"
            , br []
                []
            , text "Crédits photo : "
            , a [ href "https://unsplash.com/photos/Y1ByvAGQ5iE", target "_blank" ]
                [ text "Unsplash.com" ]
            , br []
                []
            , br []
                []
            , text "© 2017 Nabil Ghedjati"
            ]
        ]


navItem : String -> String -> String -> Page -> Html Msg
navItem titleText idValue label page =
    li []
        [ a [ title titleText, id idValue, onClick <| Go page ] [ text label ] ]


navbar : Html Msg
navbar =
    header []
        [ ul [ class "navbar" ]
            [ span [ class "leftLinks" ]
                [ navItem "Accueil" "button0" "Nabil.Ghedjati" Home
                , navItem "Compétences" "button1" "Compétences" Skills
                , navItem "Expérience" "button2" "Expérience" Xp
                , navItem "Formation" "button3" "Formation" School
                ]
            , span [ class "rightLinks" ]
                [ li [ class "right", id "about" ]
                    [ a [ title "À propos", onClick <| Go About ] [ text "À propos" ]
                    ]
                , li [ class "right", id "github" ]
                    [ a [ title "GitHub", class "fa fa-github", target "_blank" ] []
                    ]
                , li [ class "right", id "linkedin" ]
                    [ a [ title "LinkedIn", class "fa fa-linkedin", target "_blank" ] []
                    ]
                , li [ class "right", id "insta" ]
                    [ a [ title "Instagram", class "fa fa-instagram", target "_blank" ] []
                    ]
                , li [ class "right", id "twitter" ]
                    [ a [ title "Twitter", class "fa fa-twitter", target "_blank" ] []
                    ]
                , li [ class "right", id "mail" ]
                    [ a [ title "Contact", class "fa fa-envelope", onClick <| Go Contact ] []
                    ]
                ]
            ]
        ]
