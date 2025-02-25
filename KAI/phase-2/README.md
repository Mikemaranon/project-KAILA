# Selecting our model

Lets see our best options:  

- **DeepSeek-R1**: A lightweight yet powerful `open-source small language model`, optimized for efficient inference with `lower hardware requirements`. It is well-suited for integration into constrained environments like a system's kernel.  
- **LLaMA 2 (7B)**: A versatile and `well-documented open-source` model from Meta, offering a good balance between performance and efficiency. The 7B variant is the smallest and most feasible for kernel-level deployment with optimizations.  
- **BERT**: Originally designed for NLP tasks, BERT `can be fine-tuned and optimized` for system analysis. While it is `not inherently a generative model`, its transformer-based structure can be adapted for contextual understanding of system logs.  
- **OpenEuroLLM**: A `multilingual`, regulation-compliant language model with a focus on ethical AI. While promising for transparency and adaptation, its efficiency in a kernel environment needs further assessment.  
- **TensorRT-LLM**: NVIDIA’s optimized inference model designed for `GPU execution`. If hardware acceleration is available, this model could be an excellent choice for maximizing performance while maintaining `efficiency`.  

# SLM training



# SLM implementation

Having the model already trained and ready for use, we have to implement it
