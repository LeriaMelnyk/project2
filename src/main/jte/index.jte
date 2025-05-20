@import com.melnyk.demo1.Page
@import java.util.List
@param String name
@param Page pageInfo
@param List<String> films

@template.layout( pageInfo = pageInfo, content = @`
    <p>Hello, ${name}!</p>
    <p>${pageInfo.description()}</p>
`)
