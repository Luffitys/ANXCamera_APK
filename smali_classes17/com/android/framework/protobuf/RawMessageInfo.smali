.class final Lcom/android/framework/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# instance fields
.field private final defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final flags:I

.field private final info:Ljava/lang/String;

.field private final objects:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iput-object p2, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-ge v0, v2, :cond_18

    iput v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    goto :goto_33

    :cond_18
    and-int/lit16 v3, v0, 0x1fff

    const/16 v4, 0xd

    :goto_1c
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    if-lt v1, v2, :cond_2d

    and-int/lit16 v1, v0, 0x1fff

    shl-int/2addr v1, v4

    or-int/2addr v3, v1

    add-int/lit8 v4, v4, 0xd

    move v1, v5

    goto :goto_1c

    :cond_2d
    shl-int v1, v0, v4

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    move v1, v5

    :goto_33
    return-void
.end method


# virtual methods
.method public getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method getObjects()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method getStringInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    :goto_b
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
