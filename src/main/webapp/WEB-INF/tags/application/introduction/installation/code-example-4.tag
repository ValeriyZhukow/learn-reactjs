<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>

<cd:code-example-decorator>
<pre class="prettyprint">
    <code class="language-javascript">
    import React from 'react';
    import ReactDOM from 'react-dom';

    ReactDOM.render(
      &lt;h1&gt;Hello, world!&lt;/h1&gt;,
      document.getElementById('root')
    );
    </code>
</pre>
</cd:code-example-decorator>