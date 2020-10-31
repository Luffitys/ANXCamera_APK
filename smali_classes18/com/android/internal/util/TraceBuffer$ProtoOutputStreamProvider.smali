.class Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;
.super Ljava/lang/Object;
.source "TraceBuffer.java"

# interfaces
.implements Lcom/android/internal/util/TraceBuffer$ProtoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/TraceBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtoOutputStreamProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/TraceBuffer$ProtoProvider<",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        "Landroid/util/proto/ProtoOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/TraceBuffer$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes(Landroid/util/proto/ProtoOutputStream;)[B
    .registers 3

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBytes(Ljava/lang/Object;)[B
    .registers 2

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getBytes(Landroid/util/proto/ProtoOutputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public getItemSize(Landroid/util/proto/ProtoOutputStream;)I
    .registers 3

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItemSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->getItemSize(Landroid/util/proto/ProtoOutputStream;)I

    move-result p1

    return p1
.end method

.method public write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Ljava/util/Queue;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/TraceBuffer$ProtoOutputStreamProvider;->write(Landroid/util/proto/ProtoOutputStream;Ljava/util/Queue;Ljava/io/OutputStream;)V

    return-void
.end method
