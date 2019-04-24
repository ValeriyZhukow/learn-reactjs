<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/core/hooks/custom-hook" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>
<%@taglib prefix="ad" tagdir="/WEB-INF/tags/application/advertising" %>

<a name="pageStart"></a>
<div class="black-line"></div>
<div class="page hooks-glance-page">
    <h1>3.12.6 Пользовательский хук</h1>

    <br/>

    <p class="introduction">
        Хуки доступны в версии <b>React 16.8</b>. Они позволяют использовать состояние и другие
        функции React, освобождая от необходимости писать класс.
    </p>

    <br/>

    <p>
        Построение собственных хуков позволяет вам помещать логику
        компонента в повторно используемые функции.
    </p>

    <p>
        Во время изучения хука эффекта, мы познакомились с компонентом из приложения чата,
        который отображает сообщение, указывающее, находится ли друг в сети:
    </p>

    <ce:code-example-1/>

    <p>
        Теперь предположим, что в нашем приложении чата также есть список контактов,
        и мы хотим отображать имена онлайн-пользователей зеленым цветом. Мы могли бы
        скопировать и вставить приведенную выше логику в наш компонент <code>FriendListItem</code>,
        но такое решение неидеально:
    </p>

    <ce:code-example-2/>

    <p>
        Вместо этого мы бы хотели, чтобы компоненты <code>FriendStatus</code> и
        <code>FriendListItem</code> использовали эту логику совместно.
    </p>

    <p>
        Традиционно в React у нас было два популярных способа
        для совместного использования логики состояния между компонентами: свойство render и HOC-и.
        Теперь мы рассмотрим, как хуки решают многие из тех же проблем, не
        заставляя вас добавлять в дерево дополнительные компоненты.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.6.1 Извлечение пользовательского хука</h2>
    <br/>

    <p>
        Когда мы хотим разделить логику между двумя функциями JavaScript, мы извлекаем ее в
        третью функцию. Компоненты и хуки являются функциями, так что для них это тоже работает!
    </p>

    <ad:ad-content-banner-1/>

    <p>
        <b>Пользовательский хук - это функция JavaScript, имя которой начинается с префикса <code>use</code> и
        которая может вызывать другие хуки.</b> Например, <code>useFriendStatus</code> ниже - это наш
        первый пользовательский хук:
    </p>

    <ce:code-example-3/>

    <p>
        Внутри него нет ничего нового - логика скопирована с компонентов выше.
        Как и в компоненте, убедитесь, что вы вызываете хуки строго на верхнем
        уровне вашего пользовательского хука.
    </p>

    <c:url var="rulesUrl" value="/core/hooks/rules"/>

    <p>
        В отличие от компонента React, пользовательский хук не обязан иметь определенную сигнатуру.
        Нам лишь нужно решить, что он принимает в качестве аргументов и что должен возвращать, если
        таковое имеется. Он как обычная функция. Его имя всегда должно начинаться с <code>use</code>, чтобы в коде
        вы сразу могли увидеть, что к нему применяются <b><a href="${rulesUrl}">правила хуков</a></b>.
    </p>

    <p>
        Миссия нашего хука <code>useFriendStatus</code> - подписать нас на статус друга. Вот почему он принимает
        <code>friendID</code> в качестве аргумента и возвращает информацию о том, находится ли этот друг в сети:
    </p>

    <ce:code-example-4/>

    <p>Теперь давайте посмотрим, как мы можем использовать наш собственный хук.</p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>3.12.6.2 Использование пользовательского хука</h2>
    <br/>

    <p>В начале нашей заявленной целью было удалить дублирующуюся логику из компонентов
        <code>FriendStatus</code> и <code>FriendListItem</code>. Они оба хотят знать, есть ли друг в сети.</p>

    <p>Теперь, когда мы извлекли эту логику в хук <code>useFriendStatus</code>, давайте используем ее:</p>

    <ce:code-example-5/>

    <ce:code-example-6/>

    <p>
        <b>Эквивалентен ли этот код оригинальным примерам?</b> Да, он работает точно так же.
        Присмотревшись внимательно, вы заметите, что мы не вносили никаких изменений в поведение.
        Все, что мы сделали, - это извлекли общий код двух функций в отдельную функцию. <b>Пользовательские хуки -
        это соглашение, которое естественным образом вытекает из дизайна хуков, а не из
        функциональной возможности React.</b>
    </p>

    <p>
        <b>Должен ли я в названиях своих собственных хуков использовать префикс «use»?</b> Пожалуйста,
        делайте это. Это соглашение очень важно. Без него мы не смогли бы проверять нарушения <b><a href="${rulesUrl}">правил хуков</a></b>
        в автоматическом режиме, так как не смогли бы узнать, содержит ли определенная функция
        вызовы хуков внутри себя.
    </p>

    <p>
        <b>Имеют ли два компонента общее состояние, если они используют один и тот же хук?</b> Нет.
        Пользовательские хуки - это механизм, позволяющий повторно использовать логику работы с состоянием (например, настройка
        подписки и запоминание текущего значения), но каждый раз, когда вы используете пользовательский хук,
        все состояние и эффекты внутри него полностью изолированы.
    </p>

    <ad:ad-content-banner-2/>

    <p>
        <b>Как пользовательский хук получает изолированное состояние?</b> Каждый вызов хука получает
        изолированное состояние. Поскольку мы вызываем <code>useFriendStatus</code> напрямую, с точки зрения React
        наш компонент просто вызывает <code>useState</code> и <code>useEffect</code>. К тому же, как мы узнали ранее, мы можем вызывать
        хуки <code>useState</code> и <code>useEffect</code> много раз в одном компоненте, при этом они будут полностью независимы.
    </p>

    <br/>
    <h3>3.12.6.2.1 Подсказка: передавайте информацию между хуками</h3>
    <br/>

    <p>
        Поскольку хуки являются функциями, мы можем передавать информацию между ними.
    </p>

    <p>
        Чтобы это показать, мы будем использовать другой компонент из нашего
        гипотетического примера чата. Это выборщик получателей сообщений чата, который показывает,
        находится ли выбранный в данный момент друг в сети:
    </p>

    <ce:code-example-7/>

    <p>
        Мы сохраняем текущий выбранный идентификатор друга в переменной состояния <code>recepientID</code> и
        обновляем её, если пользователь выбирает другого друга в элементе <code>&lt;select&gt;</code>.
    </p>

    <p>
        Поскольку вызов хука <code>useState</code> дает нам последнее значение переменной состояния <code>receientID</code>,
        мы можем передать её в наш пользовательский хук <code>useFriendStatus</code> в качестве аргумента:
    </p>

    <ce:code-example-8/>

    <p>
        Это позволяет нам узнать, находится ли выбранный в данный момент друг в сети.
        Если мы выберем другого друга и обновим переменную состояния <code>recipientID</code>, наш хук <code>useFriendStatus</code>
        отменит подписку на ранее выбранного друга и подпишется на статус вновь выбранного.
    </p>

    <br/>
    <br/>
    <div class="gray-line"></div>
    <h2>useYourImagination()</h2>
    <br/>

    <p>
        Пользовательские хуки предоставляют гибкость для совместного использования логики, что раньше
        было невозможным в компонентах React. Вы можете написать свои собственные хуки, которые охватывают
        широкий спектр случаев использования, таких как обработка форм, анимация, декларативные подписки,
        таймеры и, возможно, многие другие, которые мы не рассматривали. Более того, вы можете создавать хуки,
        которые так же просты в использовании, как и встроенные функциональные возможности React.
    </p>

    <p>
        Постарайтесь не добавлять абстракцию слишком рано. Теперь, когда компоненты-функции могут делать
        больше, вполне вероятно, что типовой компонент-функция в вашей кодовой базе станет длиннее. Это нормально - не
        нужно тут же разбивать его на хуки. Тем не менее мы рекомендуем вам начать постепенно находить ситуации,
        когда пользовательский хук может скрыть сложную логику за простым интерфейсом или привести в порядок
        грязный компонент.
    </p>

    <p>
        Например, допустим, что у вас есть сложный компонент, который содержит громоздкое локальное
        состояние, которое управляется каким-либо специальным образом. <code>useState</code> не упрощает централизацию
        логики обновления, поэтому вы можете написать ее как редюсер Redux:
    </p>

    <ce:code-example-9/>

    <p>
        Редюсеры очень удобно тестировать изолированно и масштабировать для выражения сложной логики обновления.
        При необходимости вы можете разбить их на более мелкие редюсеры. Однако вы также можете насладиться преимуществами
        использования локального состояния React или не захотеть устанавливать другую библиотеку.
    </p>

    <p>
        А что, если бы мы могли написать хук <code>useReducer</code>, который позволит нам управлять локальным
        состоянием нашего компонента с помощью редюсера? Упрощенная версия может выглядеть так:
    </p>

    <ce:code-example-10/>

    <p>
        Теперь мы можем использовать локальное состояние в нашем компоненте, а также
        позволить редюсеру управлять состоянием нашего компонента:
    </p>

    <ce:code-example-11/>

    <c:url var="referenceUrl" value="https://reactjs.org/docs/hooks-reference.html"/>

    <p>
        Ситуации, где в сложном компоненте необходимо управлять локальным состоянием с помощью редюсера
        возникают достаточно часто. С этой целью мы встроили хук <code>useReducer</code> прямо в React. Вы найдете его вместе с другими
        встроенными хуками в <b><a href="${referenceUrl}">справке по API хуков</a></b>.
    </p>

    <p></p>

    <%-- <c:url var="Url" value=""/> --%>
    <%--
		<ul>
			<li>
				<p>

				</p>
			</li>
		</ul>
		--%>
    <%-- <app:alert title="Внимание!" type="warning"></app:alert> --%>
    <%-- <code></code> --%>
    <%-- <b></b> --%>
    <%-- <code>&lt; &gt;</code> --%>
    <%-- <b><a href="${}"></a></b> --%>
    <%-- <b><a href="#"></a></b> --%>
    <%-- <a href="#"></a> --%>

</div>

<c:url var="prevPageUrl" value="/core/hooks/rules"/>
<c:url var="nextPageUrl" value="/core/hooks/api"/>

<app:page-navigate
        pageStartAncor="pageStart"
        prevPageUrl="${prevPageUrl}"
        nextPageUrl="${nextPageUrl}"
/>