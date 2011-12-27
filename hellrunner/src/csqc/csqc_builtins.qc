void(vector ang) makevectors = #1;
void(entity e, vector o) setorigin = #2;
void(entity e, string m) setmodel = #3;
void(entity e, vector min, vector max) setsize = #4;

void() break = #6;
float() random = #7;
//void(entity e, float chan, string samp) sound = #8;
void(entity e, float chan, string samp, float vol, float atten) sound = #8;
vector(vector v) normalize = #9;
void(string e) error = #10;
void(string e) objerror = #11;
float(vector v) vlen = #12;
float(vector v) vectoyaw = #13;
entity() spawn = #14;
void(entity e) remove = #15;
float(vector v1, vector v2, float tryents, entity ignoreentity) traceline = #16;

entity(entity start, .string fld, string match) find = #18;
void(string s) precache_sound = #19;
void(string s) precache_model = #20;

entity(vector org, float rad) findradius = #22;

void(string s, ...) dprint = #25;
string(float f) ftos = #26;
string(vector v) vtos = #27;
void() coredump = #28;
void() traceon = #29;
void() traceoff = #30;
void(entity e) eprint = #31;
// settrace optional
float(float yaw, float dist, float settrace) walkmove = #32;

float() droptofloor = #34;
void(float style, string value) lightstyle = #35;
float(float v) rint = #36;
float(float v) floor = #37;
float(float v) ceil = #38;

float(entity e) checkbottom = #40;
float(vector v) pointcontents = #41;

float(float f) fabs = #43;

float(string s) cvar = #45;
void(string s, ...) localcmd = #46;
entity(entity e) nextent = #47;
void(vector o, vector d, float color, float count) old_particle = #48;
void() ChangeYaw = #49;

vector(vector v) vectoangles = #51;

float(float f) sin = #60;
float(float f) cos = #61;
float(float f) sqrt = #62;
void(entity ent) changepitch = #63;
void(entity e, entity ignore) tracetoss = #64;
string(entity ent) etos = #65;

string(string s) precache_file = #68;
void(entity e) makestatic = #69;

void(string var, string val) cvar_set = #72;

void(vector pos, string samp, float vol, float atten) ambientsound = #74;
string(string s) precache_model2 = #75;
string(string s) precache_sound2 = #76;
string(string s) precache_file2 = #77;

float(string s) stof = #81;

void(vector v1, vector min, vector max, vector v2, float nomonsters, entity forent) tracebox = #90;
vector() randomvec = #91;
vector(vector org) getlight = #92;
float(string name, string value) registercvar = #93;
float( float a, ... ) min = #94;
float( float b, ... ) max = #95;
float(float minimum, float val, float maximum) bound = #96;
float(float f, float f) pow = #97;
entity(entity start, .float fld, float match) findfloat = #98;
float(string s) checkextension = #99;
// FrikaC and Telejano range #100-#199

float(string filename, float mode) fopen = #110;
void(float fhandle) fclose = #111;
string(float fhandle) fgets = #112;
void(float fhandle, string s) fputs = #113;
float(string s) strlen = #114;
string(...) strcat = #115;
string(string s, float start, float length) substring = #116;
vector(string) stov = #117;
string(string s) strzone = #118;
void(string s) strunzone = #119;

// FTEQW range #200-#299

float(float number, float quantity) bitshift = #218;

//float(string str, string sub[, float startpos]) strstrofs = #221;
float(string str, string sub, float startpos) strstrofs = #221;
float(string str, float ofs) str2chr = #222;
string(float c, ...) chr2str = #223;
string(float ccase, float calpha, float cnum, string s, ...) strconv = #224;
string(float chars, string s, ...) strpad = #225;
string(string info, string key, string value, ...) infoadd = #226;
string(string info, string key) infoget = #227;
float(string s1, string s2, float len) strncmp = #228;
float(string s1, string s2) strcasecmp = #229;
float(string s1, string s2, float len) strncasecmp = #230;

float checkpvs(vector viewpos, entity viewee) = #240;

// CSQC range #300-#399
void() clearscene = #300;
void(float mask) addentities = #301;
void(entity ent) addentity = #302;
float(float property, ...) setproperty = #303;
void() renderscene = #304;
void(vector org, float radius, vector lightcolours) adddynamiclight = #305;
void(string texturename, float flag, float is2d, float lines) R_BeginPolygon = #306;
void(vector org, vector texcoords, vector rgb, float alpha) R_PolygonVertex = #307;
void() R_EndPolygon = #308;
vector (vector v) cs_unproject = #310;
vector (vector v) cs_project = #311;

void (float width, vector pos1, vector pos2, vector rgb, float alpha, float flags)drawline = #315;
//void(float width, vector pos1, vector pos2, float flag) drawline = #315;
float(string name) iscachedpic = #316;
string(string name, float trywad) precache_pic = #317;
vector(string picname) draw_getimagesize = #318;
void(string name) freepic = #319;
float(vector position, float character, vector scale, vector rgb, float alpha, float flag) drawcharacter = #320;
float(vector position, string text, vector scale, vector rgb, float alpha, float flag) drawstring = #321;
float(vector position, string pic, vector size, vector rgb, float alpha, float flag) drawpic = #322;
float(vector position, vector size, vector rgb, float alpha, float flag) drawfill = #323;
void(float x, float y, float width, float height) drawsetcliparea = #324;
void(void) drawresetcliparea = #325;
float drawcolorcodedstring(vector position, string text, vector scale, vector rgb, float alpha, float flag) = #326;

float stringwidth(string text, float handleColors) = #327;

float(float stnum) getstatf = #330;
float(float stnum) getstati = #331;
string(float firststnum) getstats = #332;
void(entity e, float mdlindex) setmodelindex = #333;
string(float mdlindex) modelnameforindex = #334;
float(string effectname) particleeffectnum = #335;
void(entity ent, float effectnum, vector start, vector end) trailparticles = #336;
void(float effectnum, vector origin , vector dir, float count) pointparticles = #337;
void(string s, ...) centerprint = #338;
void(string s, ...) print = #339;
string(float keynum) keynumtostring = #340;
float(string keyname) stringtokeynum = #341;
string(float keynum) getkeybind = #342;
void(float usecursor) setcursormode = #343;
vector() getmousepos = #344;
float(float framenum) getinputstate = #345;
void(float sens) setsensitivityscale = #346;
void() runstandardplayerphysics = #347;
string(float playernum, string keyname) getplayerkeyvalue = #348;
float() isdemo = #349;
float() isserver = #350;
void(vector origin, vector forward, vector right, vector up) SetListener = #351;
void(string cmdname) registercommand = #352;
float(entity ent) wasfreed = #353;
string(string key) serverkey = #354;

float() readbyte = #360;
float() readchar = #361;
float() readshort = #362;
float() readlong = #363;
float() readcoord = #364;
float() readangle = #365;
string() readstring = #366;
float() readfloat = #367;

// LordHavoc's range #400-#499
void(entity from, entity to) copyentity = #400;

entity(.string fld, string match) findchain = #402;
entity(.float fld, float match) findchainfloat = #403;
void(vector org, string modelname, float startframe, float endframe, float framerate) effect = #404;
void(vector org, vector velocity, float howmany) te_blood = #405;
void(vector mincorner, vector maxcorner, float explosionspeed, float howmany) te_bloodshower = #406;
void(vector org, vector color) te_explosionrgb = #407;
void(vector mincorner, vector maxcorner, vector vel, float howmany, float color, float gravityflag, float randomveljitter) te_particlecube = #408;
void(vector mincorner, vector maxcorner, vector vel, float howmany, float color) te_particlerain = #409;
void(vector mincorner, vector maxcorner, vector vel, float howmany, float color) te_particlesnow = #410;
void(vector org, vector vel, float howmany) te_spark = #411;
void(vector org) te_gunshotquad = #412;
void(vector org) te_spikequad = #413;
void(vector org) te_superspikequad = #414;
void(vector org) te_explosionquad = #415;
void(vector org) te_smallflash = #416;
void(vector org, float radius, float lifetime, vector color) te_customflash = #417;
void(vector org) te_gunshot = #418;
void(vector org) te_spike = #419;
void(vector org) te_superspike = #420;
void(vector org) te_explosion = #421;
void(vector org) te_tarexplosion = #422;
void(vector org) te_wizspike = #423;
void(vector org) te_knightspike = #424;
void(vector org) te_lavasplash = #425;
void(vector org) te_teleport = #426;
void(vector org, float colorstart, float colorlength) te_explosion2 = #427;
void(entity own, vector start, vector end) te_lightning1 = #428;
void(entity own, vector start, vector end) te_lightning2 = #429;
void(entity own, vector start, vector end) te_lightning3 = #430;
void(entity own, vector start, vector end) te_beam = #431;
void(vector dir) vectorvectors = #432;
void(vector org) te_plasmaburn = #433;
float(entity e, float s) getsurfacenumpoints = #434;
vector(entity e, float s, float n) getsurfacepoint = #435;
vector(entity e, float s) getsurfacenormal = #436;
string(entity e, float s) getsurfacetexture = #437;
float(entity e, vector p) getsurfacenearpoint = #438;
vector(entity e, float s, vector p) getsurfaceclippedpoint = #439;

float(string s) tokenize = #441;
string(float n) argv = #442;
void(entity e, entity tagentity, string tagname) setattachment = #443;
float(string pattern, float caseinsensitive, float quiet) search_begin = #444;
void(float handle) search_end = #445;
float(float handle) search_getsize = #446;
string(float handle, float num) search_getfilename = #447;
string(string s) cvar_string = #448;
entity(entity start, .float fld, float match) findflags = #449;
entity(.float fld, float match) findchainflags = #450;
float(entity ent, string tagname) gettagindex = #451;
vector(entity ent, float tagindex) gettaginfo = #452;

void(vector org, vector vel, float howmany) te_flamejet = #457;

entity(float num) entitybyindex = #459;
float() buf_create = #460;
void(float bufhandle) buf_del = #461;
float(float bufhandle) buf_getsize = #462;
void(float bufhandle_from, float bufhandle_to) buf_copy = #463;
void(float bufhandle, float sortpower, float backward) buf_sort = #464;
string(float bufhandle, string glue) buf_implode = #465;
string(float bufhandle, float string_index) bufstr_get = #466;
void(float bufhandle, float string_index, string str) bufstr_set = #467;
float(float bufhandle, string str, float order) bufstr_add = #468;
void(float bufhandle, float string_index) bufstr_free = #469;

float(float s) asin = #471;
float(float c) acos = #472;
float(float t) atan = #473;
float(float c, float s) atan2 = #474;
float(float a) tan = #475;
float(string s) strippedstringlen = #476;
string(string s) decolorizedstring = #477;
string(float uselocaltime, string format, ...) strftime = #478;
float(string s) tokenizebyseparator = #479;
string(string s) strtolower = #480;
string(string s) strtoupper = #481;
string(string s) cvar_defstring = #482;
void(vector origin, string sample, float volume, float attenuation) pointsound = #483;
string(string search, string replace, string subject) strreplace = #484;
string(string search, string replace, string subject) strireplace = #485;
vector(entity e, float s, float n, float a) getsurfacepointattribute = #486;

#ifdef SUPPORT_GECKO
float gecko_create( string name ) = #487;
void gecko_destroy( string name ) = #488;
void gecko_navigate( string name, string URI ) = #489;
float gecko_keyevent( string name, float key, float eventtype ) = #490;
void gecko_mousemove( string name, float x, float y ) = #491;
void gecko_resize( string name, float w, float h ) = #492;
vector gecko_get_texture_extent( string name ) = #493;
#endif