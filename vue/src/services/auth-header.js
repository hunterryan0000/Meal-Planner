/* eslint-disable */

export default function authHeader() {
    let user = JSON.parse(localStorage.getItem('user'));
    let token = localStorage.getItem('token');
    if(user && token) {
        return { Authorization: 'Bearer ' + token};
    } else {
        return {};
    }
}