@0xaee11746ae327d2a;

using Dlang = import "dlang.capnp";
$Dlang.module("paws.schemes.capnp.commands");

enum RenderCommandType {
    pushColor @0;
    pushPos2f @1;
    pushSize2f @2;
    pushTexture @3;
    setColorUniform @4;
    pushColorShader @5;
    pushTextureShader @6;
    drawLines @7;
    drawPoints @8;
    drawQuads @9;
}

enum ExecutionCommandType {
    pushPos2f @0;
    updateCameraPosition @1;
}

enum RequestCommandType {
    setViewportSize @0;
    onTouchStart @1;
    onTouchEnd @2;
    onTouchMove @3;
}

struct Vec2f {
    x @0 :Float32;
    y @1 :Float32;
}

struct Vec2i {
    x @0 :Int32;
    y @1 :Int32;
}

struct Color {
    r @0 :Float32;
    g @1 :Float32;
    b @2 :Float32;
    a @3 :Float32;
}

struct Data {
    union {
        color @0 :Color;
        vec2f @1 :Vec2f;
        vec2i @2 :Vec2i;
    }
}

struct RenderCommand {
    type @0 :RenderCommandType;
    data @1 :Data;
}

struct ExecutionCommand {
    type @0 :ExecutionCommandType;
    data @1 :Data;
}

struct RequestCommand {
    type @0 :RequestCommandType;
    data @1 :Data;
}

struct RenderCommands {
    commands @0 :List(RenderCommand);
}

struct ExecutionCommands {
    commands @0 :List(ExecutionCommand);
}

struct RequestCommands {
    commands @0 :List(RequestCommand);
}
