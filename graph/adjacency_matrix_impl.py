def adjacency_matrix_graph_impl():
    edges = [[1,2],[2,3],[3,4],[4,2],[1,3]]

    adjacency_matrix = []
    for i in range(len(edges)):
        row = [0] * len(edges)
        adjacency_matrix.append(row)

    for i in range(len(edges)):
        a, b = edges[i][0], edges[i][1]


        adjacency_matrix[a][b] = 1
        adjacency_matrix[b][a] = 1
    
    for i in range(len(adjacency_matrix)):
        print("Node", i, "Neighbours:", end=" ")
        for j in range(len(adjacency_matrix)):
            if adjacency_matrix[i][j] == 1:
                print(j, end=" ")
        print()



if __name__ == "__main__":
    adjacency_matrix_graph_impl()