import { API_BASE } from './api';

const TOKEN_KEY = 'gunstyle_admin_token';

export function getAdminToken() {
  return sessionStorage.getItem(TOKEN_KEY);
}

export function setAdminToken(token) {
  sessionStorage.setItem(TOKEN_KEY, token);
}

export function clearAdminToken() {
  sessionStorage.removeItem(TOKEN_KEY);
}

export function authFetch(path, options = {}) {
  const token = getAdminToken();
  return fetch(`${API_BASE}${path}`, {
    ...options,
    headers: {
      ...(options.headers || {}),
      Authorization: `Bearer ${token}`,
    },
  });
}
