# README

## Ruby on Rails Challenge 20200810

### Backend
API build to access given products database, with actions to load products list, add new product to database, edit or delete given product.

An API key is needed to access all endpoints, except home.

Available endpoints:
* /api/v1/ -> GET: home
* /api/v1/products -> GET: list of all products
* /api/v1/products -> POST: add new product
* /api/v1/products/:productId -> GET: load selected product info
* /api/v1/products/:productId -> PUT: edit selected product info
* /api/v1/products/:productId -> DELETE: remove selected product 
