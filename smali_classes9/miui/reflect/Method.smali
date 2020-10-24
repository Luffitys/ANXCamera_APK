.class public Lmiui/reflect/Method;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mPtr:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/reflect/Method;->mPtr:J

    return-void
.end method

.method public static varargs of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Lmiui/reflect/Method;
    .locals 0

    invoke-static {p3, p2}, Lmiui/reflect/ReflectUtils;->getSignature([Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/reflect/Method;)Lmiui/reflect/Method;
    .locals 0

    invoke-static {p0}, Lcom/miui/internal/os/Native;->getMethod(Ljava/lang/reflect/Method;)Lmiui/reflect/Method;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invoke(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs invokeBoolean(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeBoolean(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public varargs invokeByte(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeByte(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)B

    move-result p0

    return p0
.end method

.method public varargs invokeChar(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)C
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeChar(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public varargs invokeDouble(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeDouble(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method public varargs invokeFloat(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeFloat(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public varargs invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeInt(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public varargs invokeLong(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeLong(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeObject(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs invokeShort(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)S
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/internal/os/Native;->invokeShort(Lmiui/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)S

    move-result p0

    return p0
.end method

.method public toReflect()Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0}, Lcom/miui/internal/os/Native;->getReflectMethod(Lmiui/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method
