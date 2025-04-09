def adjacency_list_graph_impl():
    edges = [[1,2],[2,3],[3,4],[4,2],[1,3]]
    
    adjacency_list = {}
    for i in range(len(edges)):
        a, b = edges[i][0], edges[i][1]

        if a not in adjacency_list:
            adjacency_list[a] = []
        if b not in adjacency_list:
            adjacency_list[b] = []
        adjacency_list[a].append(b)
        adjacency_list[b].append(a)
        
    for node in adjacency_list:
        print("Node", node, "Neighbours:", end=" ")
        for neighbour in adjacency_list[node]:
            print(neighbour, end=" ")
        print()

if __name__ == "__main__":
    adjacency_list_graph_impl()
