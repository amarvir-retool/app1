select * from asset_management_library
limit
  {{ assetsTable.pagination.pageSize }} 
offset 
  {{ assetsTable.pagination.offset }}