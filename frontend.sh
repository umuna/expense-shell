# Install nginx
dnf install nginx -y
# copy expense config file
cp expense.conf /etc/nginx/default.d/expense.conf

# clean old content\e[0m"
rm -rf /usr/share/nginx/html/*

# download frontend content
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
cd /usr/share/nginx/html

# extract content
unzip /tmp/frontend.zip

# restart service
systemctl restart nginx
systemctl enable nginx

