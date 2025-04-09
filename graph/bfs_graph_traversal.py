def bfs_graph_traversal():
    edges = [[0,1], [1,4], [1,2], [2,3]]
    queue = []
    visited = set()

    graph = {}
    for i in range(len(edges)):
        a, b = edges[i][0], edges[i][1]

        if a not in graph:
            graph[a] = []
        if b not in graph:
            graph[b] = []
        graph[a].append(b)
        graph[b].append(a)
    print("Graph:", graph)

    queue.append(0)


    while len(queue) != 0:
        node = queue.pop(0)
        print(node, end=" ")
        visited.add(node)

        for neighbour in graph[node]:
            if neighbour not in visited and neighbour not in queue:
                queue.append(neighbour)
    print()

if __name__ == "__main__":
    bfs_graph_traversal()

