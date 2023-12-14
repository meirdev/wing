bring cloud;

let api = new cloud.Api();

api.get("/:id", inflight (req) => {
    let id = req.vars.get("id");

    return {
        body: "id: {id}",
        status: 200,
    };
});