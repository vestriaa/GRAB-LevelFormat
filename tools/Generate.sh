protoc --proto_path=../protofiles --csharp_out=generated --python_out=generated level.proto types.proto gasm.proto
sed -i 's/import types_pb2 as types__pb2/from . import types_pb2 as types__pb2/g' generated/level_pb2.py
sed -i 's/import gasm_pb2 as gasm__pb2/from . import gasm_pb2 as gasm__pb2/g' generated/gasm_pb2.py
