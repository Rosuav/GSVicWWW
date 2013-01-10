/* Build bot - automated building on github signal
$ cp build /home/gideon/build_gasvicwww.pike
$ sudo -u gilberta pike buildbot
Set WebHook URL to http://gideon.rosuav.com:8181/build

chdir /home/gilberta/rst
exec start-stop-daemon --start --chuid gilberta --exec /usr/local/bin/pike buildbot
*/
function rebuild;
object mainsock;
void sighup() {rebuild=compile_file("/home/gideon/build_gsvicwww.pike")()->main;} //For security reasons, NOT using build itself, but a non-git-managed copy thereof from another directory - updating it requires adminstrative intervention.

void req(Protocols.HTTP.Server.Request r)
{
	if (r->not_query!="/build") {r->response_and_finish((["data":"Not found.","type":"text/plain","error":404])); return;}
	string ip=(r->my_fd->query_address()/" ")[0];
	if (!(<"207.97.227.253","50.57.128.197","108.171.174.178">)[ip]) {r->response_and_finish((["data":"Not allowed.","type":"text/plain","error":403])); return;}
	mixed ex=catch {rebuild();};
	r->response_and_finish((["data":ex?describe_backtrace(ex):"Rebuild complete.","type":"text/plain"]));
}

int main()
{
	signal(1,sighup); sighup();
	mainsock=Protocols.HTTP.Server.Port(req,8181,"::");
	werror("Ready and listening. %s",ctime(time()));
	return -1;
}
