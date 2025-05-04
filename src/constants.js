
// export const BASE_URL = 'http://localhost:5000'; // If using proxy 
export const BASE_URL = process.env.SERVER_URL || 'http://51.21.220.105:5000/';
export const PRODUCTS_URL = '/api/products';
export const USERS_URL = '/api/users';
export const ORDERS_URL = '/api/orders';
export const PAYPAL_URL = '/api/config/paypal';
