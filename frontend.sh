echo -e "\e[33mInstalling Nginx\e[0m"
dnf install nginx -y

echo -e "\e[33mCopy expense  config file
cp expense.conf /etc/nginx/default.d/expense.conf

echo -e \e[33mclean old content
rm -rf /usr/share/nginx/html/*

echo -e "\e[33m]download frontend content
curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip
cd /usr/share/nginx/html

echo -e \e[33extract content\e[0m"
unzip /tmp/frontend.zip

echo -e "\ee[33restart service
systemctl restart service
systemctl enable nginx



unzip /tmp/frontend.zip
systemctl restart nginx
