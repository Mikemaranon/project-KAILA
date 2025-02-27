# Selecting our model

Lets see our best options:  

- **DeepSeek-R1**: A lightweight yet powerful `open-source small language model`, optimized for efficient inference with `lower hardware requirements`. It is well-suited for integration into constrained environments like a system's kernel.  
- **LLaMA 2 (7B)**: A versatile and `well-documented open-source` model from Meta, offering a good balance between performance and efficiency. The 7B variant is the smallest and most feasible for kernel-level deployment with optimizations.  
- **BERT**: Originally designed for NLP tasks, BERT `can be fine-tuned and optimized` for system analysis. While it is `not inherently a generative model`, its transformer-based structure can be adapted for contextual understanding of system logs.  
- **OpenEuroLLM**: A `multilingual`, regulation-compliant language model with a focus on ethical AI. While promising for transparency and adaptation, its efficiency in a kernel environment needs further assessment.  
- **TensorRT-LLM**: NVIDIA’s optimized inference model designed for `GPU execution`. If hardware acceleration is available, this model could be an excellent choice for maximizing performance while maintaining `efficiency`.  

## DeepSeek-R1 overview

This model disrupted the market in just two days, for better or worse. DeepSeek-R1 has set a significant milestone in research on energy consumption in LLMs by drastically reducing its power usage compared to other leading models while achieving equally satisfying results. For our project, we need a model focused on energy efficiency while maintaining strong generative capabilities to understand various contexts, deliver better results, and effectively communicate them in human language.

## Why DeepSeek-R1 is the Best Choice for Kernel-Level Execution  

1. **Energy Efficiency** – DeepSeek-R1 is designed to `consume significantly less power` than other LLMs, making it ideal for a kernel-level AI that must operate continuously without causing excessive energy drain.
2. **Lightweight Architecture** – Compared to other models, DeepSeek-R1 requires `fewer computational resources`, allowing it to run efficiently even in constrained environments such as a kernel module.  
3. **Low-Latency Inference** – Since kernel-level AI must provide near-instant feedback for system optimization, DeepSeek-R1’s optimized inference speed ensures `real-time responsiveness`.  
4. **Strong Generative Capabilities** – Despite being optimized for efficiency, DeepSeek-R1 maintains `high-quality text generation`, allowing it to understand system contexts and propose intelligent solutions.  
5. **Minimal Overhead** – Unlike larger models that require substantial VRAM and processing power, DeepSeek-R1 `minimizes system overhead`, reducing the risk of performance bottlenecks.  
6. **Scalability & Adaptability** – The model can be `fine-tuned` or configured to specialize in kernel-related tasks, making it adaptable for different Linux-based environments.  
7. **Security & Isolation** – Since it is embedded at the kernel level, DeepSeek-R1 can operate in an `isolated environment with restricted access`, enhancing security and preventing unauthorized modifications.  
8. **No External Dependencies** – DeepSeek-R1 can function without requiring cloud-based APIs, ensuring that the AI operates entirely on the `local machine`, which is critical for maintaining a `self-contained` and `autonomous system`.  
9. **Open-Source model** - DeepSeek-R1 is fully open-source, providing access to a vast community-driven ecosystem. This ensures continuous improvements, flexibility for system upgrades, and complete freedom from subscriptions or licensing restrictions.

By integrating DeepSeek-R1 at the kernel level, we ensure a highly efficient, secure, and responsive AI system that optimizes system performance while maintaining minimal resource consumption.  

# SLM training



# SLM implementation

Having the model already trained and ready for use, we have to implement it
