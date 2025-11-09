# Protos — API Definitions

This repository contains the Protocol Buffers (`.proto`) definitions for various microservices. It includes request/response message structures, service definitions, validation rules, and HTTP/JSON transcoding options for seamless gRPC–REST interoperability.

---

## 📦 Structure

The repository is organized into the following directories:
- **protobuf/buf** — Contains the required Buf proto definitions for field validation using protovalidate
- **protobuf/google/** — Contains the required Google API and RPC proto definitions for annotations and rich error support
- **protobuf/** — Contains the rest of the definitions i.e message, services,and shared resources

---

## 🧩 Features

- **gRPC & REST compatibility** — via `google.api.http` annotations  
- **Validation rules** — using [`buf.validate`](https://github.com/bufbuild/protovalidate)  
- **Rich error model** — integrates `google.rpc.Status` and `google.rpc.ErrorInfo`  

---

## 🧰 Development Notes

- Validation rules follow protovalidate specifications
- Generated Go packages are output to `gen/go/pb` 
- Generated descriptor files are output to `gen/artifacts` 
- Proxy/Gateway configuration should reference generated descriptor file for HTTP/JSON transcoding
- Update `codegen` target in Makefile to generate stubs for other languages
- Install pre-commit hooks for automatic linting before commits

---

## 📜 License

This repository is maintained under the MIT License.
See the LICENSE file for more details.
