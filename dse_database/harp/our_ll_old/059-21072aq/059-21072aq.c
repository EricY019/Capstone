#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static const char *quest_base        = "|V wants you to |D.";

typedef struct {
  const int count;
  const char * const * data;
} list;

static const list data[] = {
  { 24, (const char * const []){ "B","D","F","G","H","J","K","L","M","N","P","R","S","T","V","W","Wh","Y","Z","Th","Ch","Sh","Zh","|B|F" } },
  { 25, (const char * const []){ "A","A","A","E","E","E","I","I","I","O","O","O","U","U","U","Ae","Ee","Ie","Oe","Ue","Oo","Au","Oi","Ai","Ea" } },
  {  4, (const char * const []){ "powerful","magical","sacred","valuable" } },
  { 26, (const char * const []){ "expose the corruption of |W |Q","assassinate |W |Q","steal |N from |R","recover |N from |R","transport |N to |U","hunt down and capture |R","hunt down and kill |R","explore |U","slay |R and retrieve |N","slay |R and destroy |N","rescue |W |Q from |R","investigate a star which fell into |U","thwart the monstrous plan of |R","find and explore |U","discover who is assassinating his peers and why","escort |I safely to |U","recover and destroy |N from |U","deliver |N to |Q in |U","travel to |U and retrieve |N","search |U for treasure","collect |S |J from |U","kill |S of the nearby |E","travel to |U and defeat |R","make peace with the people of |U","aid the people of |U against |R","find out what killed all the |E in |U" } },
  {  9, (const char * const []){ "bears","rabbits","deer","fish","birds","wolves","foxes","pigs","boars" } },
  { 21, (const char * const []){ "b","d","f","g","h","j","k","l","m","n","p","r","s","t","v","w","z","th","ch","sh","ng" } },
  { 10, (const char * const []){ "","","","","","y","|F","|F|X","|F|X","|F|X|G" } },
  {  6, (const char * const []){ "murderer","scoundrel","thief","scalawag","vandal","cur" } },
  {  8, (const char * const []){ "a caravan of |C goods","a locked chest","his daughter","his son","his family","her daughter","her son","her family" } },
  {  5, (const char * const []){ "berries","hides","feathers","gemstones","ingots" } },
  {  5, (const char * const []){ "Tundra","Savannah","Woodlands","Caldera","|L" } },
  {  5, (const char * const []){ "Sea","Swamp","Forest","Mountains","Cavern" } },
  {  4, (const char * const []){ "warlocks","cultists","theives","traitors" } },
  {  5, (const char * const []){ "the Relic of |Q","the Sword of |Q","the Amulet of |Q","a |C device","a |C artifact" } },
  { 19, (const char * const []){ "shady","wealthy","cryptic","mysterious","dying","disgruntled","hoary","skittish","frantic","mysterious","worried","vacant","crippled","stocky","peg-legged","one-eyed","lecherous","destitute","ghostly" } },
  {  7, (const char * const []){ "Demon","Dragon","Vampire","Goblin","Orc","Troll","Kobold" } },
  {  1, (const char * const []){ "|A|X|F|X|G" } },
  {  6, (const char * const []){ "|Q, the |P |W","a rival","the |H |Q","the |M of |Q","the |P of |U","the pirates of the |Q Sea" } },
  { 11, (const char * const []){ "12","20","25","40","50","75","100","200","250","500","100" } },
  { 14, (const char * const []){ "aristocrat","dwarf","elf","ex-adventurer","farmer","gnome","mercenary","merchant","peasant","pirate","sage","traveler","vagabond","wizard" } },
  {  7, (const char * const []){ "|Q |Q","the |Q |K","the |L of |Q","Lake |Q","the town of |Q","the lost city of |Q","the ancient ruins of |Q" } },
  {  3, (const char * const []){ "|W |Q","A |O |T named |Q","A |O |T named |Q" } },
  { 10, (const char * const []){ "Lord","Lady","King","Queen","Prince","Princess","Count","Countess","Duke","Dutchess" } },
  { 24, (const char * const []){ "a","a","a","e","e","e","i","i","i","o","o","o","u","u","u","ae","ee","ie","oe","ue","oo","au","oi","ai","ea" } }
};

static const size_t buffer_size = 65536;

static inline int rand_int(const int bound) {
  return random() % bound;
}

void generate_quest(char* buffer, const size_t len) {
  char before[len], after[len], replace[len];
  char *start;
  int group;

  strncpy(buffer, quest_base, len);

  while (start = strchr(buffer, '|')) {
    if (start == buffer) {
      before[0] = 0;
    } else {
      strncpy(before, buffer, start - buffer);
      before[start - buffer] = 0;
    }

    group = start[1] - 'A';

    strncpy(after, start + 2, len);

    strncpy(replace, data[group].data[rand_int(data[group].count)], len);

    buffer[0] = 0;
    strncat(buffer, before, len);
    strncat(buffer, replace, len - strlen(buffer));
    strncat(buffer, after, len - strlen(buffer));
  }
};

int main(int argc, char** argv) {
  srandom(time(NULL));

  char quest[buffer_size];
  generate_quest(quest, buffer_size);
  printf("%s\n", quest);
  return 0;
}
