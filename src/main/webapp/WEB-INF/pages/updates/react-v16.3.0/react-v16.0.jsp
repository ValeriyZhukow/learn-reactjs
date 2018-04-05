<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="lt" tagdir="/WEB-INF/tags/layout" %>
<%@taglib prefix="wg" tagdir="/WEB-INF/tags/widget" %>
<%@taglib prefix="ce" tagdir="/WEB-INF/tags/application/updates/react-v16.3.0" %>
<%@taglib prefix="app" tagdir="/WEB-INF/tags/application" %>

<c:url var="contextUrl" value="/core/context"/>
<c:url var="refsAndTheDomUrl" value="/core/refs-and-the-dom"/>
<c:url var="prototypingReactUrl" value="https://twitter.com/trueadm/status/944908776896978946"/>
<c:url var="renameUnsafeLifecyclesUrl" value="https://github.com/reactjs/react-codemod#rename-unsafe-lifecycles"/>
<c:url var="updateOnAsyncRenderingUrl" value="https://reactjs.org/blog/2018/03/27/update-on-async-rendering.html"/>
<c:url var="strictModeUrl" value="https://reactjs.org/docs/strict-mode.html"/>

<a name="pageStart"></a>
<lt:layout cssClass="black-line"/>
<lt:layout cssClass="page react-v16_3_0-page">

	<h1>React v16.3.0: Новые методы жизненного цикла и API контекста</h1>

	<wg:p><b>29 Марта, 2018. Brian Vaughn (Брайан Вон)</b></wg:p>

    <wg:p>
        Недавно мы написали о предстоящем внесении изменений в наши методы жизненного цикла,
        включая стратегии постепенной миграции. В React 16.3.0 мы добавляем несколько новых
        методов жизненного цикла, чтобы помочь с этой миграцией. Также мы внедряем новые API
        для давно ожидаемых функций: официальный API для контекста, API  для передачи ссылки
        <code>ref</code> и эргономичный API для <code>ref</code>.
    </wg:p>

	<wg:p>
		Недавно мы написали о предстоящем внесении изменений в наши методы жизненного цикла,
		включая стратегии постепенной миграции. В React 16.3.0 мы добавляем несколько новых
		методов жизненного цикла, чтобы помочь с этой миграцией. Также мы внедряем новые API
		для давно ожидаемых функций: официальный API для контекста, API для передачи ссылки
		<code>ref</code> и эргономичный API для <code>ref</code>.
	</wg:p>

	<wg:p>Читайте дальше, чтобы узнать больше о релизе.</wg:p>

	<br/>
	<h3>Официальный API контекста</h3>

    <wg:p>
        В версии 16.3 представлен новый API контекста, который более эффективен и поддерживает как
        статическую проверку типа, так и глубокие обновления.
    </wg:p>

	<wg:p>
		В течение многих лет React предлагал экспериментальный API для контекста. Хотя это
		был мощный инструмент, его использование было обескуражено из-за присущих ему проблем с API.
		Мы всегда собирались заменить экспериментальный API на лучший.
	</wg:p>

	<wg:p>
		В версии 16.3 представлен новый API контекста, который более эффективен и поддерживает как
		статическую проверку типа, так и глубокие обновления.
	</wg:p>

	<app:alert type="warning" title="Внимание!">
		Старый API контекста будет работать для всех релизов React 16.x, поэтому
		у вас будет время для миграции.
	</app:alert>

	<wg:p>
		Вот пример, иллюстрирующий, как вы можете вводить «тему» с использованием нового API контекста:
	</wg:p>

	<ce:code-example-1/>

	<wg:p>Подробнее о новом API контекста можно узнать
		<wg:link href="${contextUrl}">здесь</wg:link>.</wg:p>

	<br/>
	<h3>createRef API</h3>

	<wg:p>
		Ранее React предоставлял два способа управления ссылками <code>ref</code>: устаревший
		строковый <code>ref</code> и обратный вызов. Хотя строковый <code>ref</code> был более удобным из них, он имел
		ряд недостатков, поэтому наша официальная рекомендация заключалась в том, чтобы
		вместо него использовать обратный вызов.
	</wg:p>

	<wg:p>
		Версия 16.3 добавляет новую опцию для управления ссылками <code>ref</code>, которая предлагает
		удобство строки <code>ref</code> без каких-либо недостатков:
	</wg:p>

	<ce:code-example-2/>

	<app:alert type="warning" title="Внимание!">
		В дополнение к новому <code>createRef</code> API будет поддерживаться и обратный
		вызов для <code>ref</code>.
		<br/>
		<br/>
		Вам не нужно заменять обратные вызовы для <code>ref</code> в ваших компонентах. Они немного более гибкие,
		поэтому останутся в качестве продвинутой функции.
	</app:alert>

	<wg:p>
		Подробнее о новом API <code>createRef</code> читайте
		<wg:link href="${refsAndTheDomUrl}">здесь</wg:link>.
	</wg:p>

	<br/>
	<h3>forwardRef API</h3>

	<wg:p>
		Компоненты более высокого порядка (или HOC) являются обычным способом повторного
		использования кода между компонентами. Основываясь на примере выше, мы могли бы создать HOC,
		который вводит текущую «тему» с помощью свойство:
	</wg:p>

	<ce:code-example-3/>

	<wg:p>
		Мы можем использовать вышеуказанный HOC для подключения компонентов к контексту темы,
		без непосредственного использования <code>ThemeContext</code>. Например:
	</wg:p>

	<ce:code-example-4/>

	<wg:p>
		HOC обычно передают props компонентам, которые они обертывают. К сожалению, ссылки не
		передаются. Это означает, что мы не можем назначить ссылку на <code>FancyButton</code>, если используем
		<code>FancyThemedButton</code>, поэтому нам не удастся вызвать <code>focus()</code>.
	</wg:p>

	<wg:p>
		Новый <code>forwardRef</code> API решает эту проблему, предоставляя нам возможность
		перехватить ссылку <code>ref</code> и передать её как обычное свойство:
	</wg:p>

	<ce:code-example-5/>

	<br/>
	<h3>Изменения методов жизненного цикла компонента</h3>

	<wg:p>
		API React класса компонента в течение многих лет претерпевал небольшие изменения. Однако,
		поскольку мы добавляем поддержку более продвинутых функций (таких как границы ошибок и предстоящий
		асинхронный режим отрисовки), мы расширяем эту модель таким образом, что ничего подобного
		изначально это не предполагалось.
	</wg:p>

	<wg:p>
		Например, с текущим API очень легко блокировать начальную отрисовку с несущественной логикой.
		Частично это связано с тем, что существует слишком много способов выполнить данную задачу,
		и может быть неясно, какой из них лучше. Мы заметили, что прерывание процесса обработки
		ошибок часто не учитывается и может привести к утечкам памяти (что также повлияет на предстоящий
		режим асинхронной отрисовки). Текущий API класса компонента также усложняет другие вещи, такую
		как наша работа по <wg:link href="${prototypingReactUrl}">прототипированию компилятора React</wg:link>.
	</wg:p>

	<wg:p>
		Многие из этих проблем усугубляются подмножеством следующих методов жизненного
		цикла компонента: <code>componentWillMount</code>, <code>componentWillReceiveProps</code> и <code>componentWillUpdate</code>.
		Они вызывают наибольшую путаницу в сообществе React. По этим причинам мы хотим сделать
		эти методы устаревшими в пользу лучших альтернатив.
	</wg:p>

	<wg:p>
		Мы признаем, что это изменение повлияет на многие существующие компоненты. Из-за этого
		путь миграции будет как можно более постепенным и предоставит необходимые способы обхода
		проблем. (В Facebook мы поддерживаем более 50 000 компонентов React. Мы также зависим
		от постепенного цикла релиза!)
	</wg:p>

	<app:alert type="warning" title="Внимание!">
		Передупреждения об устаревших компонентах будут доступны в будущих 16.x релизах, но
		устаревшие методы жизненнгого цикла будут продолжать работать до 17 версии.
		<br/>
		<br/>
		Даже в 17 версии их использование все равно будет возможно. Однако эти методы будут наделены
		префиксом «UNSAFE_» для указания, что они могут вызвать проблемы. Мы также подготовили
		<wg:link href="${renameUnsafeLifecyclesUrl}">автоматический скрипт</wg:link>, чтобы
		переименовать их в существующем коде.
	</app:alert>

	<wg:p>
		Помимо устаревших небезопасных методов жизненного цикла, мы
		одновременно добавляем пару новых методов:
	</wg:p>

	<wg:p>
		<ul>
			<li>
				<code>getDerivedStateFromProps</code> будет добавлен как более безопасная
				альтернатива устаревшему <code>componentWillReceiveProps</code>.
			</li>
			<li>
				<code>getSnapshotBeforeUpdate</code> добавляется для обеспечения безопасного
				считывания свойств, например с DOM, перед выполнением обновлений.
			</li>
		</ul>
	</wg:p>

	<wg:p>
		Подробнее об этих изменениях <wg:link href="${updateOnAsyncRenderingUrl}">читайте здесь.</wg:link>
	</wg:p>

	<br/>
	<h3>Компонент StrictMode</h3>

	<wg:p>
		<code>StrictMode</code> - это инструмент для выделения потенциальных проблем в приложении.
		Как и <code>Fragment</code>, <code>StrictMode</code> не отрисовывает видимый UI. Он активирует дополнительные
		проверки и предупреждения для своих потомков.
	</wg:p>

	<app:alert type="warning" title="Внимание!">
		Проверки <code>StrictMode</code> выполняются только в режиме разработки; они не влияют на продакшен билд.
	</app:alert>

	<wg:p>
		Хотя для <code>strict mode</code> невозможно устранить все проблемы (например, определенные типы
		мутаций), это может многим помочь. Если вы видите предупреждения в <code>strict mode</code>, эти вещи,
		скорее всего, приведут к багам при асинхронной отрисовке.
	</wg:p>

	<wg:p>В весрии 16.3, <code>StrictMode</code> помогает с:</wg:p>

	<wg:p>
		<ul>
			<li>Определением компонентов с небезопасными методами жизненного цикла.</li>
			<li>Предупреждения об использовании строкового <code>ref</code> API.</li>
			<li>Обнаружение неожиданных сторонних эффектов.</li>
		</ul>
	</wg:p>

	<wg:p>Дополнительный функционал будет добавлен в будущих релизах React.</wg:p>

	<wg:p>
		Подробнее о компоненте <code>StrictMode</code> <wg:link href="${strictModeUrl}">читайте здесь.</wg:link>
	</wg:p>

</lt:layout>

<c:url var="prevPageUrl" value="react-v16.2.0-fragments-improved-support"/>
<app:page-navigate pageStartAncor="pageStart"
                   prevPageUrl="${prevPageUrl}"/>