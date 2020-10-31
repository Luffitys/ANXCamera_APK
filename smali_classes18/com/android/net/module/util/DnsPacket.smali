.class public abstract Lcom/android/net/module/util/DnsPacket;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/DnsPacket$DnsRecord;,
        Lcom/android/net/module/util/DnsPacket$DnsHeader;,
        Lcom/android/net/module/util/DnsPacket$ParseException;
    }
.end annotation


# static fields
.field public static final ANSECTION:I = 0x1

.field public static final ARSECTION:I = 0x3

.field public static final NSSECTION:I = 0x2

.field private static final NUM_SECTIONS:I = 0x4

.field public static final QDSECTION:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

.field protected final mRecords:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/net/module/util/DnsPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_53

    :try_start_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-direct {v1, p0, v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;-><init>(Lcom/android/net/module/util/DnsPacket;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_10} :catch_4a

    nop

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_49

    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v3, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v4, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v3, :cond_46

    :try_start_2d
    iget-object v5, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v5, v5, v2

    new-instance v6, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    invoke-direct {v6, p0, v2, v0}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(Lcom/android/net/module/util/DnsPacket;ILjava/nio/ByteBuffer;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2d .. :try_end_39} :catch_3d

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :catch_3d
    move-exception v1

    new-instance v5, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v6, "Parse record fail"

    invoke-direct {v5, v6, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_49
    return-void

    :catch_4a
    move-exception v0

    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Parse Header fail, bad input data"

    invoke-direct {v1, v2, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_53
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Parse header failed, null input data"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
