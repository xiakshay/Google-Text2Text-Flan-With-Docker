# Google Text2Text generation 

### Used libraries
```
fastapi==0.74.*
requests==2.27.*
uvicorn[stanard]==0.17.*
sentencepiece==0.1.*
torch==2.3.*
transformers==4.*
```

Use of fastAPI to request the model from `google/flan-t5-small` and use on deployed application.

### Deployment on HugginFace
- Drop the files on HuggingFace new Space
- To go `App`
![](./Outputs/Screenshot%20(875).png)
- Go to `embed this space`
![](./Outputs/Screenshot%20(877).png)
- Click on url
- To check the running app go to `\generate` and try it out
![](./Outputs/Screenshot%20(880).png)


**This is how you can deploy using Docker.**


