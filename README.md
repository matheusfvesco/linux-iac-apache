# Linux Apache server IaC

Simple bash script to provision an Apache server with Infrastructure as Code (IaC) in Ubuntu server LTS 22.04

---

apache-run.sh updates the server packages, installs dependencies, downloads the server files and gets the server up and running. After it copies the server files, it deletes the temporary files downloaded on `/tmp` and shows you the ip adresses your server might be hosted at.
