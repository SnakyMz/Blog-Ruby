## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<div align="center">
  <img src="./logo.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h3><b>Blog Ruby</b></h3>

</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

# 📖 About the Project <a name="about-project"></a>

**Blog Ruby** is a blog app containing data about users, posts, and comments.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Databases</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Contains data about users**
- **Contains data about posts**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- An IDE (ex: VS Code)
- Github account

### Setup

Clone this repository to your desired folder:

```sh
  cd project-folder
  git clone https://github.com/SnakyMz/Blog-Ruby.git
```

### Install

Install this project with webpack:

```sh
  cd project-folder
  bundle install
  rails db:setup
```

### Usage

To run the project, execute the following command:


```sh
  rails server
```

### Run tests

To run tests, run the following command:

```sh
  rspec spec
```

### Deployment

You can deploy this project using GitPages:

- Go to github.com
- Create a new repository
- Add all website files in the new repository
- Go to Settings/Pages
- Go to branch and change from 'none' to 'main'
- Click Save

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Soban Syeed**

- GitHub: [@SnakyMz](https://github.com/SnakyMz)
- Twitter: [@SobanSyeed](https://twitter.com/SobanSyeed)
- LinkedIn: [Soban Syeed](https://www.linkedin.com/in/soban-syeed-82985b241/)

👤 **John Palacios**

- GitHub: [@rysthcraft](https://github.com/Rysth)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/john-palacios-rysthcraft)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **More data**
- [ ] **More query**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project and wish to collaborate. Please contact us.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Thank you Microverse.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **Is it responsive?**

  - Yes, works both on mobile and desktop.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
