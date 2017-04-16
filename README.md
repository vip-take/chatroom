# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

# Ruby version
2.3.1

# Database structure

## users
### column and constraint
:name, :string, unique: true, null: false, index: true

### relation
has_many: groups, through: group_users
has_many: group_users
has_many: messages

## groups
### column and constraint
:name, :string, unique: true, null: false

### relation
has_many: users, through: group_users
has_many: group_users
has_many: messages

## group_users
### column and constraint
:user, :references, foregin_key: true
:user, :references, foregin_key: true

### relation
belogs_to :user
belogs_to :group

### multicolumn index
[:user, :group]

# messages
### column and constraint
:comment, :text
:image, :string
:user, :references, foreign_key: true
:group, :references, foreign_key: true

### relation
belogs_to :user
belogs_to :group

