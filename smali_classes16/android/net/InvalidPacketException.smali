.class public final Landroid/net/InvalidPacketException;
.super Ljava/lang/Exception;
.source "InvalidPacketException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/InvalidPacketException$ErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_INVALID_IP_ADDRESS:I = -0x15

.field public static final ERROR_INVALID_LENGTH:I = -0x17

.field public static final ERROR_INVALID_PORT:I = -0x16


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroid/net/InvalidPacketException;->mError:I

    return-void
.end method


# virtual methods
.method public getError()I
    .registers 2

    iget v0, p0, Landroid/net/InvalidPacketException;->mError:I

    return v0
.end method
