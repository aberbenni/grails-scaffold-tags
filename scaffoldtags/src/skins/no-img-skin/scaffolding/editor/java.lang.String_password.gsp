<%
attrs = [:]
if (constraints?.maxSize) attrs.maxlength=constraints.maxSize
attrStr = new StringBuffer()
attrs.each { k, v ->
    attrStr << "${k}='${v}' "
}
if (style?.readonly) attrStr << "readonly "
%>
<input ${attrStr} type="password" name='${name}' value="${value?.encodeAsHTML()}" />
