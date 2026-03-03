export default {
  async fetch(request) {
    const url = new URL(request.url);

    if (url.pathname === "/api/greeting") {
      return new Response(
        JSON.stringify({
          greeting: "Hello from Cloudflare Worker",
        }),
        { headers: { "Content-Type": "application/json" } }
      );
    }

    if (url.pathname === "/api/hello") {
      return new Response(
        JSON.stringify({
          message: "Hello API working perfectly!",
        }),
        { headers: { "Content-Type": "application/json" } }
      );
    }

    return new Response("Not Found", { status: 404 });
  },
};