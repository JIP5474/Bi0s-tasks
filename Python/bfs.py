def bfs(graph,node):
    visited=[]
    queue=[]
    visited.append(node)
    queue.append(node)

    while queue:
        a=queue.pop(0)
        print(a, end=" ")

        for neighbour in graph[a]:
            if neighbour not in visited:
                visited.append(neighbour)
                queue.append(neighbour)


graph={
    'A' : ['B','C'],
    'B' : ['D','E'],
    'C' : ['F','G'],
    'D' : [],
    'E' : [],
    'F' : [],
    'G' : []
}

bfs(graph,'A')
