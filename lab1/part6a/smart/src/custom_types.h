typedef struct region_node region_node;
struct region_node{
    unsigned long allocated;
    unsigned int id;
    char* payload;
    region_node* next;
    long offset;
};

typedef struct{
    region_node* head;
} region_list;