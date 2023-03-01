# Guide Line how to create a new instance from laravel-postgis-boilerplate

## Steps for a New Instance:

### 1 - Create a new repository:
- Login to [Github](https://github.com/) with Webmapp account
- Navigate to [laravel-postgis-boilerplate](https://github.com/webmappsrl/laravel-postgis-boilerplate)
- Click on "Use this template" > "Create a new repository"
- The name should have - instead of space
- check "Include all branches"

### 2 - Invite collaborators
- Navigate to the new repository and go to Settings > Collaborators > Add people
- Alessio Piccioli
- mbaroncini
- pedramkat
- peppedeka
- GeManzoDev
- Rubens

### 3 - Edit .VSCode
- Open file .vscode > launch.json
- Update "geomixer2" with the name of the repository 
```sh
"/var/www/html/geomixer2": "${workspaceRoot}"
```
### 4 - Edit .env-example
- Open file .env-example
- Update all geomixer2 with the name of the repository
- Update all ports numbers and APP_URL with correct numbers from [Geobox Architecture](https://github.com/webmappsrl/geobox/blob/main/ARCHITECTURE.md)

### 5 - Edit README.md
- Update README.md file by changing ${instance name} to repository name and removing unneccessary lines and  

### 6 - Follow the instruction on file README.md to install the newly created repository :grin: