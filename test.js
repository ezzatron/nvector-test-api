import WebSocket from "ws";

const ws = new WebSocket("ws://localhost:17357");

ws.on("open", () => {
  ws.on("message", (data) => {
    const { id, error, result } = JSON.parse(data.toString());

    // id will match request id
    // either error or result will be defined
    console.log({ id, error, result });

    ws.close();
  });

  ws.send(
    JSON.stringify({
      // a number that uniquely identifies this request/response
      id: 1,
      // the name of the function to call
      fn: "n_E2lat_lon",

      // the arguments to pass to the function
      // can be named or positional
      args: {
        n_E: [[1], [0], [0]],
        R_Ee: [
          [1, 0, 0],
          [0, 1, 0],
          [0, 0, 1],
        ],
      },
    })
  );
});
