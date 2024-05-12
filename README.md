# n-vector test API

A simple WebSocket-based API for calling functions from the [Python `nvector`
package].

[python `nvector` package]: https://nvector.readthedocs.io/

## Usage

Run the server:

    docker run --rm -it -p 17357:8000 ghcr.io/ezzatron/nvector-test-api

Call a function:

```js
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
      fn: "lat_lon2n_E",

      // the arguments to pass to the function
      // can be named or positional
      args: {
        latitude: 1.23,
        longitude: 4.56,
      },
    })
  );
});
```
