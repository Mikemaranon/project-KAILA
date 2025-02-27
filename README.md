# Project KALOS

`KALOS` stands for `Kernel AI Linux Operating System`. This project is designed to progress through three robust phases with the ultimate goal of creating a network of Linux-based systems equipped with Machine Learning tools, enabling fully autonomous system administration.

The phases are as follows:  

- **KAIM (Kernel Artificial Intelligence Module)**: A kernel module that runs on every system within the network. This module will execute a streamlined and optimized model derived from `DeepSeek-R1`, specializing in system analysis to optimize processes based on the system’s intended purpose.

- **AILA (Artificial Intelligence Linux Administrator)**: A user-level LLM that receives input from all possible processes detected from the user’s interactions. AILA will have the autonomy to generate and execute new processes through the terminal, performing any commands a user could. It will maintain direct communication with `KAIM` to generate reports on user-experienced issues (such as crashes, long wait times, etc.), which will then be sent to `KAIM`. With access to all core system processes, `KAIM` will analyze the problem in depth and generate a detailed report with findings and recommendations for `AILA`.

- **NOVA (Network Orchestrator Virtual Administrator)**: In the central node of the network, the system will run `KAIM` + `AILA`, but it will also include an additional `AILA` instance dedicated exclusively to the orchestration role (baptized as `NOVA`). This separation ensures that the primary `AILA` instance remains focused on managing its local system while `NOVA` handles network-wide administration.  

By delegating orchestration tasks to a separate instance, `NOVA` prevents excessive load on the main `AILA` and allows for better scalability in complex infrastructures. This architecture enables fine-grained control over the entire network, dynamically managing `AILA` permissions, activating or disabling instances as needed, and ensuring an AI-driven administration without bottlenecks.  

