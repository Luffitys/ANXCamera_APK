.class public Landroid/media/MediaCasStateException;
.super Ljava/lang/IllegalStateException;
.source "MediaCasStateException.java"


# instance fields
.field private final mDiagnosticInfo:Ljava/lang/String;

.field private final mErrorCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    iput-object p3, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(ILjava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x6

    if-eq p0, v0, :cond_5a

    const-string v0, ""

    packed-switch p0, :pswitch_data_60

    :pswitch_b
    const-string v0, "Unknown CAS state exception"

    goto :goto_41

    :pswitch_e
    const-string v0, "Rebooting"

    goto :goto_41

    :pswitch_11
    const-string v0, "Blackout"

    goto :goto_41

    :pswitch_14
    const-string v0, "Card Invalid"

    goto :goto_41

    :pswitch_17
    const-string v0, "Card Muted"

    goto :goto_41

    :pswitch_1a
    const-string v0, "No Card"

    goto :goto_41

    :pswitch_1d
    const-string v0, "Need Pairing"

    goto :goto_41

    :pswitch_20
    const-string v0, "Need Activation"

    goto :goto_41

    :pswitch_23
    const-string v0, "General CAS error"

    goto :goto_41

    :pswitch_26
    const-string v0, "Decrypt error"

    goto :goto_41

    :pswitch_29
    const-string v0, "Not initialized"

    goto :goto_41

    :pswitch_2c
    const-string v0, "Tamper detected"

    goto :goto_41

    :pswitch_2f
    const-string v0, "Insufficient output protection"

    goto :goto_41

    :pswitch_32
    const-string v0, "Invalid CAS state"

    goto :goto_41

    :pswitch_35
    const-string v0, "Unsupported scheme or data format"

    goto :goto_41

    :pswitch_38
    const-string v0, "Session not opened"

    goto :goto_41

    :pswitch_3b
    const-string v0, "License expired"

    goto :goto_41

    :pswitch_3e
    const-string v0, "No license"

    nop

    :goto_41
    new-instance v1, Landroid/media/MediaCasStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s (err=%d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/MediaCasStateException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2f
        :pswitch_2c
        :pswitch_b
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public getDiagnosticInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCasStateException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCasStateException;->mErrorCode:I

    return v0
.end method
