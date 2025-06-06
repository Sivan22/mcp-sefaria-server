[![MseeP.ai Security Assessment Badge](https://mseep.net/pr/sivan22-mcp-sefaria-server-badge.png)](https://mseep.ai/app/sivan22-mcp-sefaria-server)
[![smithery badge](https://smithery.ai/badge/mcp-sefaria-server)](https://smithery.ai/server/mcp-sefaria-server)
<a href="https://glama.ai/mcp/servers/j3v6vnp4xk"><img width="380" height="200" src="https://glama.ai/mcp/servers/j3v6vnp4xk/badge" alt="Sefaria Jewish Library Server MCP server" /></a>


# Sefaria Jewish Library MCP Server




An MCP ([Model Context Protocol](https://docs.anthropic.com/en/docs/agents-and-tools/mcp)) server that provides access to Jewish texts from the [Sefaria](https://www.sefaria.org/) library. This server enables Large Language Models to retrieve and reference Jewish texts through a standardized interface.


## Features

- Retrieve Jewish texts by reference
- Retrieve commentaries on a given text
- Search the Jewish library for a query

## Installation

Requires Python 3.10 or higher.

### Clone the repository
```bash
git clone https://github.com/sivan22/mcp-sefaria-server.git
cd mcp-sefaria-server
```


### Running the Server

The server can be run directly:

```bash
uv --directory path/to/directory run sefaria_jewish_library
```

Or through an MCP client that supports the Model Context Protocol.
for claude desktop app and cline you should use the following config:
```
{
  "mcpServers": {        
      "sefaria_jewish_library": {
          "command": "uv",
          "args": [
              "--directory",
              "absolute/path/to/mcp-sefaria-server",
              "run",
              "sefaria_jewish_library"
          ],
          "env": {
            "PYTHONIOENCODING": "utf-8" 
          }
      }
  }
}
```

### Installing via Smithery

To install Sefaria Jewish Library for Claude Desktop automatically via [Smithery](https://smithery.ai/server/mcp-sefaria-server):

```bash
npx -y @smithery/cli install mcp-sefaria-server --client claude
```

## Available tools

The server provides the following tools through the MCP interface:

### get_text

Retrieves a specific Jewish text by its reference.

Example:
```
reference: "Genesis 1:1"
reference: "שמות פרק ב פסוק ג"
reference: "משנה ברכות פרק א משנה א"
```

### get_commentaries

Retrieves a list of commentaries for a given text.

Example:
```
reference: "Genesis 1:1"
reference: "שמות פרק ב פסוק ג"
reference: "משנה ברכות פרק א משנה א"
```

### search_texts

Searches for Jewish texts in the Sefaria library based on a query.

Example:
```
query: "moshiach"
slop: 1
filters: ["Talmud", "Bavli"]
size: 5
```


## Development

This project uses:
- [MCP SDK](https://github.com/modelcontextprotocol/sdk) for server implementation
- [Sefaria API](https://github.com/Sefaria/Sefaria-API) for accessing Jewish texts

  
![image](https://github.com/user-attachments/assets/14ee8826-a76e-4c57-801d-473b177416d3)

## Requirements

- Python >= 3.10
- MCP SDK >= 1.1.1
- Sefaria API

## License

MIT License
