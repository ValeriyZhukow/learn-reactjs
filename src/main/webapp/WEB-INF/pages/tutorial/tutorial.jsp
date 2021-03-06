<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/tutorial" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<c:url var="basicsUrl" value="/basics/topics"/>
<c:url var="codepen1Url" value="https://codepen.io/gaearon/pen/gWWZgR?editors=0010"/>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page create-new-react-app">
    <h1>Учебник: введение в React</h1>

    <br/>

    <p class="introduction">
        Данный учебник не предполагает каких-либо знаний React.
    </p>

    <a name="before-start"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Перед тем как начнём</h2>
    <br/>

    <p>
        В данном разделе мы создадим небольшую игру. <b>У вас может возникнуть
        соблазн пропустить его, так как вы не пишете игры - не делайте такое поспешное решение.</b>
        Методы, которые вы здесь изучите, имеют основополагающее
        значение для создания любых React приложений, а их освоение даст вам
        глубокое понимание React.
    </p>

    <app:alert title="Подсказка" type="success">
        Этот учебник предназначен для людей, которые желают учиться на практике.
        Если же вы предпочитаете изучать теоретические концепции с нуля, ознакомьтесь
        с нашим <b><a href="${basicsUrl}">пошаговым руководством</a></b>.
        Также вы можете найти пошаговое руководство и данный учебник дополняющими друг друга.
    </app:alert>

    <p>Учебник состоит из нескольких разделов:</p>

    <ul>
        <li>
            <p>
                <b><a href="#setup">Установка</a></b>. Даст вам отправную точку, чтобы следовать учебнику.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#overview">Обзор</a></b>. Познакомит вас с основами React: компонентами, свойствами и состоянием.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#completing-the-game">Завершение игры</a></b>. Научит вас наиболее распространенным методам разработки в React.
            </p>
        </li>
        <li>
            <p>
                <b><a href="#add-time-travel">Добавление Time Travel</a></b>. Даст вам более глубокое понимание уникальных преимуществ React.
            </p>
        </li>
    </ul>

    <p>
        Вам не обязательно изучать полностью все разделы, чтобы извлечь пользу из этого учебника.
        Постарайтесь добраться как можно дальше - даже если это одна или две главы.
    </p>

    <p>
        Во время изучения можно копировать и вставлять код, но
        мы рекомендуем набирать его вручную. Это поможет вам развить мышечную
        память и получить более глубокое понимание происходящего.
    </p>

    <a name="what-are-we-building"></a>
    <br/>
    <h3>Что мы разрабатываем?</h3>
    <br/>

    <p>
        В этом учебнике мы покажем, как создать интерактивную
        игру в крестики-нолики используя React.
    </p>

    <p>
        Вы можете увидеть, что именно мы будем разрабатывать здесь: <b><a href="${codepen1Url}">Окончательный
        результат</a></b>. Если код для вас непонятен, или если вы не знакомы с синтаксисом,
        не беспокойтесь! Цель учебника - помочь вам понять React и его синтаксис.
    </p>

    <p>
        Мы рекомендуем вам ознакомиться с игрой в крестики-нолики, прежде чем
        продолжить обучение. Одна из особенностей, которую вы заметите, это то, что
        справа от игрового поля есть нумерованный список. Данный список содержит историю
        всех ходов, произошедших в игре, обновляясь по ходу игры.
    </p>

    <p>
        Наш следующий шаг - произвести необходимые настройки, чтобы
        вы могли начать создавать игру.
    </p>

    <a name="prerequisites"></a>
    <br/>
    <h3>Предварительные требования</h3>
    <br/>

    <p>
        Мы предполагаем, что вы немного знакомы с HTML и JavaScript. Но даже если
        вы переходите с другого языка программирования, вы должны быть способны понимать
        то, о чем идет речь в этих главах. Мы также предполагаем, что вы знакомы с
        такими понятиями программирования, как <b>функции</b>, <b>объекты</b>,
        <b>массивы</b> и, возможно в меньшей степени, <b>классы</b>.
    </p>
    
    <ad:ad-content-banner-1/>

    <c:url var="javascriptLearnUrl" value="https://learn.javascript.ru/"/>
    <c:url var="javascriptGuideUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/A_re-introduction_to_JavaScript"/>
    <c:url var="arrowАunctionsUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Functions/Arrow_functions"/>
    <c:url var="сlassesUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Classes"/>
    <c:url var="letUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Statements/let"/>
    <c:url var="constUrl" value="https://developer.mozilla.org/ru/docs/Web/JavaScript/Reference/Statements/const"/>
    <c:url var="babelREPLUrl" value="https://babeljs.io/repl/#?presets=react&code_lz=MYewdgzgLgBApgGzgWzmWBeGAeAFgRgD4AJRBEAGhgHcQAnBAEwEJsB6AwgbgChRJY_KAEMAlmDh0YWRiGABXVOgB0AczhQAokiVQAQgE8AkowAUAcjogQUcwEpeAJTjDgUACIB5ALLK6aRklTRBQ0KCohMQk6Bx4gA"/>

    <p>
        Если вам нужно повторить JavaScript, можно использовать <b><a href="${javascriptGuideUrl}">данное
         руководство</a></b> (хотя лично я предпочитаю <b><a href="${javascriptLearnUrl}">это руководство</a></b>). Обратите внимание,
        что в данном учебнике мы используем некоторые функции
        ES6 - недавней версии JavaScript: <b><a href="${arrowАunctionsUrl}">функции-стрелки</a></b>,
        <b><a href="${сlassesUrl}">классы</a></b>, операторы <b><a href="${letUrl}">let</a></b> и
        <b><a href="${constUrl}">const</a></b>. Вы можете использовать <b><a href="${babelREPLUrl}">Babel REPL</a></b>, чтобы проверить,
        во что компилируется код ES6.
    </p>

    <a name="installation"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Установка</h2>
    <br/>

    <p>
        Освоить данное руководство можно двумя способами: вы можете либо писать
        код в своем браузере, либо настроить локальную среду разработки на своем компьютере.
    </p>

    <a name="first-installation-variant"></a>
    <br/>
    <h3>1-й вариант установки</h3>
    <br/>

    <p>Это самый быстрый способ начать работу!</p>

    <c:url var="codepen2Url" value="https://codepen.io/gaearon/pen/oWWQNa?editors=0010"/>

    <p>
        Сначала откройте <b><a href="${codepen2Url}">этот стартовый код</a></b> в новой вкладке. Новая вкладка
        должна отображать пустую игровую доску в крестики-нолики и код React.
        В этом учебнике мы будем редактировать код React.
    </p>

    <p>
        Теперь вы можете пропустить второй вариант установки и
        перейти к разделу «<b><a href="#overview">Обзор</a></b>», чтобы приступить к обзору React.
    </p>

    <a name="second-installation-variant"></a>
    <br/>
    <h3>2-й вариант: локальная среда разработки</h3>
    <br/>

    <p>
        Это исключительно по желанию и совершенно не обязательно для данного учебника!
    </p>

    <p>
        <b>
            Необязательно: инструкции для разработки локально с помощью предпочитаемого вами текстового редактора.
        </b>
    </p>

    <p>
        Данная установка потребует больше времени и сил, но позволяет вам освоить учебник,
        используя предпочитаемый вами редактор (например WebStorm). Выполните следующие шаги:
    </p>

    <c:url var="nodejsUrl" value="https://nodejs.org/en/"/>
    <c:url var="newAppUrl" value="/introduction/create-a-new-react-app#create-react-app"/>

    <ol>
        <li>
            <p>
                Убедитесь, что у вас установлена последняя версия <b><a href="${nodejsUrl}">Node.js</a></b>.
            </p>
        </li>

        <li>
            <p>
                Следуйте <b><a href="${newAppUrl}">инструкциям по установке Create React App</a></b>, чтобы создать новый проект.
            </p>

            <ce:code-example-1/>
        </li>

        <li>
            <p>
                Удалите все файлы в папке <code>src/</code> нового проекта.

                <app:alert title="Внимание!" type="warning">
                    <b>Не удаляйте всю папку <code>src</code>, только файлы c кодом внутри нее.
                        На следующем шаге мы заменим эти файлы примерами, необходимыми для нашего проекта.</b>
                </app:alert>

                <ce:code-example-2/>
            </p>
        </li>

        <c:url var="codepenCssUrl" value="https://codepen.io/gaearon/pen/oWWQNa?editors=0100"/>

        <li>
            <p>
                Добавьте файл с именем <code>index.css</code> в папку <code>src/</code>
                с <b><a href="${codepenCssUrl}">этим кодом CSS</a></b>.
            </p>
        </li>

        <c:url var="codepenJsUrl" value="https://codepen.io/gaearon/pen/oWWQNa?editors=0010"/>

        <li>
            <p>
                Добавьте файл с именем <code>index.js</code> в папку <code>src/</code>
                с <b><a href="${codepenJsUrl}">этим кодом JS</a></b>.
            </p>
        </li>

        <li>
            <p>
                Добавьте следующие три строки в начало файла <code>index.js</code> в папке <code>src/</code>:

                <ce:code-example-3/>
            </p>
        </li>
    </ol>

    <p>
        Теперь, если вы запустите <code>npm start</code> в папке проекта и откроете <code>http://localhost:3000</code>
        в браузере, вы должны увидеть пустое поле крестики-нолики.
    </p>

    <c:url var="syntaxHighlitingUrl" value="https://babeljs.io/docs/en/editors/"/>

    <p>
        Также мы рекомендуем следовать <b><a href="${syntaxHighlitingUrl}">данным инструкциям</a></b>, чтобы
        настроить подсветку синтаксиса в вашем редакторе.
    </p>

    <a name="help"></a>
    <br/>
    <h3>Помогите, я застрял!</h3>
    <br/>

    <c:url var="communitySupportUrl" value="https://reactjs.org/community/support.html"/>
    <c:url var="reactifluxChatUrl" value="https://discordapp.com/invite/0ZcbPKXt5bZjGY5n"/>

    <p>
        Если вы застряли, посетите ресурсы <b><a href="${communitySupportUrl}">сообщества поддержки</a></b>. В частности,
        <b><a href="${reactifluxChatUrl}">Reactiflux Chat</a></b> - отличный способ быстро получить помощь. Если же вы не
        получили ответа или зашли в тупик, пожалуйста, сообщите нам в Git о проблеме, и мы вам поможем.
    </p>

    <a name="overview"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Обзор</h2>
    <br/>

    <p>
        Теперь, когда вы произвели всю необходимую установку, давайте познакомимся с React!
    </p>

    <a name="what-is-react"></a>
    <br/>
    <h3>Что такое React?</h3>
    <br/>

    <p>
        React - это декларативная, эффективная и гибкая библиотека JavaScript
        для создания пользовательских интерфейсов (UI). Она позволяет вам создавать
        сложные UI из небольших и изолированных частей
        кода, называемых «<b>компонентами</b>».
    </p>

    <p>
        В React есть несколько разных типов компонентов, но мы
        начнем с подклассов <code>React.Component</code>:
    </p>

    <ce:code-example-4/>

    <p>
        Cкоро мы перейдем к забавным XML-подобным тегам. Мы используем
        компоненты, чтобы сообщить React, что именно мы хотим видеть на экране.
        Когда наши данные изменятся, React будет эффективно обновлять и
        повторно отрисовывать наши компоненты.
    </p>

    <p>
        Здесь <code>ShoppingList</code> - это класс компонента React или тип компонента React.
        Компонент принимает параметры, называемые <code>props</code> (сокращение от <code>properties</code> - свойства), и
        возвращает иерархию представлений, отображаемых с помощью метода <code>render</code>.
    </p>

    <p>
        Метод <code>render</code> возвращает описание того, что именно вы хотите видеть на экране.
        React берет это описание и отображает результат. В частности, <code>render</code> возвращает
        <b>элемент React</b>, который и представляет собой легковесное описание того, что нужно
        отрисовать. Большинство разработчиков React используют специальный синтаксис
        под названием <b>JSX</b>, который облегчает написание этих структур. Синтаксис <code>&lt;div/&gt;</code> преобразуется
        во время сборки в <code>React.createElement('div')</code>. Пример выше эквивалентен:
    </p>

    <ce:code-example-5/>

    <c:url var="codepen3Url" value="https://babeljs.io/repl/#?presets=react&code_lz=DwEwlgbgBAxgNgQwM5IHIILYFMC8AiJACwHsAHUsAOwHMBaOMJAFzwD4AoKKYQgRlYDKJclWpQAMoyZQAZsQBOUAN6l5ZJADpKmLAF9gAej4cuwAK5wTXbg1YBJSswTV5mQ7c7XgtgOqEETEgAguTuYFamtgDyMBZmSGFWhhYchuAQrADc7EA"/>

    <p><b><a href="${codepen3Url}">Смотрите полную версию примера здесь.</a></b></p>

    <c:url var="refCreateElementUrl" value="/reference/react#react.create-element"/>

    <p>
        Если вам интересно, <code>createElement()</code> более подробно
        описан в <b><a href="${refCreateElementUrl}">справочнике по API</a></b>,
        но мы не будем пользоваться им в этом учебнике. Вместо него мы
        будем продолжать использовать JSX.
    </p>

    <p>
        JSX включает в себя JavaScript. Вы можете поместить любые
        выражения JavaScript в фигурные скобки внутри JSX. Любой <code>React элемент</code>
        представляет собой объект JavaScript, который вы можете сохранить в
        переменной или передать куда-либо в своей программе.
    </p>
    
    <ad:ad-content-banner-2/>

    <p>
        Компонент <code>ShoppingList</code> выше отрисовывает только нативные
        компоненты DOM, такие как <code>&lt;div /&gt;</code> и <code>&lt;li /&gt;</code>. Но вы также можете
        создавать и отрисовывать пользовательские компоненты React. Например,
        теперь мы можем ссылаться на весь список покупок, написав <code>&lt;ShoppingList /&gt;</code>. Каждый
        компонент React инкапсулирован и может работать независимо; это позволяет
        создавать сложные пользовательские интерфейсы из простых компонентов.
    </p>

    <a name="inspecting-the-starter-code"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Проверка стартового кода</h2>
    <br/>

    <c:url var="codepen4Url" value="https://codepen.io/gaearon/pen/oWWQNa?editors=0010"/>

    <p>
        Если вы собираетесь работать с учебником <b>в своем браузере</b>,
        откройте этот код в новой вкладке: <b><a href="${codepen4Url}">стартовый код</a></b>. Если вы
        собираетесь работать над учебником в <b>локальной среде</b>,
        откройте <code>src/index.js</code> в папке вашего проекта (вы уже
        коснулись этого файла во время установки).
    </p>

    <p>
        Этот стартовый код является основой того, что мы строим. Мы предоставили
        стили CSS, так что вам нужно сосредоточиться только на изучении React и
        программировании игры в крестики-нолики.
    </p>

    <p>Изучив код, вы заметите, что у нас есть три компонента React:</p>

    <ul>
        <li>
            <p>Square</p>
        </li>
        <li>
            <p>Board</p>
        </li>
        <li>
            <p>Game</p>
        </li>
    </ul>

    <p>
        Компонент <code>Square</code> отображает одиночную кнопку <code>&lt;button&gt;</code>, а <code>Board</code> отображает 9
        квадратов. Компонент <code>Game</code> отображает <code>Board</code> со значениями чисел-заполнителей,
        которые мы изменим позже. В настоящее время интерактивные компоненты отсутствуют.
    </p>

    <a name="passing-data-through-props"></a>
    <br/>
    <h3>Передача данных с помощью props</h3>
    <br/>

    <p>
        Для эксперимента, давайте попробуем передать некоторые
        данные из нашего компонента <code>Board</code> в компонент <code>Square</code>.
    </p>

    <p>
        В методе <code>renderSquare</code> компонента <code>Board</code> измените
        код, чтобы передать свойство с именем <code>value</code> в компонент <code>Square</code>:
    </p>

    <ce:code-example-6/>

    <p>
        Измените метод <code>render</code> компонента <code>Square</code>, чтобы он
        отображал это значение, поменяв <code>{/ * TODO * /}</code> на <code>{this.props.value}</code>:
    </p>

    <ce:code-example-7/>

    <p>До:</p>

    <p class="text-center" style="overflow-x: auto">
        <img src="https://reactjs.org/static/tictac-empty-1566a4f8490d6b4b1ed36cd2c11fe4b6-a9336.png"/>
    </p>

    <p>После: вы должны увидеть число в каждом квадрате в отрисованном выводе.</p>

    <p class="text-center" style="overflow-x: auto">
        <img src="https://reactjs.org/static/tictac-numbers-685df774da6da48f451356f33f4be8b2-be875.png"/>
    </p>

    <c:url var="codepen5Url" value="https://codepen.io/gaearon/pen/aWWQOG?editors=0010"/>

    <p><b><a href="${codepen5Url}">Посмотреть полный код.</a></b></p>

    <p>
        Поздравляем! Вы только что «передали свойство» из родительского
        компонента <code>Board</code> в дочерний компонент <code>Square</code>. Передача свойств - это то,
        как информация передается от родителей к потомкам в приложениях React.
    </p>

    <a name="making-an-interactive-component"></a>
    <br/>
    <h3>Создание интерактивного компонента</h3>
    <br/>

    <p>
        Давайте заполнять компонент <code>Square</code> значением «<code>X</code>», когда
        мы щелкаем по нему. Сначала измените тег кнопки, который возвращается
        из функции <code>render()</code> компонента <code>Square</code>, следующим образом:
    </p>

    <ce:code-example-8/>

    <p>
        Если мы сейчас нажмем на Square, то должны
        получить предупреждение в нашем браузере.
    </p>

    <app:alert title="Внимание!" type="warning">
        <p>
            Чтобы сохранить типизацию и избежать запутанного поведения, мы
            будем использовать синтаксис функции-стрелки для обработчиков событий здесь и далее в коде:
        </p>

        <ce:code-example-9/>

        <p>
            Обратите внимание, что с помощью <code>onClick = {() => alert ('click')}</code> мы
            передаем функцию в качестве свойства <code>onClick</code>. Она срабатывает только
            после щелчка. Пропуск <code>() =></code> и запись <code>onClick = {alert ('click')}</code> -
            является распространенной ошибкой, которая генерирует предупреждение
            каждый раз, когда компонент перерисовывается.
        </p>
    </app:alert>

    <p>
        Следующим шагом мы хотим, чтобы компонент <code>Square</code> «запомнил», что
        на него щелкнули, и заполнил себя знаком «<code>X</code>». Чтобы «запоминать»
        вещи, компоненты используют <b>состояние</b>.
    </p>

    <p>
        Компоненты React могут иметь состояние, инициализируя <code>this.state</code>
        в своих конструкторах. Состояние <code>this.state</code> следует рассматривать
        как приватное для компонента React, в котором оно определено.
        Давайте сохраним текущее значение <code>Square</code> в <code>this.state</code> и изменим
        его при нажатии <code>Square</code>.
    </p>

    <p>
        Сначала мы добавим конструктор в класс для инициализации состояния:
    </p>

    <ce:code-example-10/>

    <app:alert title="Внимание!" type="warning">
        В классах JavaScript вам всегда нужно вызывать <code>super</code> при определении
        конструктора подкласса. Все классы компонентов React, имеющие конструктор,
        должны начинат его с вызова <code>super(props)</code>.
    </app:alert>

    <p>
        Теперь мы изменим метод <code>render</code> компонента <code>Square</code> для
        отображения значения текущего состояния при нажатии:
    </p>

    <ul>
        <li>
            <p>Замените <code>this.props.value</code> на <code>this.state.value</code> внутри тега <code>&lt;button&gt;</code>.</p>
        </li>

        <li>
            <p>Замените обработчик события <code>() => alert()</code> на <code>() => this.setState({value: 'X'})</code>.</p>
        </li>

        <li>
            <p>Поместите атрибуты <code>className</code> и <code>onClick</code> в отдельные строки для лучшей читаемости.</p>
        </li>
    </ul>

    <p>
        После этих изменений тег <code>&lt;button&gt;</code>, возвращаемый
        методом <code>render</code> компонента <code>Square</code>, выглядит следующим образом:
    </p>

    <ce:code-example-11/>

    <p>
        Вызывая <code>this.setState</code> из обработчика <code>onClick</code> в методе <code>render</code>
        компонента <code>Square</code>, мы говорим React повторно отрисовывать этот
        <code>Square</code> при каждом нажатии на его кнопку <code>&lt;button&gt;</code>. После обновления
        свойство <code>this.state.value</code> компонента <code>Square</code> будет иметь значение «<code>X</code>»,
        поэтому мы увидим <code>X</code> на игровом поле. Если вы нажмете на любой
        квадрат, в нём должен появиться <code>X</code>.
    </p>

    <p>
        Когда вы вызываете <code>setState</code> в компоненте, React
        автоматически обновляет и дочерние компоненты внутри него.
    </p>

    <c:url var="codepen6Url" value="https://codepen.io/gaearon/pen/VbbVLg?editors=0010"/>

    <p><b><a href="${codepen6Url}">Посмотреть полный код.</a></b></p>

    <a name="developer-tools"></a>
    <br/>
    <h3>Инструменты разработчика</h3>
    <br/>

    <c:url var="extChromeUrl" value="https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en"/>
    <c:url var="extFirefoxUrl" value="https://addons.mozilla.org/en-US/firefox/addon/react-devtools/"/>

    <p>
        Расширение React Devtools для <b><a href="${extChromeUrl}">Chrome</a></b> и <b><a href="${extFirefoxUrl}">Firefox</a></b> позволяет
        вам просматривать дерево компонентов React с помощью инструментов
        разработчика в вашем браузере.
    </p>

    <p class="text-center" style="overflow-x: auto">
        <img src="https://reactjs.org/static/devtools-878d91461c78d8f238e116477dfe0b46-6ca3b.png"/>
    </p>

    <p>
        React DevTools позволяет вам проверять свойства и состояние ваших компонентов React.
    </p>
    
    <ad:ad-content-banner-3/>

    <p>
        После установки React DevTools вы можете щелкнуть правой кнопкой мыши
        по любому элементу на странице, нажать «Inspect», чтобы открыть инструменты
        разработчика. Вкладка React появится последней справа.
    </p>

    <p>
        <b>Однако обратите внимание, что необходимо сделать несколько
            дополнительных шагов, чтобы заставить его работать с CodePen:</b>
    </p>

    <ol>
        <li>
            <p>Войдите или зарегистрируйтесь и подтвердите свой адрес
                электронной почты (необходим для предотвращения спама).</p>
        </li>
        <li>
            <p>Нажмите кнопку «Fork».</p>
        </li>
        <li>
            <p>Нажмите «Change View», а затем выберите «Debug mode».</p>
        </li>
        <li>
            <p>В открывшейся новой вкладке инструменты разработчика теперь должны иметь вкладку React.</p>
        </li>
    </ol>

    <a name="completing-the-game"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Завершение игры</h2>
    <br/>

    <p>
        Теперь у нас есть основные строительные блоки для нашей игры в
        крестики-нолики. Чтобы завершить игру, нам необходимо чередовать размещение
        «<code>X</code>» и «<code>O</code>» на доске, а также нам нужен способ определить победителя.
    </p>

    <a name="lifting-state-up"></a>
    <br/>
    <h3>Поднятие состояния вверх</h3>
    <br/>

    <p>
        В настоящее время каждый компонент <code>Square</code> поддерживает состояние игры.
        Чтобы определить победителя, мы будем хранить значение каждого из 9 квадратов в одном месте.
    </p>

    <p>
        Можно предположить, что <code>Board</code> должен просто попросить у каждого
        <code>Square</code> значение его состояния. Хотя такой подход и  возможен в React,
        мы его не одобряем, потому что код становится сложным для понимания,
        восприимчивым к ошибкам и трудным для рефакторинга. Вместо этого лучше
        всего хранить состояние игры в родительском компоненте <code>Board</code>, а не в
        каждом <code>Square</code>. Компонент <code>Board</code> может указать каждому <code>Square</code>, что отображать,
        передавая свойство, точно так же, как мы это делали, когда передавали
        число в каждый <code>Square</code>.
    </p>

    <app:alert title="Общее правило:" type="success">
        <br/>
        <b>Чтобы собрать данные из нескольких дочерних элементов</b> или
        <b>обеспечить взаимодействие двумя дочерними компонентами</b>, вам нужно <b>объявить общее
            состояние в их родительском компоненте</b>. Родительский компонент может передать
            состояние обратно дочерним компонентам, используя свойства <code>props</code>; это
            синхронизирует дочерние компоненты между собой и с родительским компонентом.
    </app:alert>

    <p>
        Поднятие состояния в родительский компонент является обычным
        явлением при рефакторинге компонентов React - давайте воспользуемся
        этой возможностью. Мы добавим конструктор в <code>Board</code> и установим его
        начальное состояние так, чтобы оно содержало массив с 9 нулями.
        Эти 9 нулей соответствуют 9 квадратам:
    </p>

    <ce:code-example-12/>

    <p>
        Когда мы позже заполним <code>Board</code>, игровая доска будет выглядеть примерно так:
    </p>

    <ce:code-example-13/>

    <p>В настоящее время метод <code>renderSquare</code> в <code>Board</code> выглядит следующим образом:</p>

    <ce:code-example-14/>

    <p>
        В начале мы передали <b><a href="#passing-data-through-props">свойство value вниз по иерархии</a></b> компоненту <code>Square</code> из <code>Board</code>,
        чтобы показывать числа от 0 до 8 в каждом <code>Square</code>. В другом предыдущем
        шаге мы заменили числа знаком «<code>X</code>», <b><a href="#making-an-interactive-component">определяемым собственным состоянием Square</a></b>.
        Вот почему <code>Square</code> в настоящее время игнорирует свойство <code>value</code>,
        переданное ему компонентом <code>Board</code>.
    </p>

    <p>
        Теперь мы снова будем использовать механизм передачи свойств. Мы
        изменим <code>Board</code>, чтобы проинструктировать каждый отдельный <code>Square</code> о его
        текущем значении («<code>X</code>», «<code>O</code>» или <code>null</code>). У нас уже определен массив <code>squares</code>
        в конструкторе <code>Board</code>. Давайте изменим метод <code>renderSquare</code> в <code>Board</code>,
        чтобы читать значения из массива:
    </p>

    <ce:code-example-15/>

    <c:url var="codepen7Url" value="https://codepen.io/gaearon/pen/gWWQPY?editors=0010"/>

    <p><b><a href="${codepen7Url}">Посмотреть полный код.</a></b></p>

    <p>
        Каждый <code>Square</code> теперь получит свойство <code>value</code>,
        которое будет либо «<code>X</code>»/«<code>O</code>», либо <code>null</code> для пустых квадратов.
    </p>

    <p>
        Далее нам нужно изменить то, что происходит при нажатии на квадрат.
        Компонент <code>Board</code> теперь знает, какие квадраты заполнены. Нам нужно
        создать для <code>Square</code> способ обновить состояние <code>Board</code>. Поскольку состояние
        считается приватным по отношению к компоненту, который его определяет,
        мы не можем обновлять состояние <code>Board</code> напрямую из <code>Square</code>.
    </p>

    <p>
        Чтобы сохранить состояние <code>Board</code> приватным, мы передадим функцию из
        компонента <code>Board</code> компоненту <code>Square</code>. Эта функция будет вызываться при
        нажатии на квадрат. Мы изменим метод <code>renderSquare</code> в <code>Board</code> на:
    </p>

    <ce:code-example-16/>

    <app:alert title="Внимание!" type="warning">
        Мы разбиваем возвращаемый элемент на несколько строк для удобства
        чтения и добавляем скобки, чтобы JavaScript не вставлял точку с
        запятой после <code>return</code> ломая наш код.
    </app:alert>

    <p>
        Теперь мы передаем потомкам два свойства из <code>Board</code> в <code>Square</code>: <code>value</code> и <code>onClick</code>.
        Свойство <code>onClick</code> - это функция, которую <code>Square</code> может вызывать при нажатии.
        Внесем следующие изменения в <code>Square</code>:
    </p>

    <ul>
        <li>
            <p>Заменим <code>this.state.value</code> на <code>this.props.value</code>
                в методе <code>render</code> компонента <code>Square</code></p>
        </li>

        <li>
            <p>Заменим <code>this.setState()</code> на <code>this.props.onClick()</code>
                в методе <code>render</code> компонента <code>Square</code></p>
        </li>

        <li>
            <p>Удалим конструктор из <code>Square</code>, потому что он
                больше не отслеживает состояние игры</p>
        </li>
    </ul>

    <p>После этих изменений компонент Square выглядит следующим образом:</p>

    <ce:code-example-17/>

    <p>При нажатии на квадрат вызывается функция <code>onClick()</code>,
        предоставляемая <code>Board</code>. Вот как это достигается:</p>

    <ol>
        <li>
            <p>Свойство <code>onClick()</code> в нативном DOM-компоненте <code>&lt;button&gt;</code>
                указывает React установить слушатель событий щелчка.</p>
        </li>

        <li>
            <p>При нажатии на кнопку React вызывает обработчик события <code>onClick()</code>,
                определенный в методе <code>render()</code> компонента <code>Square</code>.</p>
        </li>

        <li>
            <p>Этот обработчик событий вызывает <code>this.props.onClick()</code>. Свойство <code>onClick</code> компонента
                <code>Square</code> было определено компонентом <code>Board</code>.</p>
        </li>

        <li>
            <p>Так как <code>Board</code> передал <code>onClick = {() => this.handleClick(i)}</code>
                в <code>Square</code>, <code>Square</code> при нажатии вызывает <code>this.handleClick(i)</code>.</p>
        </li>

        <li>
            <p>Мы пока не определили метод <code>handleClick()</code>, поэтому наш код выдает крэш.</p>
        </li>
    </ol>

    <app:alert title="Внимание!" type="warning">
        Атрибут <code>onClick</code> DOM-элемента <code>&lt;button&gt;</code> имеет особое значение для React,
        поскольку он является нативным компонентом. Для пользовательских компонентов,
        таких как <code>Square</code>, наименование зависит от вас. Мы могли бы как угодно назвать
        метод <code>onClick</code> компонента <code>Square</code> или метод
        <code>handleClick</code> компонента <code>Board</code>.
        Однако в React принято использовать имена <code>on[Event]</code> для свойств, которые
        представляют события, и <code>handle[Event]</code> для методов, которые обрабатывают события.
    </app:alert>

    <p>
        Когда мы попытаемся кликнуть по квадрату, мы должны получить ошибку, потому
        что мы еще не определили <code>handleClick</code>. Теперь мы добавим <code>handleClick</code> в класс Board:
    </p>

    <ce:code-example-18/>

    <c:url var="codepen8Url" value="https://codepen.io/gaearon/pen/ybbQJX?editors=0010"/>

    <p><b><a href="${codepen8Url}">Посмотреть полный код.</a></b></p>

    <p>
        После этих изменений мы снова можем нажимать на квадраты, чтобы заполнить их.
        Однако теперь состояние хранится в компоненте <code>Board</code> вместо отдельных компонентов
        <code>Square</code>. При изменении состояния <code>Board</code> компоненты <code>Square</code> автоматически перерисовываются.
        Хранение состояния всех квадратов в компоненте <code>Board</code> в будущем позволит определить победителя.
    </p>

    <p>
        Поскольку компоненты <code>Square</code> больше не поддерживают состояние, они
        получают значения от компонента <code>Board</code> и информируют компонент <code>Board</code>
        при клике по ним. В терминах React-компоненты <code>Square</code> теперь являются
        <b>контролируемыми компонентами</b>. <code>Board</code> их полностью контролирует.
    </p>
    
    <ad:ad-content-banner-3/>

    <p>
        Обратите внимание, что в <code>handleClick</code> мы вызываем <code>.slice()</code>, чтобы создать копию
        массива квадратов для его изменения вместо изменения существующего массива. Мы объясним,
        почему мы создаем копию массива квадратов в следующей главе.
    </p>

    <a name="why-immutability-is-important"></a>
    <br/>
    <h3>Почему важна неизменяемость</h3>
    <br/>

    <p>
        В предыдущем примере кода мы предложили использовать оператор <code>.slice()</code>, чтобы создать
        копию массива квадратов для изменения вместо изменения существующего массива.
        Теперь мы обсудим неизменяемость и то, почему важно её изучить.
    </p>

    <p>
        Как правило, существует два подхода к изменению данных. Первый подход
        заключается <b>в мутировании данных путем прямого изменения значений</b>. Второй
        подход заключается <b>в замене данных новой копией</b>, которая имеет желаемые изменения.
    </p>

    <br/>
    <h4>Изменение данных с помощью мутации</h4>
    <br/>

    <ce:code-example-19/>

    <br/>
    <h4>Изменение данных без мутации</h4>
    <br/>

    <ce:code-example-20/>

    <p>
        Конечный результат такой же, но не изменяя (или не изменяя оригинальные данные) напрямую,
        мы получаем несколько преимуществ, описанных ниже.
    </p>

    <br/>
    <h4>Сложные функции становятся простыми</h4>
    <br/>

    <p>
        Неизменяемость делает сложные функции намного проще в реализации. Позже
        в этом учебнике мы реализуем функцию «путешествие во времени», которая
        позволяет нам просматривать историю игры в крестики-нолики и «перепрыгивать»
        к предыдущим ходам. Такая функциональность не является специфичной для игр -
        способность отменять и повторять определенные действия является распространенным
        требованием в приложениях. Избежание прямой мутации данных позволяет нам сохранить
        предыдущие версии истории игры нетронутыми и использовать их позже.
    </p>

    <br/>
    <h4>Отслеживание изменений</h4>
    <br/>

    <p>
        Обнаружить изменения в мутируемых (изменяемых) объектах сложно, потому что они
        изменяются напрямую. Такое обнаружение требует, чтобы изменяемый объект сравнивался
        с предыдущими копиями самого себя и всего дерева объектов перемещения.
    </p>

    <p>
        Обнаружение изменений в неизменяемых объектах значительно проще. Если неизменяемый
        объект, на который ссылаются, отличается от предыдущего, то объект изменился.
    </p>

    <br/>
    <h4>Определение момента, когда необходима перерисовка в React</h4>
    <br/>

    <p>
        Основным преимуществом неизменяемости является то, что она помогает
        создавать чистые компоненты в React. Неизменяемые данные могут легко определить,
        были ли внесены изменения, что в свою очередь помогает определить, когда компонент требует повторной отрисовки.
    </p>

    <c:url var="optimizingPerformanceUrl" value="/core/optimizing-performance"/>

    <p>
        Вы можете узнать больше о <code>shouldComponentUpdate()</code> и о том, как создавать
        чистые компоненты, прочитав раздел «<b><a href="${optimizingPerformanceUrl}">Оптимизация производительности</a></b>».
    </p>

    <a name="function-components"></a>
    <br/>
    <h3>Компоненты-функции</h3>
    <br/>

    <p>
        Теперь мы изменим <code>Square</code> на компонент-функцию.
    </p>

    <p>
        В React <b>компоненты-функции</b> являются более простым способом написания
        компонентов, которые <b>содержат только метод отрисовки</b> и <b>не имеют своего
        собственного состояния</b>. Вместо определения класса, который расширяет <code>React.Component</code>,
        мы можем написать функцию, которая принимает свойства <code>props</code> в качестве входных
        данных и возвращает то, что должно быть отображено. Компоненты-функции пишутся
        менее утомительно, чем классы, и многие компоненты могут быть выражены именно таким образом.
    </p>

    <p>Заменим класс <code>Square</code> такой функцией:</p>

    <ce:code-example-21/>

    <p>Мы изменили <code>this.props</code> на <code>props</code> в обоих местах, где он встречается.</p>

    <c:url var="codepen9Url" value="https://codepen.io/gaearon/pen/QvvJOv?editors=0010"/>
    <p><b><a href="${codepen9Url}">Посмотреть полный код.</a></b></p>

    <app:alert title="Внимание!" type="warning">
        Когда мы выразили Square как компонент-функцию, мы также изменили
        <code>onClick={() => this.props.onClick()}</code> на более короткий <code>onClick={props.onClick}</code>
        (обратите внимание на отсутствие скобок с обеих сторон). В классе мы использовали стрелочную функцию
        для доступа к правильному значению <code>this</code>, но в компоненте функции нам не
        нужно об этом беспокоиться.
    </app:alert>

    <a name="taking-turns"></a>
    <br/>
    <h3>По очереди</h3>
    <br/>

    <p>
        Теперь нам нужно исправить очевидный дефект в нашей игре в
        крестики-нолики: буквы «O» не могут быть отмечены на доске.
    </p>

    <p>
        Мы установим первый ход в «X» по умолчанию. Мы можем установить
        это значение по умолчанию, изменив начальное состояние в нашем конструкторе <code>Board</code>:
    </p>

    <ce:code-example-22/>

    <p>
        Каждый раз, когда игрок делает ход, <code>xIsNext</code> (логическое значение) будет
        инвертирован, чтобы определить, какой игрок пойдет дальше, и состояние
        игры будет сохранено. Мы обновим функцию <code>handleClick</code> в <code>Board</code>, чтобы
        инвертировать значение <code>xIsNext</code>:
    </p>

    <ce:code-example-23/>

    <p>
        С этим изменением «Х» и «О» могут сменяться. Давайте также изменим текст
        переменной <code>status</code> в методе <code>render</code> компонента <code>Board</code>, чтобы он
        отображал, какой игрок должен ходить следующим:
    </p>

    <ce:code-example-24/>

    <p>
        После применения этих изменений у вас должен получиться такой компонент Board:
    </p>

    <ce:code-example-25/>

    <c:url var="codepen10Url" value="https://codepen.io/gaearon/pen/KmmrBy?editors=0010"/>
    <p><b><a href="${codepen10Url}">Посмотреть полный код.</a></b></p>

    <a name="declaring-a-winner"></a>
    <br/>
    <h3>Объявление победителя</h3>
    <br/>

    <p>
        Теперь, когда мы показываем, какой игрок ходит следующим, мы также
        должны показать ситуацию, когда игра выиграна, и ходов больше нет. Мы
        можем определить победителя, добавив эту вспомогательную функцию в конец файла:
    </p>

    <ce:code-example-26/>

    <p>
        Мы будем вызывать <code>calculateWinner(squares)</code> в методе <code>render</code> компонента <code>Board</code>,
        чтобы проверить, выиграл ли игрок. Если игрок выиграл, мы можем отобразить
        текст, такой как «Победитель: X» или «Победитель: O». Заменим объявление
        переменной <code>status</code> в методе <code>render</code> компонента <code>Board</code> следующим кодом:
    </p>

    <ce:code-example-27/>

    <p>
        Теперь мы можем изменить функцию <code>handleClick</code> в <code>Board</code>, чтобы
        выполнять <code>return</code> раньше, игнорируя клик, если кто-то выиграл
        игру или <code>Square</code> уже заполнен:
    </p>

    <ce:code-example-28/>

    <c:url var="codepen11Url" value="https://codepen.io/gaearon/pen/LyyXgK?editors=0010"/>
    <p><b><a href="${codepen11Url}">Посмотреть полный код.</a></b></p>

    <p>
        Поздравляем! Теперь у вас есть рабочая игра в крестики-нолики.
        <b>Также вы только что изучили основы React</b>, являясь, возможно,
        настоящим победителем.
    </p>

    <a name="adding-time-travel"></a>
    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>Добавление путешествия во времени</h2>
    <br/>

    <p>
        В качестве последнего упражнения, давайте сделаем возможным
        «<b>вернуться назад во времени</b>» к предыдущим ходам в игре.
    </p>

    <a name="storing-a-history-of-moves"></a>
    <br/>
    <h3>Хранение истории ходов</h3>
    <br/>

    <p>
        Если бы мы мутировали массив <code>squares</code>, реализация путешествия во
        времени была бы очень сложной.
    </p>
    
    <ad:ad-content-banner-4/>

    <p>
        Однако мы использовали <code>slice()</code> для создания новой копии массива <code>squares</code>
        после каждого перемещения и рассматривали его как неизменяемый. Теперь это
        позволит нам сохранять каждую прошлую версию массива <code>squares</code> и перемещаться
        между ходами, которые уже произошли.
    </p>

    <p>
        Мы будем хранить прошлые массивы <code>squares</code> в другом массиве, называемом <code>history</code>.
        Массив <code>history</code> представляет все состояния <code>Board</code>, от первого до последнего хода,
        и имеет следующую форму:
    </p>

    <ce:code-example-29/>

    <p>Теперь нам нужно решить, какой компонент должен владеть состоянием <code>history</code>.</p>

    <a name="lifting-state-up-again"></a>
    <br/>
    <h3>Очередное поднятие состояния</h3>
    <br/>

    <p>
        Мы хотим, чтобы компонент <code>Game</code> верхнего уровня отображал список прошлых ходов.
        Для этого ему понадобится доступ к <code>history</code>, поэтому мы поместим состояние <code>history</code> в
        компонент <code>Game</code> верхнего уровня.
    </p>

    <p>
        Помещение состояния <code>history</code> в компонент <code>Game</code> позволяет нам удалить
        состояние <code>squares</code> из его дочернего компонента <code>Board</code>. Подобно тому, как
        мы «подняли состояние» из компонента <code>Square</code> в компонент <code>Board</code>, теперь
        мы поднимаем его из <code>Board</code> в компонент <code>Game</code> верхнего уровня. Это дает
        компоненту <code>Game</code> полный контроль над данными <code>Board</code> и позволяет ему
        инструктировать <code>Board</code> отрисовывать предыдущие ходы из <code>history</code>.
    </p>

    <p>Во-первых, мы установим начальное состояние для компонента <code>Game</code> в его конструкторе:</p>

    <ce:code-example-30/>

    <p>
        Далее у нас будет компонент <code>Board</code>, получающий свойства <code>squares</code> и <code>onClick</code> из
        компонента <code>Game</code>. Так как теперь у нас есть единый обработчик кликов в <code>Board</code>
        для всех <code>Square</code>, нам нужно будет передавать местоположение каждого <code>Square</code> в
        обработчик <code>onClick</code>, чтобы указать, на какой квадрат кликнули. Вот необходимые
        шаги для преобразования компонента <code>Board</code>:
    </p>

    <ul>
        <li>
            <p>Удалить конструктор в Board.</p>
        </li>

        <li>
            <p>Заменить <code>this.state.squares[i]</code> на <code>this.props.squares[i]</code>
                в методе <code>renderSquare</code> компонента <code>Board</code>.</p>
        </li>

        <li>
            <p>Заменить <code>this.handleClick(i)</code> на <code>this.props.onClick(i)</code> в
                методе <code>renderSquare</code> компонента <code>Board</code>.</p>
        </li>
    </ul>

    <p>
        Компонент Board теперь выглядит так:
    </p>

    <ce:code-example-31/>

    <p>
        Обновим функцию <code>render</code> компонента <code>Game</code>, чтобы использовать самую последнюю
        запись в истории для определения и отображения статуса игры:
    </p>

    <ce:code-example-32/>

    <p>
        Поскольку компонент <code>Game</code> теперь отображает статус игры, мы можем удалить
        соответствующий код из метода <code>render</code> компонента <code>Board</code>. После рефакторинга
        функция render в <code>Board</code> выглядит так:
    </p>

    <ce:code-example-33/>

    <p>
        Наконец, нам нужно переместить метод <code>handleClick</code> из компонента <code>Board</code> в
        компонент <code>Game</code>. Нам также нужно изменить <code>handleClick</code>, поскольку состояние
        компонента <code>Game</code> структурировано по-другому. В методе <code>handleClick</code> компонента
        <code>Game</code> мы объединяем новые записи истории в <code>history</code>.
    </p>

    <ce:code-example-34/>

    <app:alert title="Внимание!" type="warning">
        В отличие от метода <code>push()</code> массива, с которым вы, возможно, более
        знакомы, метод <code>concat()</code> не изменяет исходный массив, поэтому мы предпочитаем его.
    </app:alert>

    <p>
        На данный момент компонент <code>Board</code> нуждается только в методах
        <code>renderSquare</code> и <code>render</code>. Состояние игры и метод <code>handleClick</code> должны
        находиться в компоненте <code>Game</code>.
    </p>

    <c:url var="codepen12Url" value="https://codepen.io/gaearon/pen/EmmOqJ?editors=0010"/>
    <p><b><a href="${codepen12Url}">Посмотреть полный код.</a></b></p>

    <a name="showing-the-past-moves"></a>
    <br/>
    <h3>Показ предыдущих ходов</h3>
    <br/>

    <p>
        Поскольку мы записываем историю игры в крестики-нолики, теперь
        мы можем отобразить ее игроку в виде списка прошлых ходов.
    </p>

    <p>
        Ранее мы узнали, что элементы React являются первоклассными объектами JavaScript;
        мы можем передавать их в наших приложениях. Чтобы отрисовывать несколько элементов в React,
        мы можем использовать массив React элементов.
    </p>

    <p>
        В JavaScript у массивов есть метод <code>map()</code>, который обычно используется
        для отображения данных на другие данные, например:
    </p>

    <ce:code-example-35/>

    <p>
        Используя метод <code>map</code>, мы можем сопоставить нашу историю ходов с элементами React,
        представляющими кнопки на экране, и отобразить список кнопок, чтобы «перейти» к прошлым ходам.
    </p>
    
    <ad:ad-content-banner-5/>

    <p>
        Давайте сопоставим историю в методе <code>render</code> компонента <code>Game</code>:
    </p>

    <ce:code-example-36/>

    <c:url var="codepen13Url" value="https://codepen.io/gaearon/pen/EmmGEa?editors=0010"/>
    <p><b><a href="${codepen13Url}">Посмотреть полный код.</a></b></p>

    <p>
        Для каждого хода в истории игры в крестики-нолики мы создаем элемент списка <code>&lt;li&gt;</code>,
        который содержит кнопку <code>&lt;button&gt;</code>. Эта кнопка имеет обработчик <code>onClick</code>, который вызывает
        метод <code>this.jumpTo()</code>. Мы еще не реализовали метод <code>jumpTo()</code>. Пока что мы должны
        увидеть список ходов, которые произошли в игре, и предупреждение в консоли
        инструментов разработчика, которое гласит:
    </p>

    <app:alert title="Warning" type="warning">
        Each child in an array or iterator should have a unique “key” prop. Check the render method of “Game”.
    </app:alert>

    <p>или</p>

    <app:alert title="Внимание!" type="warning">
        Каждый дочерний элемент в массиве или итераторе должен иметь
        уникальное свойство "<code>key</code>". Проверьте метод <code>render</code> компонента <code>Game</code>.
    </app:alert>

    <p>
        Давайте обсудим, что означает приведенное выше предупреждение.
    </p>

    <a name="picking-a-key"></a>
    <br/>
    <h3>Выбор ключа</h3>
    <br/>

    <p>
        Когда мы отображаем список, React хранит некоторую информацию о каждом
        отображаемом элементе списка. Когда мы обновляем список, React должен
        определить, что изменилось. Мы могли бы добавлять, удалять, переупорядочивать
        или обновлять элементы списка.
    </p>

    <p>Представьте себе переход от</p>

    <ce:code-example-37/>

    <p>К</p>

    <ce:code-example-38/>

    <p>
        В дополнение к обновленным счетчикам, человек, читающий это, вероятно,
        сказал бы, что мы поменяли местами Петю и Васю и вставили между ними Лёню.
        Однако React - это компьютерная программа, которая не знает наших намерений.
        Поскольку это так, нам необходимо указать свойство <code>key</code> для каждого элемента списка,
        чтобы отличать его соседних элементов в этом списке. Один из вариантов - использовать
        строки <code>vasia</code>, <code>petia</code>, <code>lyonia</code>. Если бы мы отображали данные из базы данных, в качестве
        ключей могли бы использоваться идентификаторы (поле id) базы данных для Васи, Пети и Лёни.
    </p>

    <ce:code-example-39/>

    <p>
        При повторной отрисовке списка React берет ключ каждого
        элемента списка и ищет соответствующие элементы в предыдущем списке.
        Если в текущем списке есть ключ, которого раньше не было, React создает
        компонент. Если в текущем списке отсутствует ключ, который существовал в
        предыдущем списке, React уничтожает предыдущий компонент. Если два ключа
        совпадают, соответствующий компонент перемещается. Ключи сообщают React
        об идентичности каждого компонента, что позволяет React поддерживать
        состояние между повторными отрисовками. Если ключ компонента изменится,
        он будет уничтожен и воссоздан с новым состоянием.
    </p>

    <p>
        Ключ - это специальное и зарезервированное свойство в React (наряду с <code>ref</code>,
        более продвинутой функцией). Когда элемент создан, React извлекает свойство
        <code>key</code> и сохраняет его непосредственно в возвращаемом элементе. Даже если
        <code>key</code> может выглядеть так, как будто он принадлежит <code>props</code>, на него нельзя ссылаться,
        используя <code>this.props.key</code>. React автоматически использует <code>key</code>, чтобы решить, какие
        компоненты обновлять. Компонент не может узнать о своем ключе <code>key</code>.
    </p>

    <p>
        Настоятельно рекомендуется назначать правильные ключи <code>key</code> при
        создании динамических списков. Если у вас нет подходящего ключа <code>key</code>,
        вы можете подумать о реструктуризации ваших данных.
    </p>

    <p>
        Если ключ не указан, React выдаст предупреждение и по умолчанию
        будет использовать индекс массива в качестве ключа. Использование
        индекса массива в качестве ключа вызывает проблемы при попытке изменить
        порядок или при вставке/удалении элементов списка. Явная передача <code>key= {i}</code>
        отключает предупреждение, но имеет те же проблемы, что и индексы массивов,
        и в большинстве случаев не рекомендуется.
    </p>

    <p>
        Ключи не должны быть глобально уникальными; они должны быть уникальными
        только между компонентами и их соседями. То есть уникальными только в пределах
        данного списка. В другом, к примеру соседнем списке, значения ключей могут совпадать
        со значениями текущего списка, но это никак не влияет на его работу, так как эти два подмножества
        ключей рассматриваются React полностью независимо, то есть они друг о друге не знают.
    </p>

    <a name="implementing-time-travel"></a>
    <br/>
    <h3>Реализация путешествия во времени</h3>
    <br/>

    <p>
        В истории игры в крестики-нолики каждый предыдущий ход имеет
        свой уникальный идентификатор - это порядковый номер хода. Ходы
        никогда <b>не переупорядочиваются</b>, <b>не удаляются</b> и <b>не вставляются в середину</b>,
        поэтому <b>здесь безопасно использовать индекс хода в качестве ключа</b>.
    </p>

    <p>
        В методе render компонента Game мы можем добавить ключ как
        <code>&lt;li key = {move}&gt;</code>, и предупреждение React о ключах должно исчезнуть:
    </p>

    <ce:code-example-40/>

    <c:url var="codepen14Url" value="https://codepen.io/gaearon/pen/PmmXRE?editors=0010"/>
    <p><b><a href="${codepen14Url}">Посмотреть полный код.</a></b></p>

    <p>
        Нажатие любую из кнопок элемента списка приводит к ошибке, потому
        что метод <code>jumpTo</code> не определен. Прежде чем мы перейдем к реализации <code>jumpTo</code>,
        добавим <code>stepNumber</code> в состояние компонента <code>Game</code>, чтобы указать, какой
        шаг мы сейчас просматриваем.
    </p>

    <p>
        Сначала добавим <code>stepNumber: 0</code> в начальное
        состояние в конструкторе <code>Game</code>:
    </p>

    <ce:code-example-41/>

    <p>
        Далее мы определим метод <code>jumpTo</code> в <code>Game</code>, чтобы обновлять <code>stepNumber</code>. Мы также
        устанавливаем <code>xIsNext</code> в <code>true</code>, если число, на которое мы меняем <code>stepNumber</code>, является четным:
    </p>

    <ce:code-example-42/>

    <p>
        Теперь мы внесем несколько изменений в метод <code>handleClick</code> комопнента <code>Game</code>,
        который срабатывает при нажатии на квадрат.
    </p>

    <p>
        Добавленное нами состояние <code>stepNumber</code> отражает текущий ход, отображаемый
        для пользователя. После того, как мы сделаем новый шаг, нам нужно обновить <code>stepNumber</code>,
        добавив <code>stepNumber: history.length</code> в качестве аргумента <code>this.setState</code>. Это гарантирует,
        что мы не застрянем, показывая тот же самый ход после того, как был сделан новый.
    </p>

    <p>
        Мы также заменим чтение <code>this.state.history</code> на <code>this.state.history.slice(0, this.state.stepNumber + 1)</code>.
        Это гарантирует, что если мы «вернемся назад во времени», а затем сделаем новый шаг с этой точки,
        мы затрем всю «будущую» историю, которая теперь стала бы неверной.
    </p>

    <ce:code-example-43/>

    <p>
        Наконец, мы изменим метод <code>render</code> компонента <code>Game</code>, на данный момент
        всегда отрисовывающий последний ход, чтобы он отрисовывал текущий
        выбранный ход в соответствии со <code>stepNumber</code>:
    </p>

    <ce:code-example-44/>

    <p>
        Если мы нажмем на какой-либо шаг в истории, игровое поле должно немедленно обновиться,
        чтобы показать, как оно выглядело после того, как этот шаг произошел.
    </p>

    <c:url var="codepen15Url" value="https://codepen.io/gaearon/pen/gWWZgR?editors=0010"/>
    <p><b><a href="${codepen15Url}">Посмотреть полный код.</a></b></p>

    <a name="wrapping-up"></a>
    <br/>
    <h3>Подведение итогов</h3>
    <br/>

    <p>Поздравляем! Вы создали игру в крестики-нолики, которая:</p>

    <ul>
        <li>
            <p>позволяет вам играть в крестики-нолики,</p>
        </li>

        <li>
            <p>показывает, когда игрок выиграл,</p>
        </li>

        <li>
            <p>хранит историю игры,</p>
        </li>

        <li>
            <p>позволяет игрокам просматривать как историю игры, так и
                предыдущие версии игрового поля.</p>
        </li>
    </ul>

    <p>
        Отличная работа! Мы надеемся, что теперь вы почувствовали,
        что хорошо понимаете, как работает React.
    </p>

    <c:url var="codepen16Url" value="https://codepen.io/gaearon/pen/gWWZgR?editors=0010"/>

    <p>Проверьте окончательный результат здесь: <b><a href="${codepen16Url}">Окончательный результат</a></b></p>

    <p>
        Если у вас есть дополнительное время или вы хотите попрактиковаться в
        новых навыках React, вот несколько идей по улучшению, которые вы можете
        добавить в игру в крестики-нолики, перечисленные в порядке возрастания сложности:
    </p>

    <ol>
        <li>
            <p>Отображение местоположения для каждого хода в формате (столбец, строка) в списке истории ходов.</p>
        </li>
        <li>
            <p>Выделите текущий выбранный элемент в списке ходов.</p>
        </li>
        <li>
            <p>Перепишите компонент <code>Board</code>, чтобы использовать
                два цикла для создания квадратов вместо их жесткого кодирования.</p>
        </li>
        <li>
            <p>Добавьте кнопку-переключатель, которая позволяет сортировать
                ходы в порядке возрастания или убывания.</p>
        </li>
        <li>
            <p>Когда кто-то выигрывает, выделите три квадрата, которые привели к победе.</p>
        </li>
        <li>
            <p>Когда никто не выигрывает, выведите сообщение о ничье.</p>
        </li>
    </ol>

    <c:url var="refReactComponentUrl" value="/reference/react-component"/>

    <p>
        В этом учебнике мы затрагивали концепции React, включающие элементы, компоненты,
        свойства и состояние. Для более подробного объяснения каждой из этих тем ознакомьтесь с
        <b><a href="${basicsUrl}">остальной документацией</a></b>. Чтобы узнать больше об определении компонентов,
        ознакомьтесь со <b><a href="${refReactComponentUrl}">справкой React.Component</a></b>.
    </p>

    <%--
    <ol>
        <li>
            <p></p>
        </li>
    </ol>

    <ul>
        <li>
            <p></p>
        </li>
    </ul>
    --%>

    <%-- <p><b><a href="${codepen5Url}">Посмотреть полный код.</a></b></p> --%>
    <%--  <c:url var="Url" value=""/> --%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>

</div>

<c:url var="prevPageUrl" value="create-a-new-react-app"/>
<c:url var="nextPageUrl" value="/basics/topics"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>