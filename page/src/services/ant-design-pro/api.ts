// @ts-ignore
/* eslint-disable */
import request  from '@/utils/request';
import { Constants } from '@/utils/constants';

/** 获取当前的用户 GET /api/currentUser */
export async function currentUser(options?: { [key: string]: any }) {
  console.log("localStorage.getItem(\"token\") || ''",localStorage.getItem("token") || '');
  return request<API.CurrentUser>(Constants.baseUrl+'currentUser', {
    method: 'POST',
    headers:{
      "token":localStorage.getItem("token") || '',
    },
    ...(options || {}),
  });
}

/** 登录接口 POST /api/login/outLogin */
export async function outLogin(options?: { [key: string]: any }) {
  return request<Record<string, any>>(Constants.baseUrl+'login/outLogin', {
    method: 'POST',
    ...(options || {}),
  });
}

/** 登录接口 POST /api/login/account */
export async function login(body: API.LoginParams, options?: { [key: string]: any }) {
  return request<API.LoginResult>(Constants.baseUrl+'login/submit', {
    method: 'POST',
    requestType:'form',
    data: body,
    ...(options || {}),
  });
}

export async function register(body: API.LoginParams, options?: { [key: string]: any }) {
  return request<API.ResponseData>(Constants.baseUrl+'register/submit', {
    method: 'POST',
    requestType:'form',
    data: body,
    ...(options || {}),
  });
}


/** 此处后端没有提供注释 GET /api/notices */
export async function getNotices(options?: { [key: string]: any }) {
  return request<API.NoticeIconList>('/api/notices', {
    method: 'GET',
    ...(options || {}),
  });
}

/** 获取规则列表 GET /api/rule */
export async function rule(
  params: {
    // query
    /** 当前的页码 */
    current?: number;
    /** 页面的容量 */
    pageSize?: number;
  },
  options?: { [key: string]: any },
) {
  return request<API.RuleList>('/api/rule', {
    method: 'GET',
    params: {
      ...params,
    },
    ...(options || {}),
  });
}

/** 新建规则 PUT /api/rule */
export async function updateRule(options?: { [key: string]: any }) {
  return request<API.RuleListItem>('/api/rule', {
    method: 'PUT',
    ...(options || {}),
  });
}

/** 新建规则 POST /api/rule */
export async function addRule(options?: { [key: string]: any }) {
  return request<API.RuleListItem>('/api/rule', {
    method: 'POST',
    ...(options || {}),
  });
}

/** 删除规则 DELETE /api/rule */
export async function removeRule(options?: { [key: string]: any }) {
  return request<Record<string, any>>('/api/rule', {
    method: 'DELETE',
    ...(options || {}),
  });
}


export async function info() {
  return request<Record<string, any>>(`${Constants.baseUrl}app/info`, {
    requestType:'form',
    method: 'POST',
  });
}
