@import com.melnyk.demo1.Page
@import java.util.List
@param String name
@param Page pageInfo
@param List<String> films

@template.layout( pageInfo = pageInfo, content = @`
    <p>Hello, ${name}!</p>
    <p>${pageInfo.description()}</p>

    @if(films.isEmpty())
        <p>No films available.</p>
    @else
        <p>Available films:</p>
        <ul>
            @for(String film : films)
                <li>${film}</li>
            @endfor
        </ul>
    @endif
`)
