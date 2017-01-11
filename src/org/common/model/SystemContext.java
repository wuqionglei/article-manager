package org.common.model;

/*
 * 	系统信息类：当前页和每页显示多少条
 * 	使用threadLocal提取公用参数
 * 	否则需要这么写public User(String username, String nickname, String password, String email) {
 */

public class SystemContext {			//传分页需要把当前页和每页显示多少条
	private static ThreadLocal<Integer> offset = new ThreadLocal<Integer>();
	private static ThreadLocal<Integer> size = new ThreadLocal<Integer>();
	
	/*
	 * 	当前页offset
	 *		get/set/remove方法
	 */
	public static Integer getOffset() {
		return offset.get();
	}
	public static void setOffset(Integer _offset) {
		offset.set(_offset);
	}
	public static void removeOffset() {
		offset.remove();
	}
	
	/*
	 * 	当前页size
	 *		get/set/remove方法
	 */
	public static Integer getSize() {
		return size.get();
	}
	public static void setSize(Integer _size) {
		size.set(_size);
	}
	public static void removeSize() {
		size.remove();
	}
	
}
