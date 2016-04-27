
FORMAT: 1A

# <%= file_name %> API

Write an overall API discription.

# <%= plural_table_name %> action [<%= route_url %>]

Write a discription.

## Create <%= singular_table_name %> [POST]

Write a [POST] discription.

+ Request <%= table_name %> (application/json; charset=utf-8)
    + Attributes
        <% @attrs.map do |attr| %><% puts(attr) %>+ <%= attr[:name] %>: <%= attr[:init] %> (<%= attr[:type] %>)
        <% end %>
+ Response 201 (application/json; charset=utf-8)
    + Attributes (<%= table_name %>)

## Get <%= plural_table_name %> [GET]

Write a [GET] discription.

+ Response 200 (application/json; charset=utf-8)
    + Attributes (array)
        + (<%= table_name %>)
        + (<%= table_name %>)

# <%= singular_table_name %> action [<%= route_url %>/{id}]

Write a discription.

+ Parameters
    + id: `1` (enum[string]) - The ID of the desired <%= singular_table_name %>.
        + Members
            + `1`
            + `2`
            + `3`

## Get <%= singular_table_name %> [GET]

Write a [GET] discription.

+ Response 200 (application/json; charset=utf-8)
    + Attributes (<%= table_name %>)

## Update <%= singular_table_name %> [PUT]

Write a [PUT] discription.

+ Request <%= table_name %> (application/json; charset=utf-8)
    + Attributes
        <% @attrs.map do |attr| %>+ <%= attr[:name] %>: <%= attr[:init] %> (<%= attr[:type] %>)
        <% end %>
+ Response 200 (application/json; charset=utf-8)
    + Attributes (<%= table_name %>)

## Delete <%= singular_table_name %> [DELETE]

Write a [DELETE] discription.

+ Response 204

# Data Structures

## <%= table_name %> (object)

+ id: 1 (number) - Id<% @attrs.map do |attr| %>
+ <%= attr[:name] %>: <%= attr[:init] %> (<%= attr[:type] %>)<% end %>
+ created_at: `2000-01-01 00:00:00` (string) - CreatedTime
+ updated_at: `2000-01-01 00:00:00` (string) - UpdatedTime
