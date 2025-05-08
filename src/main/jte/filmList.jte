@import com.melnyk.demo1.Page
@import java.util.List
@param Page pageInfo
@param List<String> films
@param String name = "Guest"

@template.layout( pageInfo = pageInfo, content = @`
    <p>Welcome, ${name}!</p>

    @if(films.isEmpty())
        <p>No films available.</p>
    @else
        <p>Favorite Films:</p>
        <ul>
            @for(String film : films)
                <li>${film}</li>
            @endfor
        </ul>
    @endif
`)

