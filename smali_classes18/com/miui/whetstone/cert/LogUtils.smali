.class public Lcom/miui/whetstone/cert/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final LOG_TYPE_IP:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchData(I[B)V
    .registers 6

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    goto :goto_1a

    :cond_6
    const/4 v1, 0x0

    :goto_7
    array-length v2, p1

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1a

    aget-byte v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    add-int/lit8 v3, v1, 0x1

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_1a
    :goto_1a
    return-void
.end method
