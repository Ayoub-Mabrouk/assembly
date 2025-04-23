
```markdown
# Assembly Development Environment with Docker

This is a lightweight Docker-based setup to learn and practice x86_64 Assembly on Linux using NASM and the LD linker.

---

## 📁 Project Structure

```
.
├── docker/
│   └── Dockerfile
├── docker-compose.yml
├── README.md
└── projects/
    └── hello_world/
        └── hello.asm
```

- `docker/` — Contains the Dockerfile for the dev environment.
- `docker-compose.yml` — Main config to launch your container.
- `projects/` — Directory for your Assembly projects. Each project gets its own folder.
- `hello.asm` — An example Assembly program that prints "Hello, world!".

---

## 🚀 Getting Started

### 1. Build and start the container

In your project root:

```bash
docker-compose up --build
```

### 2. Open a shell into the container

```bash
docker-compose exec asm-dev bash
```

---

## 📦 Writing & Running an Assembly Program

### Example: Hello World

Inside the container:

```bash
cd /app/projects/hello_world
nasm -f elf64 hello.asm -o hello.o
ld hello.o -o hello
./hello
```

### Output:

```
Hello, world!
```

---

## 🛠 Tools Installed

- `nasm` — The Netwide Assembler
- `ld` — GNU Linker
- `gcc`, `make` — Build tools (optional but helpful)
- Base OS: `debian:bullseye-slim` for smaller image size

---

## 💡 Tips

- You can create more projects by adding new folders inside `projects/`.
- Any `.asm` files in those folders can be assembled and linked in the same way.
- Changes to files on your host are immediately visible in the container (thanks to volume mounting).

---

## 🧹 Cleanup

To stop and remove the container:

```bash
docker-compose down
```

To remove built images as well:

```bash
docker-compose down --rmi all
```

---

## 📚 Learn More

- [NASM Documentation](https://www.nasm.us/doc/)
- [Linux x86_64 Syscall Table](https://blog.rchapman.org/posts/Linux_System_Call_Table_for_x86_64/)
- [Assembly on Linux (Guide)](https://asmtutor.com/)

---

Happy coding in Assembly! 🧠💻
```

---
