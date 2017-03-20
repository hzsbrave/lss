package cn.it.push.methods;

import java.net.HttpURLConnection;

import cn.it.push.models.CodeSuccessReslut;
import cn.it.push.models.PushMessage;
import cn.it.push.models.UserTag;
import cn.it.push.util.GsonUtil;
import cn.it.push.util.HostType;
import cn.it.push.util.HttpUtil;



public class Push {

	private String appKey;
	private String appSecret;
	
	public Push(String appKey, String appSecret) {
		this.appKey = appKey;
		this.appSecret = appSecret;

	}
	
	
	/**
	 * 添加 Push 标签方法 
	 * 
	 * @param  userTag:用户标签。
	 *
	 * @return CodeSuccessReslut
	 **/
	public CodeSuccessReslut setUserPushTag(UserTag userTag) throws Exception {
		if (userTag == null) {
			throw new IllegalArgumentException("Paramer 'userTag' is required");
		}
		
	    HttpURLConnection conn = HttpUtil.CreatePostHttpConnection(HostType.API, appKey, appSecret, "/user/tag/set.json", "application/json");
	    HttpUtil.setBodyParameter(userTag.toString(), conn);
	    
	    return (CodeSuccessReslut) GsonUtil.fromJson(HttpUtil.returnResult(conn), CodeSuccessReslut.class);
	}
	
	/**
	 * 广播消息方法（fromuserid 和 message为null即为不落地的push） 
	 * 
	 * @param  pushMessage:json数据
	 *
	 * @return CodeSuccessReslut
	 **/
	public CodeSuccessReslut broadcastPush(PushMessage pushMessage) throws Exception {
		if (pushMessage == null) {
			throw new IllegalArgumentException("Paramer 'pushMessage' is required");
		}
		
	    HttpURLConnection conn = HttpUtil.CreatePostHttpConnection(HostType.API, appKey, appSecret, "/push.json", "application/json");
	    HttpUtil.setBodyParameter(pushMessage.toString(), conn);
	    
	    return (CodeSuccessReslut) GsonUtil.fromJson(HttpUtil.returnResult(conn), CodeSuccessReslut.class);
	}

	 
}