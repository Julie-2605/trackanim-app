# 🎬 Trackanim App

**Trackanim App** is a web application that allows you to **track your anime list**, **manage seasons** and **add new anime to your watchlist**.

The project is designed as a modern platform based on Laravel Backend and React Starter Kit.

> 🚧 **Project status** : under development

## 🎯 Objectives
- Create a personal anime watchlist
- Track current / completed seasons and episodes
- Add, edit and delete anime
- User authentication
- Modern, animated and responsive interface
- Solid foundation for future developments (external API, recommendations, statistics, mobile app, etc.).

## 🛠️ Stack
### Backend
- Laravel (v12.49.0)
- Laravel's Built-in Authentication
- Pest for testing
- API REST (planned)

### Frontend
- React · Starter Kit Laravel (Inertia + Vite) (v19.2.4)
- Inertia.js
- Vite for the frontend build (v7.3.1)

### Database
- SQLite (current)
- MySQL (planned)

## 📦 Installation
### Prerequisites
- PHP (v8.3)
- Composer (v2.7.1)
- Node (v22.21.1)
- NPM (v10.9.4)
- Local database

### 1. Clone the project
``` bash
git clone https://github.com/Julie-2605/trackanim-app.git
cd trackanim-app/
```

### 2. Install backend dependencies
``` bash
composer install
```

### 3. Install frontend dependencies
``` bash
npm install
```

### 4. Configure the environment
Copy `.env.example` file :
``` bash
cp .env.example .env
```

Generate the application key :
``` bash
php artisan key:generate
```

Configure the database in the `.env` file.

### 5. Run migrations
``` bash
php artisan migrate
```

### 6. Start the development server
Backend :
``` bash
php artisan serve
```

Frontend :
```
npm run dev
```

Or :
``` bash
composer run dev
```

The application will be accessible at :
``` bash
http://localhost:8000
```

## 🔐 Authentication
The project uses Laravel's built-in authentication, allowing :
- Registration
- Login
- Logout
- Session management

## 🧪 Tests
The tests are written with Pest.

Run tests :
``` bash
php artisan test
```

## 🧱 Architecture (current)
```text
trackanim-app/
├── app/
├── database/
├── resources/
│   ├── js/          # Frontend React
│   └── views/
├── routes/
├── tests/           # Tests Pest
└── ...
```

## 🚀 Planned features
- Anime CRUD
- Season and episode management
- User watchlist
- Status: in progress / completed / abandoned
- Anime search
- External API integration (ex: MyAnimeList, AniList)
- User dashboard
- Viewing statistics

## ✨ Best practices
- PHP code : PSR-12
- Git branches :
    - `main` : production branch
    - `develop` : integration branch prior to production
    - `feature/*` : for developing new features
    - `fix/*` : for bug fixes
- Commits in English, clear and descriptive messages, compliance with Conventional Commits
- General format : `<type>(optional scope): <short description>`

### Common types
| Type      | Description                                               |
|-----------|-----------------------------------------------------------|
| `feat`    | New feature for the user                                  |
| `fix`     | Bug fix                                                   |
| `docs`    | Documentation update                                      |
| `style`   | Formatting, missing semicolons, no logic changes          |
| `refactor`| Code change that neither fixes a bug nor adds a feature   |
| `chore`   | Maintenance tasks (configs, scripts, tooling)             |
| `test`    | Addition or fixing tests                                  |

> Examples :
>
> `feat(auth): add user registration`
>
> `feat(anime): create anime CRUD`
>
> `feat(season): add episode tracking`
>
> `fix(auth): fix logout redirect`
>
> `fix(ui): mobile layout overflow`
>
> `docs(readme): update installation steps`
>
> `test(anime): add anime creation tests`
>
> `refactor(api): simplify anime controller`
>
> `chore(deps): update npm dependencies`
>
> `chore(deps): install axios`
>
> `chore(code): remove obsolete comments`

- Scope usually matches :
    - feature name (`anime`, `season`)
    - layer (`api`, `ui`, `auth`)
    - tool (`vite`, `pest`)

- Workflow :
    - Create a branch `feature/feature-example`
    - Commit changes
    - Push the branch
    - Open a Pull Request

## ✒️ Author
- [@Julie-2605](https://github.com/Julie-2605)

## 📄 License
This project is licensed under MIT.