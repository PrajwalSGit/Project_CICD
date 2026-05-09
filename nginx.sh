#!/bin/bash


sudo cp -rf app.conf /etc/nginx/conf.d
chmod 710 /var/lib/jenkins/workspace/django_simple_CICD

sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "nginx has been started"

sudo systemctl status nginx

# -------------Explination-----------------
#| Command                  | Purpose                     |
#| ------------------------ | --------------------------- |
#| `cp app.conf`            | install latest nginx config |
#| `chmod 710`              | fix directory permissions   |
#| `nginx -t`               | validate config             |
#| `systemctl start nginx`  | start web server            |
#| `systemctl enable nginx` | auto start on reboot        |
#| `systemctl status nginx` | verify deployment           |

