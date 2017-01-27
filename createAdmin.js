db.createUser(
  {
    user: "ADMIN_NAME_PLACEHOLDER",
    pwd: "ADMIN_PW_PLACEHOLDER",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)