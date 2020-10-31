.class public Lcom/android/net/module/util/DnsPacket$DnsHeader;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsHeader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsHeader"


# instance fields
.field public final flags:I

.field public final id:I

.field private final mRecordCount:[I

.field public final rcode:I

.field final synthetic this$0:Lcom/android/net/module/util/DnsPacket;


# direct methods
.method constructor <init>(Lcom/android/net/module/util/DnsPacket;Ljava/nio/ByteBuffer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->this$0:Lcom/android/net/module/util/DnsPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->id:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->flags:I

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->rcode:I

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_34

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_34
    return-void
.end method


# virtual methods
.method public getRecordCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsHeader;->mRecordCount:[I

    aget v0, v0, p1

    return v0
.end method
