<%@ tag pageEncoding="UTF-8" %>
<%@ include file="../../../baseAttr.tag" %>
<%@taglib prefix="cd" tagdir="/WEB-INF/tags/application/code" %>

<%@ attribute name="cssClass" required="false" rtexprvalue="true" %>
<%@ attribute name="name" required="false" rtexprvalue="true" %>
<%@ attribute name="id" required="false" rtexprvalue="true" %>
<%@ attribute name="codePenUrl" required="false" rtexprvalue="true"%>

<cd:code-example-decorator codePenUrl="${codePenUrl}">
  <pre class="prettyprint">
    <code class="language-javascript">
  boolean bubbles
  boolean cancelable
  DOMEventTarget currentTarget
  boolean defaultPrevented
  number eventPhase
  boolean isTrusted
  DOMEvent nativeEvent
  void preventDefault()
  boolean isDefaultPrevented()
  void stopPropagation()
  boolean isPropagationStopped()
  DOMEventTarget target
  number timeStamp
  string type</code>
  </pre>
</cd:code-example-decorator>