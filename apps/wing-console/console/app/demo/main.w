bring cloud;

let api = new cloud.Api();

api.post("/test", inflight (req: cloud.ApiRequest): cloud.ApiResponse => {
  if let requestBody = req.body {
    let data = Json.parse(requestBody);

    return cloud.ApiResponse {
      status: 200,
      body: data.get("message").asStr()
    };
  }

  return cloud.ApiResponse {
    status: 400,
    body: "error"
  };
});
