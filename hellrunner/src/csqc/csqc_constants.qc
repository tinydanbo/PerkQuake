const float MASK_ENGINE			= 1;
const float MASK_ENGINEVIEWMODELS	= 2;
const float MASK_NORMAL			= 4;

const float RF_VIEWMODEL	= 1;
const float RF_EXTERNALMODEL	= 2;
const float RF_DEPTHHACK	= 4;
const float RF_ADDATIVE		= 8;
const float RF_USEAXIS		= 16;

const float VF_MIN		= 1;	//(vector)
const float VF_MIN_X		= 2;	//(float)
const float VF_MIN_Y		= 3;	//(float)
const float VF_SIZE		= 4;	//(vector) (viewport size)
const float VF_SIZE_Y		= 5;	//(float)
const float VF_SIZE_X		= 6;	//(float)
const float VF_VIEWPORT		= 7;	//(vector, vector)
const float VF_FOV		= 8;	//(vector)
const float VF_FOVX		= 9;	//(float)
const float VF_FOVY		= 10;	//(float)
const float VF_ORIGIN		= 11;	//(vector)
const float VF_ORIGIN_X		= 12;	//(float)
const float VF_ORIGIN_Y		= 13;	//(float)
const float VF_ORIGIN_Z		= 14;	//(float)
const float VF_ANGLES		= 15;	//(vector)
const float VF_ANGLES_X		= 16;	//(float)
const float VF_ANGLES_Y		= 17;	//(float)
const float VF_ANGLES_Z		= 18;	//(float)
const float VF_DRAWWORLD	= 19;	//(float)
const float VF_DRAWENGINESBAR	= 20;	//(float)
const float VF_DRAWCROSSHAIR	= 21;	//(float)

const float VF_CL_VIEWANGLES	= 33;	//(vector)
const float VF_CL_VIEWANGLES_X	= 34;	//(float)
const float VF_CL_VIEWANGLES_Y	= 35;	//(float)
const float VF_CL_VIEWANGLES_Z	= 36;	//(float) 

const float VF_PERSPECTIVE      = 200;

const float STAT_HEALTH		= 0;
const float STAT_WEAPONMODEL	= 2;
const float STAT_AMMO		= 3;
const float STAT_ARMOR		= 4;
const float STAT_WEAPONFRAME	= 5;
const float STAT_SHELLS		= 6;
const float STAT_NAILS		= 7;
const float STAT_ROCKETS	= 8;
const float STAT_CELLS		= 9;
const float STAT_ACTIVEWEAPON	= 10;
const float STAT_ITEMS		= 15;

const float	STAT_SERIALKILLERRANK = 32;
const float STAT_PERKS = 33;

const float IT_AXE = 4096;
const float IT_SHOTGUN = 1;
const float IT_SUPER_SHOTGUN = 2;
const float IT_NAILGUN = 4;
const float IT_SUPER_NAILGUN = 8;
const float IT_GRENADE_LAUNCHER = 16;
const float IT_ROCKET_LAUNCHER = 32;
const float IT_LIGHTNING = 64;
const float IT_EXTRA_WEAPON = 128;
const float IT_SHELLS = 256;
const float IT_NAILS = 512;
const float IT_ROCKETS = 1024;
const float IT_CELLS = 2048;
const float IT_ARMOR1 = 8192;
const float IT_ARMOR2 = 16384;
const float IT_ARMOR3 = 32768;
const float IT_SUPERHEALTH = 65536;
const float IT_KEY1 = 131072;
const float IT_KEY2 = 262144;
const float IT_INVISIBILITY = 524288;
const float IT_INVULNERABILITY = 1048576;
const float IT_SUIT = 2097152;
const float IT_QUAD = 4194304;

const float true	= 1;
const float false	= 0;

const float EXTRA_LOW = -99999999;
const float EXTRA_HIGH = 99999999;

const vector VEC_1	= '1 1 1';
const vector VEC_0	= '0 0 0';
const vector VEC_M1	= '-1 -1 -1';
const vector NULL_VECTOR = '0 0 0';

vector	VEC_HULL_MIN = '-16 -16 -24';
vector	VEC_HULL_MAX = '16 16 32';

const float EF_ADDITIVE		= 32;
const float EF_BLUE		= 64;
const float EF_FLAME		= 1024;
const float EF_FULLBRIGHT	= 512;
const float EF_NODEPTHTEST	= 8192;
const float EF_NODRAW		= 16;
const float EF_NOSHADOW		= 4096;
const float EF_RED		= 128;
const float EF_STARDUST		= 2048;
const float EF_SELECTABLE 	= 16384;

const float PFL_ONGROUND	= 1;
const float PFL_CROUCH		= 2;
const float PFL_DEAD		= 4;
const float PFL_GIBBED		= 8;

const float FILE_READ = 0;
const float FILE_APPEND = 1;
const float FILE_WRITE = 2;

const float DEG2RAD = 0.0174532925199432957692369076848861271344287188854172545609719144;
const float RAD2DEG = 57.2957795130823208767981548141051703324054724665643215491602438612;
const float PI      = 3.1415926535897932384626433832795028841971693993751058209749445923;

// edict.flags (player proxy mimics these from server)
float	FL_FLY					= 1;
float	FL_SWIM					= 2;
float	FL_CLIENT				= 8;	// set for all client edicts
float	FL_INWATER				= 16;	// for enter / leave water splash
float	FL_MONSTER				= 32;
float	FL_GODMODE				= 64;	// player cheat
float	FL_NOTARGET				= 128;	// player cheat
float	FL_ITEM					= 256;	// extra wide size for bonus items
float	FL_ONGROUND				= 512;	// standing on something
float	FL_PARTIALGROUND		= 1024;	// not all corners are valid
float	FL_WATERJUMP			= 2048;	// player jumping out of water
float	FL_JUMPRELEASED			= 4096;	// for jump debouncing

float	CHAN_AUTO		= 0;
float	CHAN_WEAPON		= 1;
float	CHAN_VOICE		= 2;
float	CHAN_ITEM		= 3;
float	CHAN_BODY		= 4;
float   CHAN_FOOTSTEPS  = 5;

float	ATTN_NONE		= 0;
float	ATTN_NORM		= 1;
float	ATTN_IDLE		= 2;
float	ATTN_STATIC		= 3;

// perks
float	PERK_DETERMINATION		= 1;
float	PERK_VAMPIRISM			= 2;
float	PERK_STRIKESTWICE		= 4;
float	PERK_PLANB				= 8;
float	PERK_SERIALKILLER		= 16;
float	PERK_BATTLEMEDICINE		= 32;
float	PERK_PUNISHER			= 64;
float	PERK_BULLETHOSE			= 128;
float 	PERK_EXPRESSDELIVERY	= 256;
float	PERK_TELEKITNESIS		= 512;
float	PERK_METALEATER			= 1024;
float	PERK_ARTFULDODGER		= 2048;
float	PERK_DEMOLITIONMAN		= 4096;
float	PERK_FINDERSKEEPERS		= 8192;
float	PERK_DIVINEINTERVENTION	= 16384;
float	PERK_COLLATERALDAMAGE	= 32768;
float	PERK_SADISM				= 65536;
float	PERK_BLOODYMESS			= 131072;
float	PERK_JUGGLER			= 262144;
float	PERK_LIGHTFEET			= 524288;
float	PERK_STOPWATCH			= 1048576;
float	PERK_LONGBARREL			= 2097152;
float	PERK_BUDGETING			= 4194304;
float	PERK_CRAZYLEGS			= 8388608;

float	MENU_NONE	= 0;
float	MENU_MAIN	= 1;
float	MENU_PERK1	= 2;
float	MENU_PERK2	= 3;
float	MENU_PERK3	= 4;