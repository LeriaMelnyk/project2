@import java.util.List
@import com.melnyk.demo1.Page
@param Page pageInfo
@param List<String> series
@param String title

@template.layout(pageInfo = pageInfo, content = @`

    <h2>${title}</h2>

    @if(series.isEmpty())
        <p>No series available.</p>
    @else
        <ul>
            @for(String item : series)
                <li>${item}</li>
            @endfor
        </ul>
    @endif
`)