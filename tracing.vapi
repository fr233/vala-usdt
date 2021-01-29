/* usage 1:
*	Tracing.SDT("provider", "name", arg0, arg1, ....);
*	
* usage 2:
*	Tracing.SDT_DEFINE_SEMAPHORE("provider", "name");
*	int r = 0;
*	Tracing.SDT_GET_STATUS("provider", "name", r);
*	if(Tracing.SDT_IS_ENABLED(r)){
*		Tracing.SDT_WITH_SEMAPHORE("provider", "name", 0, 1, "usdt");
*	}
*/
[CCode (cheader_filename = "tracing/StaticTracepoint.h")]
namespace Tracing {
	[CCode (cname = "FOLLY_SDT")]
	public static void SDT(string provider, string name, ...);
	
	[CCode (cname = "FOLLY_SDT_DEFINE_SEMAPHORE")]
	public static void SDT_DEFINE_SEMAPHORE(string provider, string name);
	
	[CCode (cname = "FOLLY_SDT_WITH_SEMAPHORE")]
	public static void SDT_WITH_SEMAPHORE(string provider, string name, ...);
			
	[CCode (cname = "FOLLY_SDT_GET_STATUS")]
	public static bool SDT_GET_STATUS(string provider, string name, out int ret);
	

	public static bool SDT_IS_ENABLED(int status){
		return status > 0;
	}
	
}
