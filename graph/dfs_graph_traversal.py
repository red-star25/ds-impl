def dfs_graph_traversal():
    edges = [[0,1], [1,4], [1,2], [2,3]]
    visited = set()
    graph = {}

    for i in range(len(edges)):
        a,b = edges[i][0], edges[i][1]

        if a not in graph:
            graph[a] = []
        if b not in graph:
            graph[b]= []
        
        graph[a].append(b)
        graph[b].append(a)
    
    print("Graph:", graph)

    dfs(node=0, graph=graph, n=len(graph), visited=visited)

def dfs(node, graph, n, visited):
    print(node, end=" ")
    visited.add(node)

    for neighbour in graph[node]:
        if neighbour not in visited:
            dfs(neighbour, graph, n, visited)
    
if __name__ == "__main__":
    dfs_graph_traversal()