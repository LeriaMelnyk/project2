@import com.melnyk.demo1.Page
@param Page pageInfo
@param gg.jte.Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${pageInfo.title()}</title>
    <style>
        body {
            background-color: black;
            color: white;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;

        }
        header, footer {
            background-color: #B33B15;
            padding: 1rem;
            text-align: center;
        }
        nav a {
            color: aquamarine;
            margin: 0 1rem;
            text-decoration: none;
        }
        main {
            padding: 2rem;
        }
    </style>
</head>
<body>
<header>
    <h1>${pageInfo.title()}</h1>
    <nav>
        <a href="/">Home</a>
        <a href="/films">Films</a>
        <a href="/series">Series</a>
    </nav>
</header>
<main>
    ${content}
</main>
<footer>
    <p>© 2025 Melnyk</p>
</footer>
</body>
</html>
