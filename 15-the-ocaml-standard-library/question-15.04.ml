let quiet s =
  String.map (fun c -> if c = '!' then '.' else c) s
