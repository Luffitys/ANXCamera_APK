.class Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/model/ByteArrayLoader$Converter;


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->this$0:Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert([B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/ByteArrayLoader$ByteBufferFactory$1;->convert([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public convert([B)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/nio/ByteBuffer;

    return-object p0
.end method
