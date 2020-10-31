.class final Lcom/android/framework/protobuf/StructuralMessageInfo;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    }
.end annotation


# instance fields
.field private final checkInitialized:[I

.field private final defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final fields:[Lcom/android/framework/protobuf/FieldInfo;

.field private final messageSetWireFormat:Z

.field private final syntax:Lcom/android/framework/protobuf/ProtoSyntax;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/ProtoSyntax;Z[I[Lcom/android/framework/protobuf/FieldInfo;Ljava/lang/Object;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    iput-boolean p2, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    iput-object p3, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    iput-object p4, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    const-string v0, "defaultInstance"

    invoke-static {p5, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    iput-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-void
.end method

.method public static newBuilder()Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .registers 1

    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;
    .registers 2

    new-instance v0, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/StructuralMessageInfo$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCheckInitialized()[I
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->checkInitialized:[I

    return-object v0
.end method

.method public getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method public getFields()[Lcom/android/framework/protobuf/FieldInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->fields:[Lcom/android/framework/protobuf/FieldInfo;

    return-object v0
.end method

.method public getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->syntax:Lcom/android/framework/protobuf/ProtoSyntax;

    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/framework/protobuf/StructuralMessageInfo;->messageSetWireFormat:Z

    return v0
.end method
