FROM odoo:16

# Set working directory
WORKDIR /var/lib/odoo

# Copy your Odoo custom files (modify path as needed)
COPY . /var/lib/odoo/

# Expose Odoo's default port
EXPOSE 8069

# Start Odoo
CMD ["odoo", "--db_host=db", "--db_port=5432", "--db_user=odoo", "--db_password=odoo"]
