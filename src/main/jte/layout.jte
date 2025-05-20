@import com.melnyk.demo1.Page
@param Page pageInfo
@param gg.jte.Content content

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${pageInfo.title()}</title>
    <style>
        :root {
            --primary: #FF6B35;  /* Updated orange-red */
            --secondary: #00C49A; /* Updated aquamarine */
            --dark: #0F0F0F;     /* Slightly lighter black */
            --light: #F7F7F7;
            --gray: #2A2A2A;
        }

        body {
            background-color: var(--dark);
            color: var(--light);
            font-family: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background: linear-gradient(135deg, var(--primary) 0%, #B33B15 100%);
            padding: 1.5rem 1rem;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        }

        header h1 {
            margin: 0;
            font-size: 2.5rem;
            font-weight: 700;
            letter-spacing: 1px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        nav {
            margin-top: 1rem;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 1rem;
        }

        nav a {
            color: var(--light);
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            transition: all 0.3s ease;
            background-color: rgba(0, 0, 0, 0.2);
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: translateY(-2px);
        }

        main {
            padding: 2rem;
            flex: 1;
            max-width: 1200px;
            margin: 0 auto;
            width: 100%;
            box-sizing: border-box;
        }

        footer {
            background-color: var(--gray);
            padding: 1.5rem;
            text-align: center;
            margin-top: auto;
            font-size: 0.9rem;
            color: rgba(255, 255, 255, 0.7);
        }

        /* Responsive design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2rem;
            }

            nav {
                flex-direction: column;
                align-items: center;
                gap: 0.5rem;
            }

            nav a {
                width: 80%;
                text-align: center;
            }

            main {
                padding: 1.5rem;
            }
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
