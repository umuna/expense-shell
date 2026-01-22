echo intstall nginx
dnf install nginx -y

echo copuy expense config file
cp expense.conf /etc/nginx/default.d/expense.conf

echo clean old content
rm -rf /usr/share/nginx/html/*

echo download frontend content
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
cd /usr/share/nginx/html

echo extract content
unzip /tmp/frontend.zip

echo restart service
systemctl restart service
systemctl enable nginx



unzip /tmp/frontend.zip
systemctl restart nginx
