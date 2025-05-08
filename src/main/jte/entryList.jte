@import java.util.List
@param String title = "List"
@param List<String> items

<!-- This is a JTE comment: renders nothing in HTML -->
<h3>${title}</h3>

<ul>
    @for(String item : items)
        <li>${item}</li>
    @endfor
</ul>
